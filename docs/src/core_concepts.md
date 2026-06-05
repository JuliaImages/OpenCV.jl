```@meta
CurrentModule = OpenCV
```

# Core concepts

OpenCV.jl is a thin, near-mechanical wrapper over the OpenCV C++ library. Knowing a
few conventions makes the whole API predictable.

## Naming: `cv::` → `OpenCV.`

Every wrapped function, enum, and class keeps its C++ name with the `cv::` namespace
removed, reached through the `OpenCV.` prefix:

| C++ | Julia |
|-----|-------|
| `cv::imread(path)` | `OpenCV.imread(path)` |
| `cv::cvtColor(src, dst, cv::COLOR_RGB2GRAY)` | `OpenCV.cvtColor(src, OpenCV.COLOR_RGB2GRAY)` |
| `cv::ORB::create()` | `OpenCV.ORB_create()` |
| `cv::IMREAD_GRAYSCALE` | `OpenCV.IMREAD_GRAYSCALE` |

Nested names (class statics, nested enums) flatten with `_`, so `cv::ORB::create`
becomes `OpenCV.ORB_create` and `cv::TermCriteria::COUNT` becomes
`OpenCV.TermCriteria_COUNT`. Nothing is exported, so the `OpenCV.` prefix is always
required — this keeps the thousands of short names (`blur`, `add`, `mean`, …) from
colliding with `Base` or other packages.

Output arguments work as in C++/Python: functions return their results rather than
mutating an output buffer you pass in.

## Images are [`Mat`](@ref)s with `(channels, cols, rows)` axes

The central type is [`Mat`](@ref), a 3-dimensional `AbstractArray` that shares memory
with an OpenCV `cv::Mat`. **Mind the axis order:** a `cv::Mat` is exposed with axes
`(channels, cols, rows)`, i.e. `size(img) == (nchannels, width, height)`.

| image | `size(img)` |
|-------|-------------|
| grayscale `H×W` | `(1, W, H)` |
| colour `H×W` (BGR) | `(3, W, H)` |
| ORB descriptors, `N` keypoints | `(1, descriptorSize, N)` |

This is OpenCV's row-major `height × width × channels` buffer reinterpreted in Julia's
column-major order, so no copy or transpose happens at the boundary. Indexing is
`img[channel, col, row]`.

## Interop with Julia arrays

Any `AbstractArray{T,3}` with `T` one of the supported element types is accepted
wherever an image is expected (this Union is `OpenCV.InputArray`), so you can pass a
plain Julia array directly and wrap one as a `Mat` with `OpenCV.Mat(A)`:

```julia
A = rand(UInt8, 3, 640, 480)     # (channels, cols, rows)
img = OpenCV.Mat(A)              # zero-copy view; shares memory with A
gray = OpenCV.cvtColor(A, OpenCV.COLOR_BGR2GRAY)   # plain arrays work too
```

The supported element types are `UInt8`, `Int8`, `UInt16`, `Int16`, `Int32`,
`Float32`, and `Float64` (OpenCV's `CV_8U … CV_64F`).

## Scalars, points, and small vectors

- A colour/scalar value is a plain tuple of up to four numbers, e.g. `(0, 255, 255)`
  for yellow; missing components default to `0`.
- Geometry primitives are immutable structs parameterised by element type:
  [`Point`](@ref), [`Point3`](@ref), [`Size`](@ref), [`Rect`](@ref),
  [`RotatedRect`](@ref), [`Range`](@ref), [`TermCriteria`](@ref). Construct them with
  the element type to match the wrapped signature, e.g. `OpenCV.Size{Int32}(640, 480)`.
- Per-pixel multi-channel values returned from a `Mat` are [`Vec`](@ref)s.

## Reading and writing images

Use the native `OpenCV.imread`/`OpenCV.imwrite`, or the FileIO interface
([`load`](@ref)/[`save`](@ref)) for BMP/JPEG/PNG/TIFF. See
[Reading and Writing of Images](@ref) for details and flags.
```
