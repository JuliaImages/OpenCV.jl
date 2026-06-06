# OpenCV.jl
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://juliaimages.org/OpenCV.jl/dev/)
[![CI](https://github.com/JuliaImages/OpenCV.jl/actions/workflows/UnitTest.yml/badge.svg)](https://github.com/JuliaImages/OpenCV.jl/actions/workflows/UnitTest.yml)
[![codecov](https://codecov.io/gh/JuliaImages/OpenCV.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/JuliaImages/OpenCV.jl)

**OpenCV.jl** is a Julia interface to the [OpenCV](https://opencv.org) computer-vision
library — image and video processing, object detection, feature extraction,
calibration, and more — backed by the precompiled library through `OpenCV_jll`.

📖 **[Documentation](https://juliaimages.org/OpenCV.jl/dev/)** — a quick-start example,
the `Mat` image type and its `(channels, cols, rows)` layout, the `cv::` → `OpenCV.`
naming convention, reading/writing images, and the API reference.

## Installation

```julia
] add OpenCV
```

This installs the package and the precompiled OpenCV binaries; no system OpenCV is required.

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
