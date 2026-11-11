# OpenCV.jl
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://juliaimages.org/OpenCV.jl/dev/)
[![CI](https://github.com/JuliaImages/OpenCV.jl/actions/workflows/UnitTest.yml/badge.svg)](https://github.com/JuliaImages/OpenCV.jl/actions/workflows/UnitTest.yml)
[![codecov](https://codecov.io/gh/JuliaImages/OpenCV.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/JuliaImages/OpenCV.jl)

**OpenCV.jl** is a Julia interface to the [OpenCV](https://opencv.org) computer-vision
library — image and video processing, object detection, feature extraction,
calibration, and more — backed by the precompiled library through `OpenCV_jll`.
OpenCV.jl 5.x wraps **OpenCV 5.1**.

📖 **[Documentation](https://juliaimages.org/OpenCV.jl/dev/)** — a quick-start example,
the `Mat` image type and its `(channels, cols, rows)` layout, the `cv::` → `OpenCV.`
naming convention, reading/writing images, and the API reference.

## Installation

```julia
] add OpenCV
```

This installs the package and the precompiled OpenCV binaries; no system OpenCV is required.

### CUDA

On Linux with an NVIDIA GPU and a CUDA 13 driver, OpenCV can use binaries built with CUDA
and cuDNN, which enable the `DNN_BACKEND_CUDA` backend for `cv.dnn`. Install them next to
OpenCV and restart Julia:

```julia
] add OpenCV_CUDA_jll
```

OpenCV then loads the CUDA build whenever it has binaries for the system, and falls back to
the CPU build otherwise. Remove `OpenCV_CUDA_jll` to go back to the CPU build. It is a separate
package because installing it downloads the CUDA runtime and cuDNN (about 2 GB).

OpenCV finds `OpenCV_CUDA_jll` in any environment on the load path, so installing it in the
default environment (`@v1.x`) enables the CUDA build for every project. OpenCV ignores it, with a
warning, if its OpenCV version differs from that of OpenCV_jll.

## What is wrapped

- **`OpenCV.`** — core, imgproc, imgcodecs, videoio, highgui, calib, geometry, stereo,
  features, flann, objdetect (QR/barcode codes, `FaceDetectorYN`), photo, video (optical
  flow, trackers), stitching, tracking, and `CascadeClassifier` (xobjdetect).
- **Submodules** for namespaced APIs: `OpenCV.dnn`, `OpenCV.aruco`, `OpenCV.ml`,
  `OpenCV.ximgproc`, `OpenCV.xphoto`, `OpenCV.xfeatures2d` (AKAZE, KAZE, BRISK, …),
  `OpenCV.optflow`, `OpenCV.mcc`, `OpenCV.ccm`.

```julia
using OpenCV
const aruco = OpenCV.aruco

dict   = aruco.getPredefinedDictionary(aruco.DICT_4X4_50)
marker = aruco.generateImageMarker(dict, 7, 200)       # 200×200 marker, size (1, 200, 200)

params = aruco.DetectorParameters()
params.minMarkerPerimeterRate = 0.01                   # writable fields are properties
detector = aruco.ArucoDetector(dict, params, aruco.RefineParameters())
corners, ids, rejected = aruco.detectMarkers(detector, img)   # img: grayscale or BGR image
```

The DNN module reads ONNX and TFLite models (OpenCV 5 dropped the Caffe, TensorFlow,
Darknet and Torch importers) and adds `OpenCV.dnn.Tokenizer_load` (Hugging Face
`tokenizer.json` BPE tokenizers, with `OpenCV.dnn.encode`/`decode`) and a KV cache for
LLM decoding (`OpenCV.dnn.enableKVCache`, `resetKVCache`, …). OpenCV 5 also brings learned
features (`XFeat_create`, `DISK_create`, `ALIKED_create`, `LightGlueMatcher_create`) and
new `Mat` element types (`Float16`, `Bool`, `UInt32`, `UInt64`, `Int64`).

## Developing locally

To hack on OpenCV.jl, check out the repository and `dev` it from Julia:

```
pkg> dev /path/to/OpenCV.jl   # or: pkg> dev OpenCV
pkg> test OpenCV
```

`using OpenCV` pulls in a matching `OpenCV_jll` automatically. Changes under `src/` are
picked up on the next `using` (or immediately with Revise). Changes under `gen/` take
effect only after regenerating the wrappers; rebuilding `OpenCV_jll` is needed only when
the underlying OpenCV version changes.

## Contributing

Contributions are welcome — please open issues and PRs. The codebase has three layers:

- **Hand-written Julia** in `src/` — the module entry (`OpenCV.jl`), the `Mat`/`Vec`
  array types, the cpp↔julia conversions (`mat_conversion.jl`, `types_conversion.jl`),
  the geometry structs (`typestructs.jl`), `errors.jl`, `show.jl`, `fileio.jl`, and the
  `videoio.jl` conveniences. Edit these for the Julia-side API and array interop.
- **Auto-generated wrappers** in `src/generated/` — produced by the generator under
  `gen/`. **Do not hand-edit these.** Regenerate with `julia gen/regenerate.jl`; see
  [`gen/PROVENANCE.md`](gen/PROVENANCE.md) for the determinism guarantees and the
  OpenCV-bump checklist. `cv_cxx_wrap.jl` ends with a hand-authored "Manual Wrapping"
  section (GUI callbacks, `CascadeClassifier`) that the header parser cannot derive;
  its source is [`gen/binding_templates_jl/manual_cxx.jl`](gen/binding_templates_jl/manual_cxx.jl),
  paired with the C++ side in `gen/binding_templates_cpp/cv_core.cpp`.
- **The binding generator** in `gen/` — vendored from `opencv_contrib/modules/julia`
  with JuliaImages patches folded in. Edits here change `src/generated/` on the next
  regeneration.

The compiled `libopencv_julia` lives in `OpenCV_jll`, built from Yggdrasil's
[`O/OpenCV/build_tarballs.jl`](https://github.com/JuliaPackaging/Yggdrasil/tree/master/O/OpenCV);
it must come from the same OpenCV tag pinned in `gen/OPENCV_VERSION`, or `@wrapmodule`
fails on mismatched symbols.

## License

MIT — see [LICENSE](LICENSE).

## Acknowledgments

OpenCV.jl is built on the work of the OpenCV community.
[@archit120](https://github.com/archit120) was instrumental in developing this package
during GSoC 2020 and 2021.
