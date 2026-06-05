```@meta
CurrentModule = OpenCV
```

# OpenCV.jl

**OpenCV.jl** provides Julia bindings to [OpenCV](https://opencv.org), the popular
computer-vision library — image and video processing, object detection, feature
extraction, calibration, and much more — backed by the compiled library through
`OpenCV_jll`.

## Installation

```julia
] add OpenCV
```

This installs the package and the precompiled OpenCV binaries; no system OpenCV is
required.

## Versioning

This release wraps **OpenCV 4.13.0**, pinned in `gen/OPENCV_VERSION` and provided at
runtime by `OpenCV_jll` 4.13.x. Query the wrapped version from Julia (and
`OpenCV.getBuildInformation()` for the full build-configuration string):

```jldoctest
julia> using OpenCV

julia> OpenCV.getVersionString()
"4.13.0"
```

The package version itself tracks the wrapped OpenCV release (currently the `4.13.x`
line for OpenCV 4.13.0). Within a given OpenCV major/minor line, breaking changes to the
*Julia* API are signalled by bumping the package's minor version and called out in
release notes — they do not require bumping the OpenCV major.

## Quick start

```julia
using ImageCore, OpenCV, TestImages, MosaicViews

img_orig = testimage("Mandrill")

img_raw =  collect(rawview(channelview(img_orig)))

img_gray = OpenCV.cvtColor(img_raw, OpenCV.COLOR_RGB2GRAY)

img_blur = OpenCV.blur(img_gray, OpenCV.Size(Int32(9), Int32(9)))

img_back =  colorview(Gray, float.(img_blur)./255)[1,:,:]

mosaic(img_orig, img_back; nrow=1)
```

#### Output:
![](https://i.imgur.com/YfjUJpn.png)

!!! note "One thing to know up front: image layout"

    Images are [`Mat`](@ref)s, 3-D arrays that share memory with OpenCV and use the
    axis order **`(channels, cols, rows)`** — so a grayscale `H×W` image has
    `size == (1, W, H)`. This trips people up; see [Core concepts](@ref) for the full
    story.

## Manual

- [Core concepts](@ref) — naming (`cv::` → `OpenCV.`), the `Mat` layout, dtypes,
  scalars, and Julia-array interop.
- [Reading and Writing of Images](@ref) — `imread`/`imwrite` and the FileIO
  `load`/`save` interface, with flags and display.
- [API reference](@ref) — the hand-written types and I/O helpers.
- [Wrapped functions](@ref) — the complete generated list of wrapped OpenCV functions.

If you are new to OpenCV, the upstream
[OpenCV tutorials](https://docs.opencv.org/4.x/d9/df8/tutorial_root.html) are the best
starting point. Function and argument names mirror the C++/Python API, so most
tutorials translate directly — the Julia-specific pieces are the `Mat`/`Vec` types and
the array/image interop, all covered in [Core concepts](@ref).

## Contributing

Issues and pull requests are welcome at the
[GitHub repository](https://github.com/JuliaImages/OpenCV.jl).

## License

OpenCV.jl is licensed under the
[MIT License](https://github.com/JuliaImages/OpenCV.jl/blob/master/LICENSE).

## Acknowledgments

OpenCV.jl is built on the work of the OpenCV community. [@archit120](https://github.com/archit120)
was instrumental in developing this package during GSoC 2020 and 2021.
