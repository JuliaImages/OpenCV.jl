"""
    Point{T}(x, y)

A 2-D point with coordinates `x, y` (OpenCV `cv::Point_`). Pass the element type
explicitly to match the wrapped signature, e.g. `Point{Int32}(10, 20)` for pixel
coordinates or `Point{Float32}` for sub-pixel ones.
"""
struct Point{T}
  x::T
  y::T
end

"""
    Point3{T}(x, y, z)

A 3-D point with coordinates `x, y, z` (OpenCV `cv::Point3_`).
"""
struct Point3{T}
  x::T
  y::T
  z::T
end


"""
    Size{T}(width, height)

A `width × height` size (OpenCV `cv::Size_`). Note this is *width-then-height*,
unlike a [`Mat`](@ref)'s `(channels, cols, rows)` axes. Many functions expect
`Size{Int32}`, e.g. `Size{Int32}(640, 480)`.
"""
struct Size{T}
  width::T
  height::T
end


"""
    Rect{T}(x, y, width, height)

An axis-aligned rectangle with top-left corner `(x, y)` and the given `width` and
`height` (OpenCV `cv::Rect_`).
"""
struct Rect{T}
  x::T
  y::T
  width::T
  height::T
end

"""
    RotatedRect(center::Point{Float32}, size::Size{Float32}, angle::Float32)

A rectangle rotated by `angle` degrees about `center` (OpenCV `cv::RotatedRect`).
"""
struct RotatedRect
    center::Point{Float32}
    size::Size{Float32}
    angle::Float32
end

"""
    Range(start, end_)

A half-open integer index range `[start, end_)` (OpenCV `cv::Range`). `end_` is
spelled with a trailing underscore because `end` is a Julia keyword.
"""
struct Range
    start::Int32
    end_::Int32
end

"""
    TermCriteria(type, maxCount, epsilon)

Iteration stopping criterion for iterative algorithms (OpenCV `cv::TermCriteria`):
stop after `maxCount` iterations and/or once the change falls below `epsilon`,
according to `type` (a combination of `TermCriteria_COUNT` / `TermCriteria_EPS`).
"""
struct TermCriteria
    type::Int32
    maxCount::Int32
    epsilon::Float64
end

"""
    cvComplex{T}(re, im)

A complex number with real part `re` and imaginary part `im` (OpenCV `cv::Complex`).
"""
struct cvComplex{T}
  re::T
  im::T
end
