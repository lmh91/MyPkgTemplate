using PkgName
using Documenter

makedocs(;
    modules=[PkgName],
    authors="Lukas Hauertmann <lhauert@mpp.mpg.de> and contributors",
    repo="https://github.com/lmh91/PkgName.jl/blob/{commit}{path}#{line}",
    sitename="PkgName.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "API" => "api.md",
    ],
)

# How to build docs:
# cd("NewPackages/PkgName")