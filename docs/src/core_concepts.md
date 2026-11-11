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

Other C++ namespaces become submodules with the namespace prefix dropped:
`cv::dnn::readNetFromONNX` is `OpenCV.dnn.readNetFromONNX`, `cv::aruco::ArucoDetector`
is `OpenCV.aruco.ArucoDetector`, `cv::ml::SVM::create` is `OpenCV.ml.SVM_create`, and
likewise for `OpenCV.ximgproc`, `OpenCV.xphoto`, `OpenCV.xfeatures2d` and
`OpenCV.optflow`.

Output arguments work as in C++/Python: functions return their results rather than
mutating an output buffer you pass in. Public data members of parameter structs
(`CV_PROP_RW` in the headers) are Julia properties that read and write the C++ field,
e.g. `params.minMarkerPerimeterRate = 0.01` on an `OpenCV.aruco.DetectorParameters()`.

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

```jldoctest
julia> using OpenCV

julia> A = rand(UInt8, 3, 640, 480);          # (channels, cols, rows)

julia> size(OpenCV.Mat(A))                    # zero-copy view; shares memory with A
(3, 640, 480)

julia> size(OpenCV.cvtColor(A, OpenCV.COLOR_BGR2GRAY))   # plain arrays work too
(1, 640, 480)
```

The supported element types are `UInt8`, `Int8`, `UInt16`, `Int16`, `Int32`,
`Float32` and `Float64` (OpenCV's `CV_8U … CV_64F`), plus the OpenCV 5 depths
`Float16` (`CV_16F`), `Bool` (`CV_Bool`), `UInt32` (`CV_32U`), `UInt64` (`CV_64U`)
and `Int64` (`CV_64S`). `CV_16BF` (bfloat16) is not mapped. A `Mat` has at most 128
channels (`CV_CN_MAX`). Not every OpenCV function accepts every depth; most image
processing still expects `UInt8`, `UInt16` or `Float32`.

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
