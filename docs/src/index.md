```@meta
CurrentModule = OpenCV
```

# OpenCV.jl

**OpenCV.jl** provides Julia bindings to [OpenCV](https://opencv.org), the popular
computer-vision library — image and video processing, object detection, feature
extraction, calibration, and much more — backed by the compiled library through
`OpenCV_jll`. OpenCV.jl 5.x wraps **OpenCV 5.1**.

The main namespace covers OpenCV's core, imgproc, imgcodecs, videoio, highgui, calib,
geometry, stereo, features, flann, objdetect, photo, video, stitching and tracking
modules, plus `CascadeClassifier` from xobjdetect. Namespaced APIs are submodules:
`OpenCV.dnn`, `OpenCV.aruco`, `OpenCV.ml`, `OpenCV.ximgproc`, `OpenCV.xphoto`,
`OpenCV.xfeatures2d`, `OpenCV.optflow`, `OpenCV.mcc` and `OpenCV.ccm`.

## Installation

```julia
] add OpenCV
```

This installs the package and the precompiled OpenCV binaries; no system OpenCV is
required.

## Versioning

```@eval
using Markdown, OpenCV
v = OpenCV.getVersionString()
Markdown.parse(
    "This release wraps **OpenCV $v**, pinned in " *
    "[`gen/OPENCV_VERSION`](https://github.com/JuliaImages/OpenCV.jl/blob/master/gen/OPENCV_VERSION) " *
    "and provided at runtime by `OpenCV_jll`. Query it from Julia with " *
    "`OpenCV.getVersionString()` (or `OpenCV.getBuildInformation()` for the full " *
    "build configuration):"
)
```

```@repl
using OpenCV
OpenCV.getVersionString()
```

The package's major version tracks the wrapped OpenCV major version: OpenCV.jl 5.x
wraps OpenCV 5. Within a major line, breaking changes to the *Julia* API are signalled
by bumping the package's minor version and called out in release notes.

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

### Detecting ArUco markers

```julia
using OpenCV
const aruco = OpenCV.aruco

dict = aruco.getPredefinedDictionary(aruco.DICT_4X4_50)
img = fill(0xff, 1, 300, 300)                                  # white canvas (1, W, H)
img[1, 101:200, 101:200] .= aruco.generateImageMarker(dict, 7, 100)[1, :, :]

params = aruco.DetectorParameters()
params.minMarkerPerimeterRate = 0.01      # CV_PROP_RW fields are Julia properties
detector = aruco.ArucoDetector(dict, params, aruco.RefineParameters())
corners, ids, rejected = aruco.detectMarkers(detector, img)
# ids == [7]; corners[1] is a (2, 4, 1) Mat of the four (x, y) corners, clockwise
```

### DNN

`OpenCV.dnn` loads ONNX and TFLite models; OpenCV 5 removed the Caffe, TensorFlow,
Darknet and Torch importers. New in 5.1 are a text tokenizer for LLMs,
`OpenCV.dnn.Tokenizer_load(dir)` with `OpenCV.dnn.encode`/`OpenCV.dnn.decode`, which reads
a Hugging Face `config.json` + `tokenizer.json`, and a KV cache for autoregressive
decoding (`OpenCV.dnn.enableKVCache`, `resetKVCache`, `reserveKVCache`). Learned feature
detectors and matchers (`OpenCV.XFeat_create`, `DISK_create`, `ALIKED_create`,
`LightGlueMatcher_create`) take ONNX model paths.

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
[OpenCV tutorials](https://docs.opencv.org/5.x/d9/df8/tutorial_root.html) are the best
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
