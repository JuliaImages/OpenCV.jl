

function fisheye_projectPoints(objectPoints::InputArray, rvec::InputArray, tvec::InputArray, K::InputArray, D::InputArray, imagePoints::InputArray, alpha::Float64, jacobian::InputArray)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(imagePoints),julia_to_cpp(alpha),julia_to_cpp(jacobian)))
end
fisheye_projectPoints(objectPoints::InputArray, rvec::InputArray, tvec::InputArray, K::InputArray, D::InputArray; imagePoints::InputArray = (CxxMat()), alpha::Float64 = Float64(0), jacobian::InputArray = (CxxMat())) = fisheye_projectPoints(objectPoints, rvec, tvec, K, D, imagePoints, alpha, jacobian)

function fisheye_distortPoints(undistorted::InputArray, K::InputArray, D::InputArray, distorted::InputArray, alpha::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_distortPoints(julia_to_cpp(undistorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(distorted),julia_to_cpp(alpha)))
end
fisheye_distortPoints(undistorted::InputArray, K::InputArray, D::InputArray; distorted::InputArray = (CxxMat()), alpha::Float64 = Float64(0)) = fisheye_distortPoints(undistorted, K, D, distorted, alpha)

function fisheye_distortPoints(undistorted::InputArray, Kundistorted::InputArray, K::InputArray, D::InputArray, distorted::InputArray, alpha::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_distortPoints(julia_to_cpp(undistorted),julia_to_cpp(Kundistorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(distorted),julia_to_cpp(alpha)))
end
fisheye_distortPoints(undistorted::InputArray, Kundistorted::InputArray, K::InputArray, D::InputArray; distorted::InputArray = (CxxMat()), alpha::Float64 = Float64(0)) = fisheye_distortPoints(undistorted, Kundistorted, K, D, distorted, alpha)

function fisheye_undistortPoints(distorted::InputArray, K::InputArray, D::InputArray, undistorted::InputArray, R::InputArray, P::InputArray, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_undistortPoints(julia_to_cpp(distorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(undistorted),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(criteria)))
end
fisheye_undistortPoints(distorted::InputArray, K::InputArray, D::InputArray; undistorted::InputArray = (CxxMat()), R::InputArray = (CxxMat()), P::InputArray = (CxxMat()), criteria::TermCriteria = ()) = fisheye_undistortPoints(distorted, K, D, undistorted, R, P, criteria)

function fisheye_initUndistortRectifyMap(K::InputArray, D::InputArray, R::InputArray, P::InputArray, size::Size{Int32}, m1type::Int64, map1::InputArray, map2::InputArray)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_initUndistortRectifyMap(julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
fisheye_initUndistortRectifyMap(K::InputArray, D::InputArray, R::InputArray, P::InputArray, size::Size{Int32}, m1type::Int64; map1::InputArray = (CxxMat()), map2::InputArray = (CxxMat())) = fisheye_initUndistortRectifyMap(K, D, R, P, size, m1type, map1, map2)

function fisheye_undistortImage(distorted::InputArray, K::InputArray, D::InputArray, undistorted::InputArray, Knew::InputArray, new_size::Size{Int32})
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_undistortImage(julia_to_cpp(distorted),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(undistorted),julia_to_cpp(Knew),julia_to_cpp(new_size)))
end
fisheye_undistortImage(distorted::InputArray, K::InputArray, D::InputArray; undistorted::InputArray = (CxxMat()), Knew::InputArray = (CxxMat()), new_size::Size{Int32} = (cpp_to_julia(SizeOP()))) = fisheye_undistortImage(distorted, K, D, undistorted, Knew, new_size)

function fisheye_estimateNewCameraMatrixForUndistortRectify(K::InputArray, D::InputArray, image_size::Size{Int32}, R::InputArray, P::InputArray, balance::Float64, new_size::Size{Int32}, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_estimateNewCameraMatrixForUndistortRectify(julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(image_size),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(balance),julia_to_cpp(new_size),julia_to_cpp(fov_scale)))
end
fisheye_estimateNewCameraMatrixForUndistortRectify(K::InputArray, D::InputArray, image_size::Size{Int32}, R::InputArray; P::InputArray = (CxxMat()), balance::Float64 = Float64(0.0), new_size::Size{Int32} = (cpp_to_julia(SizeOP())), fov_scale::Float64 = Float64(1.0)) = fisheye_estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R, P, balance, new_size, fov_scale)

function fisheye_calibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, image_size::Size{Int32}, K::InputArray, D::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_calibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(image_size),julia_to_cpp(K),julia_to_cpp(D),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
fisheye_calibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, image_size::Size{Int32}, K::InputArray, D::InputArray; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), flags::Int64 = Int64(0), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTGRGTermCriteriaggEPSSGXWWSGDBLREPSILONP)) = fisheye_calibrate(objectPoints, imagePoints, image_size, K, D, rvecs, tvecs, flags, criteria)

function fisheye_stereoRectify(K1::InputArray, D1::InputArray, K2::InputArray, D2::InputArray, imageSize::Size{Int32}, R::InputArray, tvec::InputArray, flags::Int64, R1::InputArray, R2::InputArray, P1::InputArray, P2::InputArray, Q::InputArray, newImageSize::Size{Int32}, balance::Float64, fov_scale::Float64)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_stereoRectify(julia_to_cpp(K1),julia_to_cpp(D1),julia_to_cpp(K2),julia_to_cpp(D2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(tvec),julia_to_cpp(flags),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(newImageSize),julia_to_cpp(balance),julia_to_cpp(fov_scale)))
end
fisheye_stereoRectify(K1::InputArray, D1::InputArray, K2::InputArray, D2::InputArray, imageSize::Size{Int32}, R::InputArray, tvec::InputArray, flags::Int64; R1::InputArray = (CxxMat()), R2::InputArray = (CxxMat()), P1::InputArray = (CxxMat()), P2::InputArray = (CxxMat()), Q::InputArray = (CxxMat()), newImageSize::Size{Int32} = (cpp_to_julia(SizeOP())), balance::Float64 = Float64(0.0), fov_scale::Float64 = Float64(1.0)) = fisheye_stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, flags, R1, R2, P1, P2, Q, newImageSize, balance, fov_scale)

function fisheye_stereoCalibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, K1::InputArray, D1::InputArray, K2::InputArray, D2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(K1),julia_to_cpp(D1),julia_to_cpp(K2),julia_to_cpp(D2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
fisheye_stereoCalibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, K1::InputArray, D1::InputArray, K2::InputArray, D2::InputArray, imageSize::Size{Int32}; R::InputArray = (CxxMat()), T::InputArray = (CxxMat()), rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), flags::Int64 = Int64(cv_fisheye_CALIB_FIX_INTRINSIC), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTGRGTermCriteriaggEPSSGXWWSGDBLREPSILONP)) = fisheye_stereoCalibrate(objectPoints, imagePoints1, imagePoints2, K1, D1, K2, D2, imageSize, R, T, rvecs, tvecs, flags, criteria)

function fisheye_stereoCalibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, K1::InputArray, D1::InputArray, K2::InputArray, D2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_fisheye_cv_fisheye_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(K1),julia_to_cpp(D1),julia_to_cpp(K2),julia_to_cpp(D2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(flags),julia_to_cpp(criteria)))
end



