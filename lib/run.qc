namespace Exported {
    #include<CQB, ./ci.qc>
    #include<CQB, ./build.qc>
    #include<spawn.h>
    #include<unistd.h>
    #include<Vector, std>
    #include<sys/wait.h>
    #include<time.h>
}
#nomain
namespace CQB {
    namespace Engine {
        long int nowMs() {
            timespec ts;
            clock_gettime(1, &ts);
            return ts.tv_sec * 1000 + ts.tv_nsec / 1000000;
        }
        bool isProgressLine(char* s, int start) {
            if (s[start] != '[') return false;
            int j = start + 1;
            while (s[j] != ']') {
                char c = s[j];
                if (c == '\0' || c == '\n') return false;
                if (!((c >= 'A' && c <= 'Z') || c == ' ')) return false;
                j++;
            }
            return true;
        }
        int countDone(char* s) {
            int n = 0;
            int i = 0;
            while (s[i] != '\0') {
                if (strncmp(&(s[i]), "[DONE ", 6) == 0) n++;
                while (s[i] != '\n' && s[i] != '\0') i++;
                if (s[i] == '\n') i++;
            }
            return n;
        }
        void printWithoutProgress(char* s) {
            int i = 0;
            while (s[i] != '\0') {
                int start = i;
                while (s[i] != '\n' && s[i] != '\0') i++;
                bool atNewline = s[i] == '\n';
                s[i] = '\0';
                if (!isProgressLine(s, start)) `qout("%s\n", &(s[start]));
                if (atNewline) { s[i] = '\n'; i++; }
            }
        }
        struct TaskState {
            string name;
            string category;     
            string status;
            int progress;        
            string lastOutput;   
            Vector::Vec<string> logHistory; 
            int warningsCount;
            int errorsCount;
        };
        bool exited(int status) {
            return (status & 0x7fi) == 0;
        }
        int exitStatus(int status) {
            return (status |> 8) & 0xffi;
        }
        bool signaled(int status) {
            int sig = status & 0x7fi;
            return sig != 0 && sig != 0x7fi;
        }
        int termSignal(int status) {
            return status & 0x7fi;
        }
        int decodeStatus(int status) {
            if (exited(status)) { return exitStatus(status); }
            if (signaled(status)) { return 128 + termSignal(status); }
            return -1;
        }
        struct RunResult {
            int exitCode;
            string output;
        };
        RunResult runCommand(Vector::Vec<string> args, string label, bool tty) {
            int[2] fds = [int, 2];
            if (pipe(fds) != 0) { return RunResult{-1, "pipe failed"}; }
            posix_spawn_file_actions_t fa;
            posix_spawn_file_actions_init(&fa);
            posix_spawn_file_actions_adddup2(&fa, fds[1], 1);
            posix_spawn_file_actions_adddup2(&fa, fds[1], 2);
            posix_spawn_file_actions_addclose(&fa, fds[0]);
            posix_spawn_file_actions_addclose(&fa, fds[1]);
            args.push(nullptr);
            char* *argv = args.data;
            int pid;
            int rc = posix_spawnp(&pid, argv[0], &fa, nullptr, argv, __environ);
            posix_spawn_file_actions_destroy(&fa);
            `close(fds[1]);
            if (rc != 0) { `close(fds[0]); return RunResult{-1, "command not found"}; }
            string outs = "";
            char[4096] buf = [char, 4096];
            char[512] line = [char, 512];
            char[32] phase = [char, 32];
            int lineLen = 0;
            int steps = 0;
            long int phaseStart = nowMs();
            long int lastStepMs = 0;
            int n = `read(fds[0], buf, 4095);
            while (n > 0) {
                buf[n] = '\0';
                outs += &(buf[0]);
                for (int i = 0; i < n; i++) {
                    if (buf[i] != '\n') {
                        if (lineLen < 511) { line[lineLen] = buf[i]; lineLen++; }
                        continue;
                    }
                    line[lineLen] = '\0';
                    lineLen = 0;
                    if (!isProgressLine(&(line[0]), 0)) continue;
                    int p = 0; int j = 1;
                    while (line[j] != ']' && p < 31) { phase[p] = line[j]; p++; j++; }
                    phase[p] = '\0';
                    if (strncmp(&(phase[0]), "DONE ", 5) == 0) {
                        steps++;
                        lastStepMs = nowMs() - phaseStart;
                    } else {
                        phaseStart = nowMs();
                    }
                    if (tty) {
                        `qout("\r\x1b[K%s  %i (%ims) [%s]", label, steps, lastStepMs, &(phase[0]));
                        `flush();
                    }
                }
                n = `read(fds[0], buf, 4095);
            }
            `close(fds[0]);
            int status = 0;
            waitpid(pid, &status, 0);
            return RunResult{decodeStatus(status), outs};
        }
        class Runner {
            bool ciDone;
            bool buildDone;
            CI::Task* ciRoot;
            Vector::Vec<TaskState> activeStates;
            CI::Task* activeTask;
            Vector::Vec<Build::Command> buildGraph;
            int indexOf(Vector::Vec<Build::Command>& g, string name) {
                for (int i = 0; i < g.length(); i++) {
                    if (g[i].targetName == name) return i;
                }
                return -1;
            }
            int runBuildPipeline() {
                Vector::Vec<int> order = Vector::Vec<int>();
                int n = this->buildGraph.length();
                Vector::Vec<int> remaining = Vector::Vec<int>();
                Vector::Vec<bool> done = Vector::Vec<bool>();
                defer {
                    order._destroy();
                    done._destroy();
                    remaining._destroy();
                }
                for (int i = 0; i < n; i++) {
                    remaining.push(this->buildGraph[i].dependencies.length());
                    done.push(false);
                    foreach (string dep in this->buildGraph[i].dependencies) {
                        if (this->indexOf(this->buildGraph, dep) < 0) {
                            `qout("QC-BUILD: '%s' depends on unknown target '%s'\n", this->buildGraph[i].targetName, dep);
                            return 1;
                        }
                    }
                }
                while (order.length() < n) {
                    bool progressed = false;
                    for (int i = 0; i < n; i++) {
                        if (done[i] || remaining[i] != 0) continue;
                        done[i] = true;
                        order.push(i);
                        progressed = true;
                        for (int j = 0; j < n; j++) {
                            foreach (string dep in this->buildGraph[j].dependencies) {
                                if (dep == this->buildGraph[i].targetName) remaining[j]--;
                            }
                        }
                    }
                    if (!progressed) {
                        `qout("QC-BUILD: dependency cycle in build graph\n");
                        return 2;
                    }
                }
                bool tty = isatty(1) != 0;
                long int totalStart = nowMs();
                for (int k = 0; k < order.length(); k++) {
                    Build::Command command = this->buildGraph[order[k]];
                    Vector::Vec<string> comm = [command.commandBin];
                    bool isQc = comm[0] == "qc";
                    if (isQc) {
                        foreach (string input in command.inputs) { comm.push(input); }
                        foreach (string flag in command.flags) { comm.push(flag); }
                        comm.push("-o");
                        comm.push(command.outputArtifact);
                        bool hasProgress = false;
                        foreach (string flag in command.flags) {
                            if (flag == "--progress") hasProgress = true;
                        }
                        if (!hasProgress) comm.push("--progress");
                    } else {
                        foreach (string flag in command.flags) { comm.push(flag); }
                    }
                    string label = "[" + `to_string(k + 1) + "/" + `to_string(order.length()) + "] " + command.targetName;
                    long int t0 = nowMs();
                    RunResult res = runCommand(comm, label, tty);
                    long int ms = nowMs() - t0;
                    comm._destroy();
                    if (tty) {
                        `qout("\r\x1b[K");
                        fflush(nullptr);
                    }
                    if (res.exitCode == 0) {
                        int steps = countDone(res.output);
                        if (steps > 0) {
                            `qout("[%i/%i] %s ok (%i steps, %i.%03is)\n", k + 1, order.length(), command.targetName, steps, ms / 1000, ms % 1000);
                        } else {
                            `qout("[%i/%i] %s ok (%i.%03is)\n", k + 1, order.length(), command.targetName, ms / 1000, ms % 1000);
                        }
                    } else {
                        `qout("[%i/%i] %s FAILED (exit %i)\n", k + 1, order.length(), command.targetName, res.exitCode);
                        printWithoutProgress(res.output);
                        return res.exitCode;
                    }
                }
                long int total = nowMs() - totalStart;
                `qout("build finished: %i targets in %i.%03is\n", order.length(), total / 1000, total % 1000);
                this->buildDone = true;
                return 0;
            }
            int runCIPipeline() {
                if (this->ciRoot == nullptr) {
                    `qout("QC-CI: no pipeline root\n");
                    return 1;
                }
                Vector::Vec<CI::Task*> pending = Vector::Vec<CI::Task*>();
                Vector::Vec<CI::Task*> visited = Vector::Vec<CI::Task*>();
                defer {
                    pending._destroy();
                    visited._destroy();
                }
                pending.push(this->ciRoot);
                int head = 0;
                while (head < pending.length()) {
                    CI::Task* task = pending[head];
                    head++;
                    bool seen = false;
                    foreach (CI::Task* previous in visited) {
                        if (previous == task) {
                            seen = true;
                            break;
                        }
                    }
                    if (seen) continue;
                    visited.push(task);
                    this->activeTask = task;
                    int stateIndex = -1;
                    for (int i = 0; i < this->activeStates.length(); i++) {
                        if (this->activeStates[i].name == task->name) {
                            stateIndex = i;
                            break;
                        }
                    }
                    if (stateIndex < 0) {
                        TaskState state = {
                            task->name,
                            "ci",
                            "running",
                            0,
                            "",
                            Vector::Vec<string>(),
                            0,
                            0
                        };
                        this->activeStates.push(state);
                        stateIndex = this->activeStates.length() - 1;
                    } else {
                        this->activeStates[stateIndex].status = "running";
                        this->activeStates[stateIndex].progress = 0;
                        this->activeStates[stateIndex].lastOutput = "";
                    }
                    TaskState* state = &this->activeStates[stateIndex];
                    bool failed = false;
                    for (int i = 0; i < task->steps.length(); i++) {
                        CI::Step step = task->steps[i];
                        state->progress = task->steps.length() > 0 ? (i * 100) / task->steps.length() : 100;
                        `qout("QC-CI: [%s] %s\n", task->name, step.name);
                        RunResult res = runCommand(step.command, "", false);
                        state->lastOutput = res.output;
                        state->logHistory.push(res.output);
                        `qout("QC-CI: %s\n", res.output);
                        if (res.exitCode != 0) {
                            state->errorsCount++;
                            `qout("QC-CI: step '%s' failed with exit code %i\n", step.name, res.exitCode);
                            if (!task->ignoreFailure) {
                                state->status = "failed";
                                failed = true;
                                break;
                            }
                        }
                    }
                    if (failed) {
                        this->activeTask = nullptr;
                        return 1;
                    }
                    state->progress = 100;
                    state->status = "success";
                    foreach (CI::Task* child in task->next) {
                        pending.push(child);
                    }
                }
                this->activeTask = nullptr;
                this->ciDone = true;
                return 0;
            }
            Runner(Vector::Vec<Build::Command> build, CI::Task *ciRoot) {
                this->buildGraph = build;
                this->ciRoot = ciRoot;
                this->activeTask = ciRoot;
                this->activeStates = Vector::Vec<TaskState>();
                this->ciDone = false;
                this->buildDone = false;
            }
            bool Run() {
                this->runCIPipeline();
                this->runBuildPipeline();
                return true;
            }
        };
    }
}
