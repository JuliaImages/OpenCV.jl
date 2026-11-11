

function motempl_updateMotionHistory(silhouette::InputArray, mhi::InputArray, timestamp::Float64, duration::Float64)
	return cpp_to_julia(jlopencv_cv_motempl_cv_motempl_updateMotionHistory(julia_to_cpp(silhouette),julia_to_cpp(mhi),julia_to_cpp(timestamp),julia_to_cpp(duration)))
end

function motempl_calcMotionGradient(mhi::InputArray, delta1::Float64, delta2::Float64, mask::InputArray, orientation::InputArray, apertureSize::Int64)
	return cpp_to_julia(jlopencv_cv_motempl_cv_motempl_calcMotionGradient(julia_to_cpp(mhi),julia_to_cpp(delta1),julia_to_cpp(delta2),julia_to_cpp(mask),julia_to_cpp(orientation),julia_to_cpp(apertureSize)))
end
motempl_calcMotionGradient(mhi::InputArray, delta1::Float64, delta2::Float64; mask::InputArray = (CxxMat()), orientation::InputArray = (CxxMat()), apertureSize::Int64 = Int64(3)) = motempl_calcMotionGradient(mhi, delta1, delta2, mask, orientation, apertureSize)

function motempl_calcGlobalOrientation(orientation::InputArray, mask::InputArray, mhi::InputArray, timestamp::Float64, duration::Float64)
	return cpp_to_julia(jlopencv_cv_motempl_cv_motempl_calcGlobalOrientation(julia_to_cpp(orientation),julia_to_cpp(mask),julia_to_cpp(mhi),julia_to_cpp(timestamp),julia_to_cpp(duration)))
end

function motempl_segmentMotion(mhi::InputArray, timestamp::Float64, segThresh::Float64, segmask::InputArray)
	return cpp_to_julia(jlopencv_cv_motempl_cv_motempl_segmentMotion(julia_to_cpp(mhi),julia_to_cpp(timestamp),julia_to_cpp(segThresh),julia_to_cpp(segmask)))
end
motempl_segmentMotion(mhi::InputArray, timestamp::Float64, segThresh::Float64; segmask::InputArray = (CxxMat())) = motempl_segmentMotion(mhi, timestamp, segThresh, segmask)



