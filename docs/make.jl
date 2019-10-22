using Documenter, LITS
const PSYPATH = dirname(pathof(LITS))

makedocs(
    modules = [LITS],
    format = Documenter.HTML(),
    sitename = "LITS.jl",
    pages = Any[ # Compat: `Any` for 0.4 compat
        "Home" => "index.md",
        # "User Guide" => "man/guide.md",
        "Models" => Any[
           "Network" => "Models/network.md",
           "Generator" => "Models/gens.md",
           "Inverter" => "Models/inverters.md"
        ]
    ]
)

deploydocs(
    repo = "github.com/Energy-MAC/LITS.jl",
    branch = "gh-pages",
    target = "build",
    deps = Deps.pip("pygments", "mkdocs", "python-markdown-math"),
    make = nothing,
)
