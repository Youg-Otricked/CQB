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
