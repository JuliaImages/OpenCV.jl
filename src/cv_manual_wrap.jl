
function createButton(bar_name::String, on_change, userdata, type::Int32 = 0, initial_button_state::Bool = false)
    func =  (x)->on_change(x, userdata)
    CxxWrap.gcprotect(userdata)
    CxxWrap.gcprotect(func)
    CxxWrap.gcprotect(on_change)
    return jl_cpp_cv2.createButton(bar_name,func, type, initial_button_state)
end

function setMouseCallback(winname::String, onMouse, userdata)
    func =  (event, x, y, flags)->onMouse(event, x, y, flags, userdata)
    CxxWrap.gcprotect(userdata)
    CxxWrap.gcprotect(func)
    CxxWrap.gcprotect(onMouse)
    return jl_cpp_cv2.setMouseCallback(winname,func)
end

function createTrackbar(trackbarname::String, winname::String, value::Ref{Int32}, count::Int32, onChange, userdata)
    func =  (x)->onChange(x, userdata)
    CxxWrap.gcprotect(userdata)
    CxxWrap.gcprotect(func)
    CxxWrap.gcprotect(onChange)
    return jl_cpp_cv2.createTrackbar(trackbarname, winname, value, count, func)
end

function CascadeClassifier(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_CascadeClassifier(julia_to_cpp(filename)))
end


function detectMultiScale(cobj::CascadeClassifier, image::InputArray, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size{Int32}, maxSize::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale(cobj::CascadeClassifier, image::InputArray; scaleFactor::Float64 = Float64(1.1), minNeighbors::Int32 = Int32(3), flags::Int32 = Int32(0), minSize::Size{Int32} = (Size{Int32}(0,0)), maxSize::Size{Int32} = (Size{Int32}(0,0))) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)

function empty(cobj::CascadeClassifier)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_empty(julia_to_cpp(cobj)))
end

## Convenience: mirror Python's `cv.VideoWriter_fourcc(*"h264")`. Issue #31.
function VideoWriter_fourcc(s::AbstractString)
    length(s) == 4 ||
        throw(ArgumentError("VideoWriter_fourcc expects a 4-character codec tag, got $(repr(s))"))
    VideoWriter_fourcc(s[1], s[2], s[3], s[4])
end

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

# ORB_create convenience overload with defaults (OpenCV 4.13.0+)
function ORB_create(;
    nfeatures::Int64 = 500,
    scaleFactor::Float64 = 1.2,
    nlevels::Int64 = 8,
    edgeThreshold::Int64 = 31,
    firstLevel::Int64 = 0,
    WTA_K::Int64 = 2,
    scoreType::ORB_ScoreType = ORB_FAST_SCORE,
    patchSize::Int64 = 31,
    fastThreshold::Int64 = 20)
    ORB_create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, scoreType, patchSize, fastThreshold)
end

# SimpleBlobDetector_create convenience overload with defaults (OpenCV 4.13.0+)
function SimpleBlobDetector_create(;
    parameters::SimpleBlobDetector_Params = SimpleBlobDetector_Params())
    SimpleBlobDetector_create(parameters)
end

# KeyPoint vector round-tripping (detect() -> compute()).
#
# `detect` returns a std::vector<cv::KeyPoint>. The generic StdVector conversion
# (types_conversion.jl) would hand back Vector{KeyPointDereferenced} whose
# elements are *views* into that C++ vector. Once detect's return value goes out
# of scope it is freed, leaving those elements dangling — a use-after-free that
# corrupts fields like `octave` and makes a later compute() trip OpenCV's
# `inv_scale_x > 0` pyramid assertion. It is also the wrong container type:
# the generated compute() wants Vector{KeyPoint}, and Julia Vectors are
# invariant, so Dereferenced would not even dispatch.
#
# Fix: while the source vector is still alive, value-copy each KeyPoint into a
# fresh, Julia-owned KeyPoint (CxxWrap exposes the fields via getproperty).
function _copy_keypoint(kp)
    return KeyPoint(Float64(kp.pt.x), Float64(kp.pt.y), Float64(kp.size),
                    Float64(kp.angle), Float64(kp.response),
                    Int64(kp.octave), Int64(kp.class_id))
end

function cpp_to_julia(var::CxxWrap.StdVector{KeyPoint})
    ret = KeyPoint[]
    for x in var
        push!(ret, _copy_keypoint(x))
    end
    return ret
end

# Rebuild a std::vector<cv::KeyPoint> for the C++ glue. CxxWrap only registers
# StdVector for the base type KeyPoint (not the Allocated/Dereferenced
# subtypes), so pin the element type explicitly.
function julia_to_cpp(var::Array{<:KeyPoint, 1})
    ret = CxxWrap.StdVector{KeyPoint}()
    for x in var
        push!(ret, x)
    end
    return ret
end

