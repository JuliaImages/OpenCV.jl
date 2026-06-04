# OpenCV.jl
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://juliaimages.org/OpenCV.jl/dev/)

[![Run tests](https://github.com/JuliaImages/OpenCV.jl/actions/workflows/UnitTest.yml/badge.svg)](https://github.com/JuliaImages/OpenCV.jl/actions/workflows/UnitTest.yml)
[![codecov](https://codecov.io/gh/JuliaImages/OpenCV.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/JuliaImages/OpenCV.jl)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://github.com/JuliaImages/OpenCV.jl/blob/master/LICENSE)


**OpenCV.jl** is a Julia package that provides an interface to the popular computer vision library OpenCV. It allows Julia users to leverage the extensive functionalities and algorithms offered by OpenCV for various computer vision tasks, such as image and video processing, object detection, feature extraction, and more.

## Features

- Comprehensive OpenCV bindings: OpenCV.jl provides comprehensive bindings to the OpenCV library, enabling Julia users to access a wide range of computer vision algorithms and functionalities.
- Efficient and performant: The package is designed to leverage the speed and efficiency of both Julia and OpenCV, ensuring high-performance computer vision tasks.
- Interoperability: The package supports interoperability between Julia arrays and OpenCV's data structures, facilitating data exchange and manipulation between the two.

## Installation

You can install OpenCV.jl using Julia's package manager. Open a Julia REPL and run the following command:

```julia
] add OpenCV
```

This will download and install the package and its dependencies.

## OpenCV version

This release wraps **OpenCV 4.13.0**, pinned in [`gen/OPENCV_VERSION`](gen/OPENCV_VERSION) and provided at runtime by `OpenCV_jll` 4.13.x. You can query the version and full build configuration from Julia:

```julia
using OpenCV
OpenCV.getVersionString()     # "4.13.0"
OpenCV.getBuildInformation()  # full build info string
```

## Getting started

If you are new to OpenCV, the upstream [OpenCV tutorials](https://docs.opencv.org/4.x/d9/df8/tutorial_root.html) are the best starting point. Function and argument names in OpenCV.jl mirror the C++/Python API, so most tutorials translate directly — the main Julia-specific pieces are the `Mat` and `Vec` types (see `src/Mat.jl`, `src/Vec.jl`) and the array/image interop in `src/mat_conversion.jl`.

## Usage

To start using OpenCV.jl in your Julia code, you first need to import the package:

```julia
using OpenCV
```

Once imported, you can call OpenCV functions and use its data structures. Here's a simple example that loads an image and applies a Gaussian blur:

List of wrapped methods is available here: [wrapped methods](gen/funclist.csv)
```julia
using ImageCore, OpenCV, TestImages, MosaicViews, ImageView

img_orig = testimage("Mandrill")

img_raw =  collect(rawview(channelview(img_orig)))

img_gray = OpenCV.cvtColor(img_raw, OpenCV.COLOR_RGB2GRAY)

img_blur = OpenCV.blur(img_gray, OpenCV.Size(Int32(9), Int32(9)))

img_back =  colorview(Gray, float.(img_blur)./255)[1,:,:]

imshow(mosaic(img_orig, img_back; nrow=1))
```

#### Output:
![](https://i.imgur.com/YfjUJpn.png)

For more information on the available functions and usage examples, please refer to the [documentation](https://juliaimages.org/OpenCV.jl/latest/).

## Versioning

The package version tracks the wrapped OpenCV release: the current `4.13.x` line wraps OpenCV 4.13.0. Within a given OpenCV major/minor line, breaking changes to the *Julia* API (e.g. to `Mat`/`Vec` or array interop) are signalled by bumping the package's minor version and called out in release notes — they do not require bumping the OpenCV major. When the underlying OpenCV version is bumped, `gen/OPENCV_VERSION` and the matching `OpenCV_jll` build are updated in lockstep.

## Developing locally

To hack on OpenCV.jl, check out the repository and `dev` it from Julia:

```
pkg> dev /path/to/OpenCV.jl   # or: pkg> dev OpenCV
pkg> test OpenCV
```

`using OpenCV` will pull in a matching `OpenCV_jll` automatically. Changes under `src/` are picked up on the next `using` (or immediately with Revise). Changes under `gen/` only take effect after regenerating the wrappers (see below); rebuilding `OpenCV_jll` is only needed when the underlying OpenCV version changes.

## Contributing

OpenCV.jl welcomes contributions — please open issues and PRs on the [GitHub repository](https://github.com/JuliaImages/OpenCV.jl). The codebase has three layers:

- **Hand-written Julia** in `src/` — `OpenCV.jl`, `Mat.jl`, `Vec.jl`, `cv_manual_wrap.jl`, `mat_conversion.jl`, `types_conversion.jl`, `typestructs.jl`, `show.jl`, `fileio.jl`. Edit these directly for Julia-side API, array interop, and display.
- **Auto-generated wrappers** in `src/generated/` — produced by the generator under `gen/`. **Do not hand-edit these files.** Regenerate them with `julia gen/regenerate.jl`; see [`gen/PROVENANCE.md`](gen/PROVENANCE.md) for the determinism guarantees and the OpenCV-bump checklist.
- **The binding generator** in `gen/` — vendored from `opencv_contrib/modules/julia` with JuliaImages patches folded in (history in `gen/PROVENANCE.md`). Edits here change `src/generated/` on the next regeneration.

The compiled `libopencv_julia` lives in `OpenCV_jll`, built from Yggdrasil's [`O/OpenCV/build_tarballs.jl`](https://github.com/JuliaPackaging/Yggdrasil/tree/master/O/OpenCV). It must come from the same OpenCV tag pinned in `gen/OPENCV_VERSION`, or `@wrapmodule` will fail on mismatched symbols. Background reading: the original OpenCV [Julia bindings tutorial](https://docs.opencv.org/4.x/d8/da4/tutorial_julia.html) and @archit120's [blog posts](https://archit.me/blog).

## License

OpenCV.jl is licensed under the [MIT License](https://github.com/JuliaImages/OpenCV.jl/blob/master/LICENSE). Please refer to the license file for more information.

## Acknowledgments

OpenCV.jl is built upon the excellent work of the OpenCV community. We are grateful for their continuous efforts in advancing the field of computer vision. @archit120 has been instrumental in the development of this package during GSOC 2021 and GSOC 2020.
