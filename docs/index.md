# CQB Documentation

CQB is the official build system for the QuarticC programming language. It allows you to preform commands (such as CI) and build your code, all by writing QuarticC.
```qc
namespace Exported {
    #include<CQB, cqb.hqc>
}
int main() {
    CQB::CI::Job job = CQB::CI::Job("test", [
            CQB::CI::Step{
                "1.",
                ["sh", "-c", "echo \"=== TEST ===\" && pwd && whoami"]
            }
        ]
    );
    CQB::Build::Builder builder = CQB::Build::Builder();
    builder.Project("test")->AddExecutable("a.out", ["testmain.qc"])->Flag("-O3");
    CQB::Engine::Runner runner = CQB::Engine::Runner(builder.ExtractGraph(), job.getGraphRoot());
    return runner.runCIPipeline() ? 1 : runner.runBuildPipeline();
}
```

CQB is a one-header, one-.a library. You just include the CQB namespace from cqb.hqc.

## namespace CQB::Build

### class Builder

Builder is what builds your commands for the Runner. It's a simple API.

#### Builder();

Constructor.
            
#### Projects 

```qc
Builder* Project(string name);
```

Set the name of the project to name. Returns this (to allow for method chaining).

#### Building QuarticC Code

```qc
Builder* AddExecutable(string outputName, Vector::Vec<string> sourceFiles);
```
Takes the output binary name & the source files, adds a command, and returns this (for method chaining).

```qc
Builder* AddObject(string outputName, Vector::Vec<string> sourceFiles);
Builder* AddDynamicLibrary(string outputName, Vector::Vec<string> sourceFiles);
```
Same as above, but produces .o or dynamic librarys instead.

```qc
Builder* AddCDependency(string targetName, Vector::Vec<string> cSourceFiles);
```

Translates cSourceFiles into targetName.qc.

##### Flags For QuarticC

```qc
Builder* Alias(string fileName, string aliasName);
Builder* AliasDir(string dirName, string aliasName);
Builder* Define(string to_define);
Builder* LinkDir(string to_link);
Builder* Link(string to_link);
Builder* Include(string to_inc);
Builder* LinkerFlag(string to_flag);
Builder* Warn(string to_warn);
Builder* NoWarn(string to_warn);
Builder* Error(string to_error);
```
All of these do the same thing - appending a commonly used flag, and returning this for chaining.

Alias appends `-A <fileName> <aliasName>`, AliasDir appends `-ad <dirName> <aliasName>`, Define appends `-D<thing>`, etc.

```qc
Builder* CArgs();
```
All args past this point go to C (appends `--c-args`)

#### General Commands

```qc
Builder* AddStaticLibrary(string outputName, Vector::Vec<string> objectFiles);
Builder* AddCustomCommand(string targetName, string commandBin, string outputArtifact);
```

AddStaticLibrary adds a command `ar rcs <outputName> <objectFiles>`, AddCustomCommand runs your commandBin. Returns this for chaining.

#### General Flags (Can be applied to any command)

```qc
Builder* TargetFlags(Vector::Vec<string> targetFlags);
Builder* Flag(string flag);
```

Adds one or many flags to a command. Returns this for chaining.

#### Dependencies

```qc
Builder* DependsOn(string dependencyName);
``` 

Says that the command with targetName dependencyName must run before this command. 

#### Extraction

```qc
Vector::Vec<Command> ExtractGraph();
```

Extract the commands to be passed to Run.

## namespace CQB::CI

### class Job

Full CI Job. Builds Tasks to be used by Run.

#### `Job(string name, Vector::Vec<Step> steps);`

Constructs Job, initializes the first task for CI with name and steps.

#### Tasks

```qc
Task* addTask(string name, Vector::Vec<Step> steps, bool advance = false);
Job* focus(Task* task);
Job* link(Task* parent, Task* child);
Task* getGraphRoot();
```

addTask: Create new Task with name name and steps steps. Returns it to you, and if advance is set, moves onto it and starts building it.
focus: Takes a Task, and moves onto it and starts building out that task. Returns this for chaining.
link: Make child dependent on parent. Returns this for chaining.
getGraphRoot: Get root task for Run.

## namespace CQB::Engine

### class Runner

#### `Runner(Vector::Vec<Build::Command> build, CI::Task *ciRoot);`

Construct Runner with the command vector build and ci root ciRoot.

#### Running

```qc
int runBuildPipeline();
int runCIPipeline();
bool Run();
```

runBuildPipeline: Run the build system pipeline. Returns >0 for failure.
runCIPipeline: Run the CI system pipeline. Returns >0 for failure.
Run: Run the full pipeline. Returns true unless absolute catastrophic failure.

