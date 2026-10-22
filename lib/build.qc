namespace Exported {
    #include<Vector, std>
}
namespace CQB {
    namespace Build {
        struct Command {
            string targetName;
            string commandBin;
            Vector::Vec<string> inputs;
            string outputArtifact;
            Vector::Vec<string> flags;
            Vector::Vec<string> dependencies;
        };
        class Builder {
            private string project;
            private Vector::Vec<Command> commands;
            private Command& current_command() {
                if (this->commands.length() == 0) {
                    this->commands.push(Command{});
                }
                return this->commands[this->commands.length() - 1];
            }
            Builder() {
                this->commands = Vector::Vec<Command>();
            }
            Builder* project(string name) {
                this->project = name;
                return this;
            }
            Builder* alias(string fileName, string aliasName) {
                this->flag("-A");
                this->flag(fileName);
                this->flag(aliasName);
                return this;
            }
            Builder* aliasDir(string dirName, string aliasName) {
                this->flag("-ad");
                this->flag(dirName);
                this->flag(aliasName);
                return this;
            }
            Builder* define(string to_define) {
                this->flag("-D" + to_define);
                return this;
            }
            Builder* linkDir(string to_link) {
                this->flag("-L" + to_link);
                return this;
            }
            Builder* link(string to_link) {
                this->flag("-l" + to_link);
                return this;
            }
            Builder* include(string to_inc) {
                this->flag("-I" + to_inc);
                return this;
            }
            Builder* linkerflag(string to_flag) {
                this->flag("-Wl," + to_flag);
                return this;
            }
            Builder* warn(string to_warn) {
                this->flag("-W" + to_warn);
                return this;
            }
            Builder* noWarn(string to_warn) {
                this->flag("-Wno-" + to_warn);
                return this;
            }
            Builder* error(string to_error) {
                this->flag("-E" + to_error);
                return this;
            }
            Builder* cArgs() {
                this->flag("--c-flags"); 
                return this;
            }
            Builder* addExecutable(string outputName, Vector::Vec<string> sourceFiles) {
                Command cmd;
                cmd.targetName = outputName;
                cmd.commandBin = "qc";
                cmd.inputs = sourceFiles;
                cmd.outputArtifact = outputName;
                cmd.dependencies = Vector::Vec<string>();
                this->commands.push(cmd);
                return this;
            }
            Builder* addObject(string outputName, Vector::Vec<string> sourceFiles) {
                Command cmd;
                cmd.targetName = outputName;
                cmd.commandBin = "qc";
                cmd.inputs = sourceFiles;
                cmd.outputArtifact = outputName;
                cmd.dependencies = Vector::Vec<string>();
                this->commands.push(cmd);
                this->flag("-oo");
                return this;
            }
            Builder* addStaticLibrary(string outputName, Vector::Vec<string> objectFiles) {
                Command cmd;
                cmd.targetName = outputName;
                cmd.commandBin = "ar";
                cmd.inputs = objectFiles;
                cmd.outputArtifact = outputName;
                cmd.dependencies = Vector::Vec<string>();
                this->commands.push(cmd);
                this->flag("rcs");
                return this;
            }
            Builder* addDynamicLibrary(string outputName, Vector::Vec<string> sourceFiles) {
                Command cmd;
                cmd.targetName = outputName;
                cmd.commandBin = "qc";
                cmd.inputs = sourceFiles;
                cmd.outputArtifact = outputName;
                cmd.dependencies = Vector::Vec<string>();
                this->commands.push(cmd);
                this->flag("-dynamic");
                return this;
            }
            Builder* targetflags(Vector::Vec<string> targetflags) {
                for (addr_t i = 0; i < targetflags.length(); ++i) {
                    this->current_command().flags.push(targetflags[i]);
                }
                return this;
            }
            Builder* addCustomCommand(string targetName, string commandBin, string outputArtifact) {
                Command cmd;
                cmd.targetName = targetName;
                cmd.commandBin = commandBin;
                cmd.outputArtifact = outputArtifact;
                cmd.dependencies = Vector::Vec<string>();
                this->commands.push(cmd);
                return this;
            }
            Builder* flag(string flag) {
                this->current_command().flags.push(flag);
                return this;
            }
            Builder* addCDependency(string targetName, Vector::Vec<string> cSourceFiles) {
                Command cmd;
                cmd.targetName = targetName;
                cmd.commandBin = "qc --translate-c";
                cmd.inputs = cSourceFiles;
                cmd.outputArtifact = targetName + ".qc";
                cmd.dependencies = Vector::Vec<string>();
                this->commands.push(cmd);
                return this;
            }
            Builder* dependsOn(string dependencyName) {
                this->current_command().dependencies.push(dependencyName);
                return this;
            }
            Vector::Vec<Command> extractGraph() {
                return this->commands;
            }
        };
    }
}
