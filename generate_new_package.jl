using PkgTemplates

t = Template(;
    dir = "/Users/Lukas/code/JuliaEnvs/MyPkgTemplate/NewPackages",
    user = "lmh91",
    plugins=[
        Git(; 
            jl=true, 
            manifest=true, 
            ssh=true, 
            branch="main"
        ),
        Codecov(),
        GitHubActions(;
            destination="CI.yml",
            linux=true,
            osx=true,
            windows=true,
            x64=true,
            x86=true,
            coverage=true,
            extra_versions=["1.6", "nightly"],
        ),
        Documenter()
    ],
)

t("PkgName")