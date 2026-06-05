## Covariant `AbstractVector{<:InputArray}` overloads.
##
## The auto-generated signatures use the invariant type `Array{InputArray, 1}`
## for vector-of-array arguments. Julia's parametric types are invariant, so
## concrete inputs like `Vector{Array{Float32, 3}}` fail to dispatch even
## though `Array{Float32, 3} <: InputArray`. We accept the covariant form and
## convert to `Vector{InputArray}` before forwarding to the wrapper.

_as_input_vec(v::AbstractVector{<:InputArray}) = collect(InputArray, v)

# Issue #18: drawing functions.
function polylines(img::InputArray,
                   pts::AbstractVector{<:InputArray},
                   isClosed::Bool, color::Scalar, args...; kwargs...)
    polylines(img, _as_input_vec(pts), isClosed, color, args...; kwargs...)
end

function fillPoly(img::InputArray,
                  pts::AbstractVector{<:InputArray},
                  color::Scalar, args...; kwargs...)
    fillPoly(img, _as_input_vec(pts), color, args...; kwargs...)
end

function drawContours(image::InputArray,
                      contours::AbstractVector{<:InputArray},
                      contourIdx::Int64, color::Scalar, args...; kwargs...)
    drawContours(image, _as_input_vec(contours), contourIdx, color, args...; kwargs...)
end

# Issue #60: calibrateCamera and its variants. Explicit positional signatures
# (rather than `args...`) because `iFixedPoint::Int64` sits between vector
# arguments in the RO variants and would otherwise break dispatch.
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
