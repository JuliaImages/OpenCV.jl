# Wrapper generator provenance

This directory is OpenCV.jl's own copy of the **Julia-specific** OpenCV binding
generator. It was vendored from `opencv_contrib/modules/julia` at the OpenCV
4.13.0 tag (`opencv_contrib` commit `d99ad2a188210cc35067c2e60076eed7c2442bc3`),
with the JuliaImages modifications that used to be carried in Yggdrasil as
`O/OpenCV/bundled/patches/julia-bindings-upstream-contrib.patch` folded in
directly. OpenCV.jl no longer depends on the upstream `opencv_contrib` copy.

`hdr_parser.py` is vendored from `opencv/modules/python/src2/hdr_parser.py`;
`regenerate.jl` overrides it with the pinned OpenCV's copy at regeneration time
so the parser always matches the headers it parses.

## Determinism (reproducible regeneration)

The upstream generator was **not** reproducible: `hdr_parser.py` collects
namespaces in a Python `set()`, and several generator passes iterated namespaces
(and `list(set(...))` results) in hash-seed-dependent order. Re-running could
shuffle method/const/include order in both the `.jl` wrappers and `cv_core.cpp`.

We made it deterministic with `sorted()` at every output-ordering site:

- `parse_tree.py`: sort `parser.namespaces` on insertion; `sorted(set(...))` for
  base classes, `register_types`, and default values.
- `gen3_cpp.py`: sort the namespace body loop and `default_values`.
- `gen3_julia.py` / `gen3_julia_cxx.py`: sort the namespace loop and the
  submodule `include(...)` emission.

Verified: byte-identical output across multiple `PYTHONHASHSEED` values, and an
exact reproduction of the known-good 4.13.0 wrappers (modulo ordering, which is
now stable). This is what lets `regenerate.jl` + a CI `git diff --exit-code`
guard guarantee reproducible regeneration on future OpenCV releases.

## Bumping OpenCV

1. Update `OPENCV_VERSION` (tag + `opencv`/`opencv_contrib` commits) — and the
   matching `GitSource` commits in Yggdrasil `O/OpenCV/build_tarballs.jl`.
2. If `MODULE_LIST` changed, refresh `gen_python_config.json` (its
   `HAVE_OPENCV_*` / version entries are derived from the built module set; the
   authoritative source is OpenCV's
   `cmake/OpenCVBindingsPreprocessorDefinitions.cmake`).
3. `julia gen/regenerate.jl`, then review and commit the `src/generated/` diff.
4. Rebuild `OpenCV_jll` from the same OpenCV tag so the compiled
   `libopencv_julia` matches these wrappers.

## OpenCV 5 changes

Moving to OpenCV 5.1 changed the generator as follows.

- **Module table.** `gen_all.py` maps each module to the headers it parses
  (`MODULE_HEADERS`) and finds them under one or more `--root=` directories, so
  opencv_contrib modules (ml, ximgproc, xphoto, tracking, optflow, xfeatures2d) are
  parsed like main-repo ones. `regenerate.jl` fetches opencv_contrib too. In 5.x,
  calib3d split into calib/geometry/stereo, features2d became features, and
  CascadeClassifier/HOGDescriptor moved to contrib's xobjdetect.
- **Allowlist.** `funclist.csv` accepts `#` comments and blank lines. It now lists every
  wrapped declaration of the newly parsed headers.
- **Defaults.** Every non-literal default (`TermCriteria(...)`, `AKAZE::DESCRIPTOR_MLDB`,
  `ENGINE_AUTO`) gets a C++ function evaluated inside its declaring namespaces, and the
  Julia side calls it unless `defval.txt` maps the default. Previously an unmapped default
  became `()` or `Int64()`, or dropped the whole keyword method.
- **Nested and namespaced types.** Bare nested types inside a class (`Mode` in
  `Stitcher::create`) are qualified, and the generated C++ declares the flattened
  spellings it uses (`TrackerVit_Params`, `dnn_Net`). Base classes resolve through
  enclosing namespaces (`cv::xphoto::Tonemap` -> `cv::Tonemap`).
- **`cv::Ptr`-held classes.** A class handed out as `cv::Ptr<T>` by a factory (and its
  bases) is held by `Ptr` like an Algorithm, and constructors of such classes return
  `cv::makePtr<T>`, so factory results and constructed objects work with every method.
  `Ptr<T>` arguments are `cv_Ptr{<:T}` in Julia.
- **Writable properties.** `setproperty!` now covers `CV_PROP_RW` fields (it covered the
  read-only ones, calling setters that do not exist).
- **Chunked registration.** The C++ module body is split into functions of ~250 lines;
  one function with every binding made GCC 10 run out of memory.
- **Hand-written pieces.** `cv::MatShape` is a class in 5.x, so the four `dnn::Net`
  methods that take shapes are wrapped by hand (`manual_cxx.jl` and the section after
  `${cpp_code}` in `cv_core.cpp`).

