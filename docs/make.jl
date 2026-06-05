push!(LOAD_PATH,"../src/")
using OpenCV
using Documenter

DocMeta.setdocmeta!(OpenCV, :DocTestSetup, :(using OpenCV); recursive=true)

makedocs(;
    modules=[OpenCV],
    sitename="OpenCV.jl",
    checkdocs=:exports,
    pages = [
        "OpenCV.jl" => "index.md",
        "Core concepts" => "core_concepts.md",
        "Reading and Writing of Images" => "Getting started with Images.md",
        "API reference" => "api.md",
    ]
)

deploydocs(;
    repo="github.com/JuliaImages/OpenCV.jl",
)