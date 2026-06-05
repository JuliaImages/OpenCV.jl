```@meta
CurrentModule = OpenCV
```

# API reference

```@docs
OpenCV.OpenCV
```

This page documents the hand-written Julia surface of OpenCV.jl: the image/array
types, the geometry primitives, and the FileIO integration.

The thousands of *wrapped* OpenCV functions (`imread`, `cvtColor`, `GaussianBlur`,
`ORB_create`, …) keep their C++ names with the `cv::` namespace stripped and are
reached through the `OpenCV.` prefix — e.g. `cv::cvtColor` is `OpenCV.cvtColor` and
the flag `cv::IMREAD_GRAYSCALE` is `OpenCV.IMREAD_GRAYSCALE`. See
[Core concepts](@ref) for the naming and data conventions, and the generated
[`gen/funclist.csv`](https://github.com/JuliaImages/OpenCV.jl/blob/master/gen/funclist.csv)
for the complete list of wrapped methods.

## Image and array types

```@docs
Mat
Vec
```

## Geometry primitives

```@docs
Point
Point3
Size
Rect
RotatedRect
Range
TermCriteria
cvComplex
```

## File and stream I/O

```@docs
load
save
imdecode
```
