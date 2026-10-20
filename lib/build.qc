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
            Builder* Project(string name) {
                this->project = name;
                return this;
            }
            Builder* Alias(string fileName, string aliasName) {
                this->Flag("-A");
                this->Flag(fileName);
                this->Flag(aliasName);
                return this;
            }
            Builder* AliasDir(string dirName, string aliasName) {
                this->Flag("-ad");
                this->Flag(dirName);
                this->Flag(aliasName);
                return this;
            }
            Builder* Define(string to_define) {
                this->Flag("-D" + to_define);
                return this;
            }
            Builder* LinkDir(string to_link) {
                this->Flag("-L" + to_link);
                return this;
            }
            Builder* Link(string to_link) {
                this->Flag("-l" + to_link);
                return this;
            }
            Builder* Include(string to_inc) {
                this->Flag("-I" + to_inc);
                return this;
            }
            Builder* LinkerFlag(string to_flag) {
                this->Flag("-Wl," + to_flag);
                return this;
            }
            Builder* Warn(string to_warn) {
                this->Flag("-W" + to_warn);
                return this;
            }
            Builder* NoWarn(string to_warn) {
                this->Flag("-Wno-" + to_warn);
                return this;
            }
            Builder* Error(string to_error) {
                this->Flag("-E" + to_error);
                return this;
            }
            Builder* CArgs() {
                this->Flag("--c-flags"); 
                return this;
            }
            Builder* AddExecutable(string outputName, Vector::Vec<string> sourceFiles) {
                Command cmd;
                cmd.targetName = outputName;
                cmd.commandBin = "qc";
                cmd.inputs = sourceFiles;
                cmd.outputArtifact = outputName;
                cmd.dependencies = Vector::Vec<string>();
                this->commands.push(cmd);
                return this;
            }
            Builder* AddObject(string outputName, Vector::Vec<string> sourceFiles) {
                Command cmd;
                cmd.targetName = outputName;
                cmd.commandBin = "qc";
                cmd.inputs = sourceFiles;
                cmd.outputArtifact = outputName;
                cmd.dependencies = Vector::Vec<string>();
                this->commands.push(cmd);
                this->Flag("-oo");
                return this;
            }
            Builder* AddStaticLibrary(string outputName, Vector::Vec<string> objectFiles) {
                Command cmd;
                cmd.targetName = outputName;
                cmd.commandBin = "ar";
                cmd.inputs = objectFiles;
                cmd.outputArtifact = outputName;
                cmd.dependencies = Vector::Vec<string>();
                this->commands.push(cmd);
                this->Flag("rcs");
                return this;
            }
            Builder* AddDynamicLibrary(string outputName, Vector::Vec<string> sourceFiles) {
                Command cmd;
                cmd.targetName = outputName;
                cmd.commandBin = "qc";
                cmd.inputs = sourceFiles;
                cmd.outputArtifact = outputName;
                cmd.dependencies = Vector::Vec<string>();
                this->commands.push(cmd);
                this->Flag("-dynamic");
                return this;
            }
            Builder* TargetFlags(Vector::Vec<string> targetFlags) {
                for (addr_t i = 0; i < targetFlags.length(); ++i) {
                    this->current_command().flags.push(targetFlags[i]);
                }
                return this;
            }
            Builder* AddCustomCommand(string targetName, string commandBin, string outputArtifact) {
                Command cmd;
                cmd.targetName = targetName;
                cmd.commandBin = commandBin;
                cmd.outputArtifact = outputArtifact;
                cmd.dependencies = Vector::Vec<string>();
                this->commands.push(cmd);
                return this;
            }
            Builder* Flag(string flag) {
                this->current_command().flags.push(flag);
                return this;
            }
            Builder* AddCDependency(string targetName, Vector::Vec<string> cSourceFiles) {
                Command cmd;
                cmd.targetName = targetName;
                cmd.commandBin = "qc --translate-c";
                cmd.inputs = cSourceFiles;
                cmd.outputArtifact = targetName + ".qc";
                cmd.dependencies = Vector::Vec<string>();
                this->commands.push(cmd);
                return this;
            }
            Builder* DependsOn(string dependencyName) {
                this->current_command().dependencies.push(dependencyName);
                return this;
            }
            Vector::Vec<Command> ExtractGraph() {
                return this->commands;
            }
        };
    }
}
