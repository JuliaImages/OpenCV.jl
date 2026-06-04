#Adapted from IndirectArray

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
