function cpp_to_julia(var::CxxScalar{T}) where {T}
    var = Vec{T, 4}(var)
    return (var[1], var[2], var[3], var[4])
end

function cpp_to_julia(var::CxxVec{T, N}) where {T, N}
    return Vec{T, N}(var)
end

function julia_to_cpp(sc::Scalar)
    if size(sc,1)==0
        return CxxScalar{Float64}(0,0,0,0)
    elseif size(sc, 1) == 1
        return CxxScalar{Float64}(Float64(sc[1]), 0, 0, 0)
    elseif size(sc,1) == 2
        return CxxScalar{Float64}(Float64(sc[1]), Float64(sc[2]), 0, 0)
    elseif size(sc,1) == 3
        return CxxScalar{Float64}(Float64(sc[1]), Float64(sc[2]), Float64(sc[3]), 0)
    end
    return CxxScalar{Float64}(Float64(sc[1]), Float64(sc[2]), Float64(sc[3]), Float64(sc[4]))
end

function julia_to_cpp(vec::Vec{T, N}) where {T, N}
    return CxxVec{T, N}(Base.pointer(vec))
end

function julia_to_cpp(var::Array{T, 1}) where {T <: Scalar}
    ret = CxxWrap.StdVector{CxxScalar}()
    for x in var
        push!(ret, julia_to_cpp(x))
    end
    return ret
end

function julia_to_cpp(var::Array{Vec{T, N}, 1}) where {T, N}
    ret = CxxWrap.StdVector{CxxVec{T, N}}()
    for x in var
        push!(ret, julia_to_cpp(x))
    end
    return ret
end

function julia_to_cpp(var::Array{T, 1}) where {T}
    if size(var, 1) == 0
        return CxxWrap.StdVector{T}()
    end
    ret = CxxWrap.StdVector{typeof(julia_to_cpp(var[1]))}()
    for x in var
        push!(ret, julia_to_cpp(x))
    end
    return ret
end

function cpp_to_julia(var::CxxWrap.StdVector{T}) where {T <: CxxScalar}
    ret = Array{Scalar, 1}()
    for x in var
        push!(ret, cpp_to_julia(x))
    end
    return ret
end

function cpp_to_julia(var::CxxWrap.StdVector{CxxVec{T, N}}) where {T, N}
    ret = Array{Vec{T, N}, 1}()
    for x in var
        push!(ret, cpp_to_julia(x))
    end
    return ret
end

function cpp_to_julia(var::CxxWrap.StdVector{T}) where {T}
    if size(var, 1) == 0
        return Array{T, 1}()
    end
    ret = Array{typeof(cpp_to_julia(var[1])), 1}()
    for x in var
        push!(ret, cpp_to_julia(x))
    end
    return ret
end

# ---------------------------------------------------------------------------
# std::vector<value-type> round-tripping for CxxWrap-wrapped C++ value types.
#
# The generic `cpp_to_julia(StdVector{T})` above would return a
# `Vector{TDereferenced}` whose elements are *views* into the C++ vector: once
# the source vector is freed those views dangle (use-after-free), and the
# Dereferenced element type is invariant-incompatible with the generated
# signatures, which want `Vector{T}`. For the value types OpenCV hands back by
# value inside a `std::vector` — `KeyPoint` (detect/compute) and `DMatch`
# (match/knnMatch/radiusMatch) — value-copy each element into a fresh,
# Julia-owned object while the source is still alive, and rebuild
# `StdVector{T}` (only the base type is registered with CxxWrap) on the way back
# to C++. Nested `Vector{Vector{DMatch}}` (knnMatch) is handled too: the generic
# method above drives the outer vector and dispatches each inner one here while
# the parent is still alive. Add a type to the tuple below to cover it.
# ---------------------------------------------------------------------------

# Value-copy one wrapped element into a fresh, owned object. Fields are read via
# CxxWrap getproperty while the source is alive.
_copy_cxx_value(kp::KeyPoint) =
    KeyPoint(Float64(kp.pt.x), Float64(kp.pt.y), Float64(kp.size),
             Float64(kp.angle), Float64(kp.response),
             Int64(kp.octave), Int64(kp.class_id))

_copy_cxx_value(m::DMatch) =
    DMatch(Int64(m.queryIdx), Int64(m.trainIdx), Int64(m.imgIdx), Float64(m.distance))

for T in (KeyPoint, DMatch)
    @eval function cpp_to_julia(var::CxxWrap.StdVector{$T})
        ret = $T[]
        for x in var
            push!(ret, _copy_cxx_value(x))
        end
        return ret
    end
    @eval function julia_to_cpp(var::Array{<:$T, 1})
        ret = CxxWrap.StdVector{$T}()
        for x in var
            push!(ret, x)
        end
        return ret
    end
end