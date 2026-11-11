
function Base.getproperty(m::IntelligentScissorsMB, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::IntelligentScissorsMB, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function segmentation_setWeights(cobj::IntelligentScissorsMB, weight_non_edge::Float64, weight_gradient_direction::Float64, weight_gradient_magnitude::Float64)
	return cpp_to_julia(jlopencv_cv_segmentation_cv_segmentation_IntelligentScissorsMB_cv_segmentation_IntelligentScissorsMB_setWeights(julia_to_cpp(cobj),julia_to_cpp(weight_non_edge),julia_to_cpp(weight_gradient_direction),julia_to_cpp(weight_gradient_magnitude)))
end

function segmentation_setGradientMagnitudeMaxLimit(cobj::IntelligentScissorsMB, gradient_magnitude_threshold_max::Float64)
	return cpp_to_julia(jlopencv_cv_segmentation_cv_segmentation_IntelligentScissorsMB_cv_segmentation_IntelligentScissorsMB_setGradientMagnitudeMaxLimit(julia_to_cpp(cobj),julia_to_cpp(gradient_magnitude_threshold_max)))
end
segmentation_setGradientMagnitudeMaxLimit(cobj::IntelligentScissorsMB; gradient_magnitude_threshold_max::Float64 = Float64(0)) = segmentation_setGradientMagnitudeMaxLimit(cobj, gradient_magnitude_threshold_max)

function segmentation_setEdgeFeatureZeroCrossingParameters(cobj::IntelligentScissorsMB, gradient_magnitude_min_value::Float64)
	return cpp_to_julia(jlopencv_cv_segmentation_cv_segmentation_IntelligentScissorsMB_cv_segmentation_IntelligentScissorsMB_setEdgeFeatureZeroCrossingParameters(julia_to_cpp(cobj),julia_to_cpp(gradient_magnitude_min_value)))
end
segmentation_setEdgeFeatureZeroCrossingParameters(cobj::IntelligentScissorsMB; gradient_magnitude_min_value::Float64 = Float64(0)) = segmentation_setEdgeFeatureZeroCrossingParameters(cobj, gradient_magnitude_min_value)

function segmentation_setEdgeFeatureCannyParameters(cobj::IntelligentScissorsMB, threshold1::Float64, threshold2::Float64, apertureSize::Int64, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_segmentation_cv_segmentation_IntelligentScissorsMB_cv_segmentation_IntelligentScissorsMB_setEdgeFeatureCannyParameters(julia_to_cpp(cobj),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(apertureSize),julia_to_cpp(L2gradient)))
end
segmentation_setEdgeFeatureCannyParameters(cobj::IntelligentScissorsMB, threshold1::Float64, threshold2::Float64; apertureSize::Int64 = Int64(3), L2gradient::Bool = (false)) = segmentation_setEdgeFeatureCannyParameters(cobj, threshold1, threshold2, apertureSize, L2gradient)

function segmentation_applyImage(cobj::IntelligentScissorsMB, image::InputArray)
	return cpp_to_julia(jlopencv_cv_segmentation_cv_segmentation_IntelligentScissorsMB_cv_segmentation_IntelligentScissorsMB_applyImage(julia_to_cpp(cobj),julia_to_cpp(image)))
end

function segmentation_applyImageFeatures(cobj::IntelligentScissorsMB, non_edge::InputArray, gradient_direction::InputArray, gradient_magnitude::InputArray, image::InputArray)
	return cpp_to_julia(jlopencv_cv_segmentation_cv_segmentation_IntelligentScissorsMB_cv_segmentation_IntelligentScissorsMB_applyImageFeatures(julia_to_cpp(cobj),julia_to_cpp(non_edge),julia_to_cpp(gradient_direction),julia_to_cpp(gradient_magnitude),julia_to_cpp(image)))
end
segmentation_applyImageFeatures(cobj::IntelligentScissorsMB, non_edge::InputArray, gradient_direction::InputArray, gradient_magnitude::InputArray; image::InputArray = (CxxMat())) = segmentation_applyImageFeatures(cobj, non_edge, gradient_direction, gradient_magnitude, image)

function segmentation_buildMap(cobj::IntelligentScissorsMB, sourcePt::Point{Int32})
	return cpp_to_julia(jlopencv_cv_segmentation_cv_segmentation_IntelligentScissorsMB_cv_segmentation_IntelligentScissorsMB_buildMap(julia_to_cpp(cobj),julia_to_cpp(sourcePt)))
end

function segmentation_getContour(cobj::IntelligentScissorsMB, targetPt::Point{Int32}, contour::InputArray, backward::Bool)
	return cpp_to_julia(jlopencv_cv_segmentation_cv_segmentation_IntelligentScissorsMB_cv_segmentation_IntelligentScissorsMB_getContour(julia_to_cpp(cobj),julia_to_cpp(targetPt),julia_to_cpp(contour),julia_to_cpp(backward)))
end
segmentation_getContour(cobj::IntelligentScissorsMB, targetPt::Point{Int32}; contour::InputArray = (CxxMat()), backward::Bool = (false)) = segmentation_getContour(cobj, targetPt, contour, backward)

function segmentation_IntelligentScissorsMB()
	return cpp_to_julia(jlopencv_cv_segmentation_cv_segmentation_IntelligentScissorsMB_cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB())
end



