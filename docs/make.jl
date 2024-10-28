push!(LOAD_PATH,"../src/")
using OpenCV
using Documenter

DocMeta.setdocmeta!(OpenCV, :DocTestSetup, :(using OpenCV); recursive=true)

makedocs(;
    modules=[OpenCV],
    sitename="OpenCV.jl",
    pages = [
        "OpenCV.jl" => "index.md"
        "Getting started with Images" => "Getting started with Images.md"
    ]
)

deploydocs(;
    repo="github.com/JuliaImages/OpenCV.jl",
)