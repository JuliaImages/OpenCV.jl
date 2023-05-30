push!(LOAD_PATH,"../src/")
using OpenCV
using Documenter

DocMeta.setdocmeta!(OpenCV, :DocTestSetup, :(using OpenCV); recursive=true)

makedocs(;
    modules=[OpenCV],
    sitename="OpenCV.jl",
)

deploydocs(;
    repo="github.com/JuliaImages/OpenCV.jl",
)