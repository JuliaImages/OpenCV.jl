push!(LOAD_PATH,"../src/")
using OpenCV
using Documenter

DocMeta.setdocmeta!(OpenCV, :DocTestSetup, :(using OpenCV); recursive=true)

# Generate the "Wrapped functions" page from gen/funclist.csv at build time, so the
# list of wrapped OpenCV APIs in the docs stays in lockstep with the bindings.
function generate_wrapped_functions_page()
    csv = joinpath(@__DIR__, "..", "gen", "funclist.csv")
    out = joinpath(@__DIR__, "src", "wrapped_functions.md")
    entries = String[]
    for line in eachline(csv)
        s = strip(line)
        (isempty(s) || startswith(s, "#")) && continue
        startswith(s, "cv.") && push!(entries, String(s[4:end]))
    end
    free = sort(unique(filter(e -> !occursin('.', e), entries)))
    groups = Dict{String, Vector{String}}()
    for e in filter(e -> occursin('.', e), entries)
        cls, rest = split(e, '.'; limit = 2)
        push!(get!(groups, String(cls), String[]), String(rest))
    end
    for (k, v) in groups
        groups[k] = sort(unique(v))
    end
    nfuncs = length(free) + sum(length, values(groups); init = 0)
    open(out, "w") do io
        println(io, "# Wrapped functions\n")
        println(io, "!!! note")
        println(io, "    This page is generated from [`gen/funclist.csv`](https://github.com/JuliaImages/OpenCV.jl/blob/master/gen/funclist.csv) at build time — the authoritative list of every OpenCV function exposed by the bindings ($nfuncs functions).\n")
        println(io, "Names follow the `cv::` → `OpenCV.` convention (see [Core concepts](@ref)): " *
                    "free functions map directly (`cv.add` → `OpenCV.add`); class *static* methods " *
                    "flatten with `_` (`cv.ORB.create` → `OpenCV.ORB_create`); and *instance* methods " *
                    "dispatch on the object (`cv.FileStorage.open` → `OpenCV.open(fs, …)`). Everything is " *
                    "reached through the `OpenCV.` prefix.\n")
        println(io, "## Free functions\n")
        println(io, join(("`OpenCV.$f`" for f in free), " · "), "\n")
        println(io, "## Classes and submodules\n")
        for cls in sort(collect(keys(groups)))
            println(io, "### `$cls`\n")
            println(io, join(("`cv.$cls.$m`" for m in sort(groups[cls])), " · "), "\n")
        end
    end
    return out
end
generate_wrapped_functions_page()

makedocs(;
    modules=[OpenCV],
    sitename="OpenCV.jl",
    checkdocs=:exports,
    pages = [
        "OpenCV.jl" => "index.md",
        "Core concepts" => "core_concepts.md",
        "Reading and Writing of Images" => "Getting started with Images.md",
        "API reference" => "api.md",
        "Wrapped functions" => "wrapped_functions.md",
    ]
)

deploydocs(;
    repo="github.com/JuliaImages/OpenCV.jl",
)