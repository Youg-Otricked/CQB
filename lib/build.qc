namespace Exported {
    #include<String, Vector, std>
}
namespace CQB {
    namespace Build {
        struct Command {
            char *targetName;
            char *commandBin;
            Vector::Vec<char*> inputs;
            char *outputArtifact;
            Vector::Vec<char*> flags;
            Vector::Vec<char*> dependencies;
        };
        class Builder {
            private char *project;
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
            Builder* project(char *name) {
                this->project = name;
                return this;
            }
            Builder* alias(char *fileName, char *aliasName) {
                this->flag("-A");
                this->flag(fileName);
                this->flag(aliasName);
                return this;
            }
            Builder* aliasDir(char *dirName, char *aliasName) {
                this->flag("-ad");
                this->flag(dirName);
                this->flag(aliasName);
                return this;
            }
            Builder* define(char *to_define) {
                String::Str def = "-D";
                String::Str toStr = to_define;
                def += toStr;
                this->flag(def.c_str());
                def._destroy();
                toStr._destroy();
                return this;
            }
            Builder* linkDir(char *to_link) {
                String::Str def = "-L";
                String::Str toStr = to_link;
                def += toStr;
                this->flag(def.c_str());
                def._destroy();
                toStr._destroy();
                return this;
            }
            Builder* link(char *to_link) {
                String::Str def = "-l";
                String::Str toStr = to_link;
                def += toStr;
                this->flag(def.c_str());
                def._destroy();
                toStr._destroy();
                return this;
            }
            Builder* include(char *to_inc) {
                String::Str def = "-I";
                String::Str toStr = to_inc;
                def += toStr;
                this->flag(def.c_str());
                def._destroy();
                toStr._destroy();
                return this;
            }
            Builder* linkerFlag(char *to_flag) {
                String::Str def = "-Wl,";
                String::Str toStr = to_flag;
                def += toStr;
                this->flag(def.c_str());
                def._destroy();
                toStr._destroy();
                return this;
            }
            Builder* warn(char *to_warn) {
                String::Str def = "-W";
                String::Str toStr = to_warn;
                def += toStr;
                this->flag(def.c_str());
                def._destroy();
                toStr._destroy();
                return this;
            }
            Builder* noWarn(char *to_warn) {
                String::Str def = "-Wno-";
                String::Str toStr = to_warn;
                def += toStr;
                this->flag(def.c_str());
                def._destroy();
                toStr._destroy();
                return this;
            }
            Builder* error(char *to_error) {
                String::Str def = "-E";
                String::Str toStr = to_error;
                def += toStr;
                this->flag(def.c_str());
                def._destroy();
                toStr._destroy();
                return this;
            }
            Builder* cArgs() {
                this->flag("--c-flags"); 
                return this;
            }
            Builder* addExecutable(char *outputName, Vector::Vec<char*> sourceFiles) {
                Command cmd;
                cmd.targetName = outputName;
                cmd.commandBin = "qc";
                cmd.inputs = sourceFiles;
                cmd.outputArtifact = outputName;
                cmd.dependencies = Vector::Vec<char*>();
                this->commands.push(cmd);
                return this;
            }
            Builder* addObject(char *outputName, Vector::Vec<char*> sourceFiles) {
                Command cmd;
                cmd.targetName = outputName;
                cmd.commandBin = "qc";
                cmd.inputs = sourceFiles;
                cmd.outputArtifact = outputName;
                cmd.dependencies = Vector::Vec<char*>();
                this->commands.push(cmd);
                this->flag("-oo");
                return this;
            }
            Builder* addStaticLibrary(char *outputName, Vector::Vec<char*> objectFiles) {
                Command cmd;
                cmd.targetName = outputName;
                cmd.commandBin = "ar";
                cmd.inputs = objectFiles;
                cmd.outputArtifact = outputName;
                cmd.dependencies = Vector::Vec<char*>();
                this->commands.push(cmd);
                this->flag("rcs");
                return this;
            }
            Builder* addDynamicLibrary(char *outputName, Vector::Vec<char*> sourceFiles) {
                Command cmd;
                cmd.targetName = outputName;
                cmd.commandBin = "qc";
                cmd.inputs = sourceFiles;
                cmd.outputArtifact = outputName;
                cmd.dependencies = Vector::Vec<char*>();
                this->commands.push(cmd);
                this->flag("-dynamic");
                return this;
            }
            Builder* targetFlags(Vector::Vec<char*> targetflags) {
                for (addr_t i = 0; i < targetflags.length(); ++i) {
                    this->current_command().flags.push(targetflags[i]);
                }
                return this;
            }
            Builder* addCustomCommand(char *targetName, char *commandBin, char *outputArtifact) {
                Command cmd;
                cmd.targetName = targetName;
                cmd.commandBin = commandBin;
                cmd.outputArtifact = outputArtifact;
                cmd.dependencies = Vector::Vec<char*>();
                this->commands.push(cmd);
                return this;
            }
            Builder* flag(char *flag) {
                this->current_command().flags.push(flag);
                return this;
            }
            Builder* addCDependency(char *targetName, Vector::Vec<char*> cSourceFiles) {
                Command cmd;
                cmd.targetName = targetName;
                cmd.commandBin = "qc --translate-c";
                cmd.inputs = cSourceFiles;
                cmd.outputArtifact = targetName;
                cmd.dependencies = Vector::Vec<char*>();
                this->commands.push(cmd);
                return this;
            }
            Builder* dependsOn(char *dependencyName) {
                this->current_command().dependencies.push(dependencyName);
                return this;
            }
            Vector::Vec<Command> extractGraph() {
                return this->commands;
            }
        };
    }
}
