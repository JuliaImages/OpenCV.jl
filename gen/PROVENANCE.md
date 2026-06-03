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
