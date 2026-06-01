## Hand-written overloads on top of the auto-generated wrappers.
##
## The auto-generated signatures in `OpenCV_jll` use the invariant type
## `Array{InputArray, 1}` for vector-of-array arguments. Julia's parametric
## types are invariant, so concrete inputs like `Vector{Array{Float32, 3}}`
## fail to dispatch, even though `Array{Float32, 3} <: InputArray`. We add
## thin covariant overloads here that accept `AbstractVector{<:InputArray}`
## and convert to `Vector{InputArray}` before forwarding to the wrapper.

_as_input_vec(v::AbstractVector{<:InputArray}) = collect(InputArray, v)

# Issue #60: calibrateCamera and its variants.
for f in (:calibrateCamera, :calibrateCameraExtended)
    @eval function $f(objectPoints::AbstractVector{<:InputArray},
                      imagePoints::AbstractVector{<:InputArray},
                      imageSize::Size{Int32},
                      cameraMatrix::InputArray,
                      distCoeffs::InputArray,
                      rvecs::AbstractVector{<:InputArray},
                      tvecs::AbstractVector{<:InputArray},
                      args...)
        $f(_as_input_vec(objectPoints), _as_input_vec(imagePoints),
           imageSize, cameraMatrix, distCoeffs,
           _as_input_vec(rvecs), _as_input_vec(tvecs), args...)
    end
end

for f in (:calibrateCameraRO, :calibrateCameraROExtended)
    @eval function $f(objectPoints::AbstractVector{<:InputArray},
                      imagePoints::AbstractVector{<:InputArray},
                      imageSize::Size{Int32},
                      iFixedPoint::Int64,
                      cameraMatrix::InputArray,
                      distCoeffs::InputArray,
                      rvecs::AbstractVector{<:InputArray},
                      tvecs::AbstractVector{<:InputArray},
                      args...)
        $f(_as_input_vec(objectPoints), _as_input_vec(imagePoints),
           imageSize, iFixedPoint, cameraMatrix, distCoeffs,
           _as_input_vec(rvecs), _as_input_vec(tvecs), args...)
    end
end
