#Adapted from IndirectArray

"""
    Mat{T,M,D} <: AbstractArray{T,3}

The image/array type of OpenCV.jl: a 3-dimensional `AbstractArray` view that shares
memory with an OpenCV `cv::Mat` (no copy).

# Memory layout

A `cv::Mat` is exposed to Julia with axes **`(channels, cols, rows)`** — that is,
`size(m) == (nchannels, width, height)`. This is OpenCV's row-major
`height × width × channels` buffer reinterpreted in Julia's column-major order, so the
bytes are shared with C++ directly.

Things to remember:

- A grayscale `H×W` image has `size == (1, W, H)`.
- A 3-channel `H×W` image has `size == (3, W, H)`.
- Result matrices follow the same rule. For example, an ORB descriptor matrix of `N`
  keypoints × `descriptorSize` bytes has `size == (1, descriptorSize, N)` — the
  keypoint axis is dimension **3**, not 1.

# Construction

`Mat(data)` wraps an existing `AbstractArray{T,3}` without copying; most OpenCV
functions return `Mat`s converted from C++.

# Examples

```jldoctest
julia> using OpenCV

julia> data = reshape(collect(UInt8, 1:24), 1, 4, 6);   # (channels, cols, rows)

julia> m = OpenCV.Mat(data);

julia> size(m)
(1, 4, 6)
```
"""
struct Mat{T <: dtypes, M, D <: AbstractArray{T, 3}} <: AbstractArray{T, 3}
    mat::M
    data::D

    @inline function Mat{T, M, D}(mat::M, data::D) where {T <: dtypes, M, D <: AbstractArray{T, 3}}
        new{T, M, D}(mat, data)
    end
end

@inline Mat{T}(mat::M, data::D) where {T <: dtypes, M, D <: AbstractArray{T, 3}} = Mat{T, M, D}(mat, data)
@inline Mat(data::D) where {T <: dtypes, D <: AbstractArray{T, 3}} = Mat{T, Nothing, D}(nothing, data)

function Base.deepcopy_internal(x::Mat, y::IdDict)
    if haskey(y, x)
        return y[x]
    end
    ret = Base.copy(x)
    y[x] = ret
    return ret
end

Base.size(A::Mat) = size(A.data)
Base.axes(A::Mat) = axes(A.data)
Base.IndexStyle(::Type{<:Mat{T, M, D}}) where {T, M, D} = IndexStyle(D)

Base.strides(A::Mat) = strides(A.data)
Base.copy(A::Mat) = Mat(copy(A.data))
Base.pointer(A::Mat) = Base.pointer(A.data)

Base.unsafe_convert(::Type{Ptr{T}}, A::Mat) where {T} = Base.unsafe_convert(Ptr{T}, A.data)

@inline function Base.getindex(A::Mat, i::Int)
    @boundscheck checkbounds(A.data, i)
    @inbounds A.data[i]
end

@inline function Base.getindex(A::Mat, I::Vararg{Int, 3})
    @boundscheck checkbounds(A.data, I...)
    @inbounds A.data[I...]
end

@inline function Base.setindex!(A::Mat, x, i::Int)
    @boundscheck checkbounds(A.data, i)
    @inbounds A.data[i] = x
    return A
end

@inline function Base.setindex!(A::Mat, x, I::Vararg{Int, 3})
    @boundscheck checkbounds(A.data, I...)
    @inbounds A.data[I...] = x
    return A
end
