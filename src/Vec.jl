#Adapted from IndirectArray

struct Vec{T, N, C, D <: AbstractArray{T, 1}} <: AbstractArray{T, 1}
    cpp_object::C
    data::D

    @inline function Vec{T, N, C, D}(cpp_object::C, data::D) where {T, N, C, D <: AbstractArray{T, 1}}
        new{T, N, C, D}(cpp_object, data)
    end
end

@inline function Vec{T, N}(obj) where {T, N}
    data = Base.unsafe_wrap(Array{T, 1}, Ptr{T}(obj.cpp_object), N)
    Vec{T, N, typeof(obj), typeof(data)}(obj, data)
end

@inline function Vec{T, N}(data::AbstractArray{T, 1}) where {T, N}
    size(data, 1) == N ||
        throw(DimensionMismatch("Vec{$T, $N} expects a length-$N array, got length $(size(data, 1))"))
    Vec{T, N, Nothing, typeof(data)}(nothing, data)
end

function Base.deepcopy_internal(x::Vec, y::IdDict)
    if haskey(y, x)
        return y[x]
    end
    ret = Base.copy(x)
    y[x] = ret
    return ret
end

Base.size(A::Vec) = Base.size(A.data)
Base.axes(A::Vec) = Base.axes(A.data)
Base.IndexStyle(::Type{<:Vec}) = IndexLinear()

Base.strides(::Vec) = (1,)
Base.copy(A::Vec{T, N}) where {T, N} = Vec{T, N}(copy(A.data))
Base.pointer(A::Vec) = Base.pointer(A.data)

Base.unsafe_convert(::Type{Ptr{T}}, A::Vec) where {T} = Base.unsafe_convert(Ptr{T}, A.data)

@inline function Base.getindex(A::Vec, I::Int)
    @boundscheck checkbounds(A.data, I)
    @inbounds A.data[I]
end

@inline function Base.setindex!(A::Vec, x, I::Int)
    @boundscheck checkbounds(A.data, I)
    @inbounds A.data[I] = x
    return A
end
