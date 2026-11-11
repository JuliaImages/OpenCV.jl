

   const ximgproc_ThinningTypes = Int64 

   const ximgproc_LocalBinarizationMethods = Int64 

   const ximgproc_EdgeAwareFiltersList = Int64 

   const ximgproc_EdgeDrawing_GradientOperator = Int64 

   const ximgproc_AngleRangeOption = Int64 

   const ximgproc_HoughOp = Int64 

   const ximgproc_HoughDeskewOption = Int64 

   const ximgproc_WMFWeightType = Int64 

   const ximgproc_SLICType = Int64 
function Base.getproperty(m::cv_Ptr{DTFilter}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{DTFilter}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_filter(cobj::cv_Ptr{T}, src::InputArray, dst::InputArray, dDepth::Int64) where {T <: DTFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_DTFilter_cv_ximgproc_DTFilter_filter(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dDepth)))
end
ximgproc_filter(cobj::cv_Ptr{T}, src::InputArray; dst::InputArray = (CxxMat()), dDepth::Int64 = Int64(-1)) where {T <: DTFilter} = ximgproc_filter(cobj, src, dst, dDepth)
function Base.getproperty(m::cv_Ptr{GuidedFilter}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GuidedFilter}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_filter(cobj::cv_Ptr{T}, src::InputArray, dst::InputArray, dDepth::Int64) where {T <: GuidedFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_GuidedFilter_cv_ximgproc_GuidedFilter_filter(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dDepth)))
end
ximgproc_filter(cobj::cv_Ptr{T}, src::InputArray; dst::InputArray = (CxxMat()), dDepth::Int64 = Int64(-1)) where {T <: GuidedFilter} = ximgproc_filter(cobj, src, dst, dDepth)
function Base.getproperty(m::cv_Ptr{AdaptiveManifoldFilter}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{AdaptiveManifoldFilter}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_filter(cobj::cv_Ptr{T}, src::InputArray, dst::InputArray, joint::InputArray) where {T <: AdaptiveManifoldFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_AdaptiveManifoldFilter_cv_ximgproc_AdaptiveManifoldFilter_filter(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(joint)))
end
ximgproc_filter(cobj::cv_Ptr{T}, src::InputArray; dst::InputArray = (CxxMat()), joint::InputArray = (CxxMat())) where {T <: AdaptiveManifoldFilter} = ximgproc_filter(cobj, src, dst, joint)

function ximgproc_collectGarbage(cobj::cv_Ptr{T}) where {T <: AdaptiveManifoldFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_AdaptiveManifoldFilter_cv_ximgproc_AdaptiveManifoldFilter_collectGarbage(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{FastBilateralSolverFilter}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{FastBilateralSolverFilter}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_filter(cobj::cv_Ptr{T}, src::InputArray, confidence::InputArray, dst::InputArray) where {T <: FastBilateralSolverFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_FastBilateralSolverFilter_cv_ximgproc_FastBilateralSolverFilter_filter(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(confidence),julia_to_cpp(dst)))
end
ximgproc_filter(cobj::cv_Ptr{T}, src::InputArray, confidence::InputArray; dst::InputArray = (CxxMat())) where {T <: FastBilateralSolverFilter} = ximgproc_filter(cobj, src, confidence, dst)
function Base.getproperty(m::cv_Ptr{FastGlobalSmootherFilter}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{FastGlobalSmootherFilter}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_filter(cobj::cv_Ptr{T}, src::InputArray, dst::InputArray) where {T <: FastGlobalSmootherFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_FastGlobalSmootherFilter_cv_ximgproc_FastGlobalSmootherFilter_filter(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
ximgproc_filter(cobj::cv_Ptr{T}, src::InputArray; dst::InputArray = (CxxMat())) where {T <: FastGlobalSmootherFilter} = ximgproc_filter(cobj, src, dst)
function Base.getproperty(m::cv_Ptr{DisparityFilter}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{DisparityFilter}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_filter(cobj::cv_Ptr{T}, disparity_map_left::InputArray, left_view::InputArray, filtered_disparity_map::InputArray, disparity_map_right::InputArray, ROI::Rect{Int32}, right_view::InputArray) where {T <: DisparityFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_DisparityFilter_cv_ximgproc_DisparityFilter_filter(julia_to_cpp(cobj),julia_to_cpp(disparity_map_left),julia_to_cpp(left_view),julia_to_cpp(filtered_disparity_map),julia_to_cpp(disparity_map_right),julia_to_cpp(ROI),julia_to_cpp(right_view)))
end
ximgproc_filter(cobj::cv_Ptr{T}, disparity_map_left::InputArray, left_view::InputArray; filtered_disparity_map::InputArray = (CxxMat()), disparity_map_right::InputArray = (CxxMat()), ROI::Rect{Int32} = (cpp_to_julia(RectOP())), right_view::InputArray = (CxxMat())) where {T <: DisparityFilter} = ximgproc_filter(cobj, disparity_map_left, left_view, filtered_disparity_map, disparity_map_right, ROI, right_view)
function Base.getproperty(m::cv_Ptr{DisparityWLSFilter}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{DisparityWLSFilter}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_getLambda(cobj::cv_Ptr{T}) where {T <: DisparityWLSFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_DisparityWLSFilter_cv_ximgproc_DisparityWLSFilter_getLambda(julia_to_cpp(cobj)))
end

function ximgproc_setLambda(cobj::cv_Ptr{T}, _lambda::Float64) where {T <: DisparityWLSFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_DisparityWLSFilter_cv_ximgproc_DisparityWLSFilter_setLambda(julia_to_cpp(cobj),julia_to_cpp(_lambda)))
end

function ximgproc_getSigmaColor(cobj::cv_Ptr{T}) where {T <: DisparityWLSFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_DisparityWLSFilter_cv_ximgproc_DisparityWLSFilter_getSigmaColor(julia_to_cpp(cobj)))
end

function ximgproc_setSigmaColor(cobj::cv_Ptr{T}, _sigma_color::Float64) where {T <: DisparityWLSFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_DisparityWLSFilter_cv_ximgproc_DisparityWLSFilter_setSigmaColor(julia_to_cpp(cobj),julia_to_cpp(_sigma_color)))
end

function ximgproc_getLRCthresh(cobj::cv_Ptr{T}) where {T <: DisparityWLSFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_DisparityWLSFilter_cv_ximgproc_DisparityWLSFilter_getLRCthresh(julia_to_cpp(cobj)))
end

function ximgproc_setLRCthresh(cobj::cv_Ptr{T}, _LRC_thresh::Int64) where {T <: DisparityWLSFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_DisparityWLSFilter_cv_ximgproc_DisparityWLSFilter_setLRCthresh(julia_to_cpp(cobj),julia_to_cpp(_LRC_thresh)))
end

function ximgproc_getDepthDiscontinuityRadius(cobj::cv_Ptr{T}) where {T <: DisparityWLSFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_DisparityWLSFilter_cv_ximgproc_DisparityWLSFilter_getDepthDiscontinuityRadius(julia_to_cpp(cobj)))
end

function ximgproc_setDepthDiscontinuityRadius(cobj::cv_Ptr{T}, _disc_radius::Int64) where {T <: DisparityWLSFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_DisparityWLSFilter_cv_ximgproc_DisparityWLSFilter_setDepthDiscontinuityRadius(julia_to_cpp(cobj),julia_to_cpp(_disc_radius)))
end

function ximgproc_getConfidenceMap(cobj::cv_Ptr{T}) where {T <: DisparityWLSFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_DisparityWLSFilter_cv_ximgproc_DisparityWLSFilter_getConfidenceMap(julia_to_cpp(cobj)))
end

function ximgproc_getROI(cobj::cv_Ptr{T}) where {T <: DisparityWLSFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_DisparityWLSFilter_cv_ximgproc_DisparityWLSFilter_getROI(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{SparseMatchInterpolator}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SparseMatchInterpolator}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_interpolate(cobj::cv_Ptr{T}, from_image::InputArray, from_points::InputArray, to_image::InputArray, to_points::InputArray, dense_flow::InputArray) where {T <: SparseMatchInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SparseMatchInterpolator_cv_ximgproc_SparseMatchInterpolator_interpolate(julia_to_cpp(cobj),julia_to_cpp(from_image),julia_to_cpp(from_points),julia_to_cpp(to_image),julia_to_cpp(to_points),julia_to_cpp(dense_flow)))
end
ximgproc_interpolate(cobj::cv_Ptr{T}, from_image::InputArray, from_points::InputArray, to_image::InputArray, to_points::InputArray; dense_flow::InputArray = (CxxMat())) where {T <: SparseMatchInterpolator} = ximgproc_interpolate(cobj, from_image, from_points, to_image, to_points, dense_flow)
function Base.getproperty(m::cv_Ptr{EdgeAwareInterpolator}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{EdgeAwareInterpolator}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_setCostMap(cobj::cv_Ptr{T}, _costMap::InputArray) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_setCostMap(julia_to_cpp(cobj),julia_to_cpp(_costMap)))
end

function ximgproc_setK(cobj::cv_Ptr{T}, _k::Int64) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_setK(julia_to_cpp(cobj),julia_to_cpp(_k)))
end

function ximgproc_getK(cobj::cv_Ptr{T}) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_getK(julia_to_cpp(cobj)))
end

function ximgproc_setSigma(cobj::cv_Ptr{T}, _sigma::Float64) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_setSigma(julia_to_cpp(cobj),julia_to_cpp(_sigma)))
end

function ximgproc_getSigma(cobj::cv_Ptr{T}) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_getSigma(julia_to_cpp(cobj)))
end

function ximgproc_setLambda(cobj::cv_Ptr{T}, _lambda::Float64) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_setLambda(julia_to_cpp(cobj),julia_to_cpp(_lambda)))
end

function ximgproc_getLambda(cobj::cv_Ptr{T}) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_getLambda(julia_to_cpp(cobj)))
end

function ximgproc_setUsePostProcessing(cobj::cv_Ptr{T}, _use_post_proc::Bool) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_setUsePostProcessing(julia_to_cpp(cobj),julia_to_cpp(_use_post_proc)))
end

function ximgproc_getUsePostProcessing(cobj::cv_Ptr{T}) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_getUsePostProcessing(julia_to_cpp(cobj)))
end

function ximgproc_setFGSLambda(cobj::cv_Ptr{T}, _lambda::Float64) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_setFGSLambda(julia_to_cpp(cobj),julia_to_cpp(_lambda)))
end

function ximgproc_getFGSLambda(cobj::cv_Ptr{T}) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_getFGSLambda(julia_to_cpp(cobj)))
end

function ximgproc_setFGSSigma(cobj::cv_Ptr{T}, _sigma::Float64) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_setFGSSigma(julia_to_cpp(cobj),julia_to_cpp(_sigma)))
end

function ximgproc_getFGSSigma(cobj::cv_Ptr{T}) where {T <: EdgeAwareInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeAwareInterpolator_cv_ximgproc_EdgeAwareInterpolator_getFGSSigma(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{RICInterpolator}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{RICInterpolator}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_setK(cobj::cv_Ptr{T}, k::Int64) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setK(julia_to_cpp(cobj),julia_to_cpp(k)))
end
ximgproc_setK(cobj::cv_Ptr{T}; k::Int64 = Int64(32)) where {T <: RICInterpolator} = ximgproc_setK(cobj, k)

function ximgproc_getK(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getK(julia_to_cpp(cobj)))
end

function ximgproc_setCostMap(cobj::cv_Ptr{T}, costMap::InputArray) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setCostMap(julia_to_cpp(cobj),julia_to_cpp(costMap)))
end

function ximgproc_setSuperpixelSize(cobj::cv_Ptr{T}, spSize::Int64) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setSuperpixelSize(julia_to_cpp(cobj),julia_to_cpp(spSize)))
end
ximgproc_setSuperpixelSize(cobj::cv_Ptr{T}; spSize::Int64 = Int64(15)) where {T <: RICInterpolator} = ximgproc_setSuperpixelSize(cobj, spSize)

function ximgproc_getSuperpixelSize(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getSuperpixelSize(julia_to_cpp(cobj)))
end

function ximgproc_setSuperpixelNNCnt(cobj::cv_Ptr{T}, spNN::Int64) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setSuperpixelNNCnt(julia_to_cpp(cobj),julia_to_cpp(spNN)))
end
ximgproc_setSuperpixelNNCnt(cobj::cv_Ptr{T}; spNN::Int64 = Int64(150)) where {T <: RICInterpolator} = ximgproc_setSuperpixelNNCnt(cobj, spNN)

function ximgproc_getSuperpixelNNCnt(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getSuperpixelNNCnt(julia_to_cpp(cobj)))
end

function ximgproc_setSuperpixelRuler(cobj::cv_Ptr{T}, ruler::Float64) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setSuperpixelRuler(julia_to_cpp(cobj),julia_to_cpp(ruler)))
end
ximgproc_setSuperpixelRuler(cobj::cv_Ptr{T}; ruler::Float64 = Float64(15.)) where {T <: RICInterpolator} = ximgproc_setSuperpixelRuler(cobj, ruler)

function ximgproc_getSuperpixelRuler(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getSuperpixelRuler(julia_to_cpp(cobj)))
end

function ximgproc_setSuperpixelMode(cobj::cv_Ptr{T}, mode::Int64) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setSuperpixelMode(julia_to_cpp(cobj),julia_to_cpp(mode)))
end
ximgproc_setSuperpixelMode(cobj::cv_Ptr{T}; mode::Int64 = Int64(100)) where {T <: RICInterpolator} = ximgproc_setSuperpixelMode(cobj, mode)

function ximgproc_getSuperpixelMode(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getSuperpixelMode(julia_to_cpp(cobj)))
end

function ximgproc_setAlpha(cobj::cv_Ptr{T}, alpha::Float64) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setAlpha(julia_to_cpp(cobj),julia_to_cpp(alpha)))
end
ximgproc_setAlpha(cobj::cv_Ptr{T}; alpha::Float64 = Float64(0.7)) where {T <: RICInterpolator} = ximgproc_setAlpha(cobj, alpha)

function ximgproc_getAlpha(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getAlpha(julia_to_cpp(cobj)))
end

function ximgproc_setModelIter(cobj::cv_Ptr{T}, modelIter::Int64) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setModelIter(julia_to_cpp(cobj),julia_to_cpp(modelIter)))
end
ximgproc_setModelIter(cobj::cv_Ptr{T}; modelIter::Int64 = Int64(4)) where {T <: RICInterpolator} = ximgproc_setModelIter(cobj, modelIter)

function ximgproc_getModelIter(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getModelIter(julia_to_cpp(cobj)))
end

function ximgproc_setRefineModels(cobj::cv_Ptr{T}, refineModles::Bool) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setRefineModels(julia_to_cpp(cobj),julia_to_cpp(refineModles)))
end
ximgproc_setRefineModels(cobj::cv_Ptr{T}; refineModles::Bool = (true)) where {T <: RICInterpolator} = ximgproc_setRefineModels(cobj, refineModles)

function ximgproc_getRefineModels(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getRefineModels(julia_to_cpp(cobj)))
end

function ximgproc_setMaxFlow(cobj::cv_Ptr{T}, maxFlow::Float64) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setMaxFlow(julia_to_cpp(cobj),julia_to_cpp(maxFlow)))
end
ximgproc_setMaxFlow(cobj::cv_Ptr{T}; maxFlow::Float64 = Float64(250.)) where {T <: RICInterpolator} = ximgproc_setMaxFlow(cobj, maxFlow)

function ximgproc_getMaxFlow(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getMaxFlow(julia_to_cpp(cobj)))
end

function ximgproc_setUseVariationalRefinement(cobj::cv_Ptr{T}, use_variational_refinement::Bool) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setUseVariationalRefinement(julia_to_cpp(cobj),julia_to_cpp(use_variational_refinement)))
end
ximgproc_setUseVariationalRefinement(cobj::cv_Ptr{T}; use_variational_refinement::Bool = (false)) where {T <: RICInterpolator} = ximgproc_setUseVariationalRefinement(cobj, use_variational_refinement)

function ximgproc_getUseVariationalRefinement(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getUseVariationalRefinement(julia_to_cpp(cobj)))
end

function ximgproc_setUseGlobalSmootherFilter(cobj::cv_Ptr{T}, use_FGS::Bool) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setUseGlobalSmootherFilter(julia_to_cpp(cobj),julia_to_cpp(use_FGS)))
end
ximgproc_setUseGlobalSmootherFilter(cobj::cv_Ptr{T}; use_FGS::Bool = (true)) where {T <: RICInterpolator} = ximgproc_setUseGlobalSmootherFilter(cobj, use_FGS)

function ximgproc_getUseGlobalSmootherFilter(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getUseGlobalSmootherFilter(julia_to_cpp(cobj)))
end

function ximgproc_setFGSLambda(cobj::cv_Ptr{T}, lambda::Float64) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setFGSLambda(julia_to_cpp(cobj),julia_to_cpp(lambda)))
end
ximgproc_setFGSLambda(cobj::cv_Ptr{T}; lambda::Float64 = Float64(500.)) where {T <: RICInterpolator} = ximgproc_setFGSLambda(cobj, lambda)

function ximgproc_getFGSLambda(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getFGSLambda(julia_to_cpp(cobj)))
end

function ximgproc_setFGSSigma(cobj::cv_Ptr{T}, sigma::Float64) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_setFGSSigma(julia_to_cpp(cobj),julia_to_cpp(sigma)))
end
ximgproc_setFGSSigma(cobj::cv_Ptr{T}; sigma::Float64 = Float64(1.5)) where {T <: RICInterpolator} = ximgproc_setFGSSigma(cobj, sigma)

function ximgproc_getFGSSigma(cobj::cv_Ptr{T}) where {T <: RICInterpolator}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RICInterpolator_cv_ximgproc_RICInterpolator_getFGSSigma(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{RFFeatureGetter}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{RFFeatureGetter}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_getFeatures(cobj::cv_Ptr{T}, src::InputArray, features::InputArray, gnrmRad::Int64, gsmthRad::Int64, shrink::Int64, outNum::Int64, gradNum::Int64) where {T <: RFFeatureGetter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RFFeatureGetter_cv_ximgproc_RFFeatureGetter_getFeatures(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(features),julia_to_cpp(gnrmRad),julia_to_cpp(gsmthRad),julia_to_cpp(shrink),julia_to_cpp(outNum),julia_to_cpp(gradNum)))
end
function Base.getproperty(m::cv_Ptr{StructuredEdgeDetection}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{StructuredEdgeDetection}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_detectEdges(cobj::cv_Ptr{T}, src::InputArray, dst::InputArray) where {T <: StructuredEdgeDetection}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_StructuredEdgeDetection_cv_ximgproc_StructuredEdgeDetection_detectEdges(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
ximgproc_detectEdges(cobj::cv_Ptr{T}, src::InputArray; dst::InputArray = (CxxMat())) where {T <: StructuredEdgeDetection} = ximgproc_detectEdges(cobj, src, dst)

function ximgproc_computeOrientation(cobj::cv_Ptr{T}, src::InputArray, dst::InputArray) where {T <: StructuredEdgeDetection}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_StructuredEdgeDetection_cv_ximgproc_StructuredEdgeDetection_computeOrientation(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
ximgproc_computeOrientation(cobj::cv_Ptr{T}, src::InputArray; dst::InputArray = (CxxMat())) where {T <: StructuredEdgeDetection} = ximgproc_computeOrientation(cobj, src, dst)

function ximgproc_edgesNms(cobj::cv_Ptr{T}, edge_image::InputArray, orientation_image::InputArray, dst::InputArray, r::Int64, s::Int64, m::Float64, isParallel::Bool) where {T <: StructuredEdgeDetection}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_StructuredEdgeDetection_cv_ximgproc_StructuredEdgeDetection_edgesNms(julia_to_cpp(cobj),julia_to_cpp(edge_image),julia_to_cpp(orientation_image),julia_to_cpp(dst),julia_to_cpp(r),julia_to_cpp(s),julia_to_cpp(m),julia_to_cpp(isParallel)))
end
ximgproc_edgesNms(cobj::cv_Ptr{T}, edge_image::InputArray, orientation_image::InputArray; dst::InputArray = (CxxMat()), r::Int64 = Int64(2), s::Int64 = Int64(0), m::Float64 = Float64(1), isParallel::Bool = (true)) where {T <: StructuredEdgeDetection} = ximgproc_edgesNms(cobj, edge_image, orientation_image, dst, r, s, m, isParallel)
function Base.getproperty(m::cv_Ptr{EdgeBoxes}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{EdgeBoxes}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_getBoundingBoxes(cobj::cv_Ptr{T}, edge_map::InputArray, orientation_map::InputArray, scores::InputArray) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getBoundingBoxes(julia_to_cpp(cobj),julia_to_cpp(edge_map),julia_to_cpp(orientation_map),julia_to_cpp(scores)))
end
ximgproc_getBoundingBoxes(cobj::cv_Ptr{T}, edge_map::InputArray, orientation_map::InputArray; scores::InputArray = (CxxMat())) where {T <: EdgeBoxes} = ximgproc_getBoundingBoxes(cobj, edge_map, orientation_map, scores)

function ximgproc_getAlpha(cobj::cv_Ptr{T}) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getAlpha(julia_to_cpp(cobj)))
end

function ximgproc_setAlpha(cobj::cv_Ptr{T}, value::Float64) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_setAlpha(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function ximgproc_getBeta(cobj::cv_Ptr{T}) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getBeta(julia_to_cpp(cobj)))
end

function ximgproc_setBeta(cobj::cv_Ptr{T}, value::Float64) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_setBeta(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function ximgproc_getEta(cobj::cv_Ptr{T}) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getEta(julia_to_cpp(cobj)))
end

function ximgproc_setEta(cobj::cv_Ptr{T}, value::Float64) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_setEta(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function ximgproc_getMinScore(cobj::cv_Ptr{T}) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getMinScore(julia_to_cpp(cobj)))
end

function ximgproc_setMinScore(cobj::cv_Ptr{T}, value::Float64) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_setMinScore(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function ximgproc_getMaxBoxes(cobj::cv_Ptr{T}) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getMaxBoxes(julia_to_cpp(cobj)))
end

function ximgproc_setMaxBoxes(cobj::cv_Ptr{T}, value::Int64) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_setMaxBoxes(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function ximgproc_getEdgeMinMag(cobj::cv_Ptr{T}) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getEdgeMinMag(julia_to_cpp(cobj)))
end

function ximgproc_setEdgeMinMag(cobj::cv_Ptr{T}, value::Float64) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_setEdgeMinMag(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function ximgproc_getEdgeMergeThr(cobj::cv_Ptr{T}) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getEdgeMergeThr(julia_to_cpp(cobj)))
end

function ximgproc_setEdgeMergeThr(cobj::cv_Ptr{T}, value::Float64) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_setEdgeMergeThr(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function ximgproc_getClusterMinMag(cobj::cv_Ptr{T}) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getClusterMinMag(julia_to_cpp(cobj)))
end

function ximgproc_setClusterMinMag(cobj::cv_Ptr{T}, value::Float64) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_setClusterMinMag(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function ximgproc_getMaxAspectRatio(cobj::cv_Ptr{T}) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getMaxAspectRatio(julia_to_cpp(cobj)))
end

function ximgproc_setMaxAspectRatio(cobj::cv_Ptr{T}, value::Float64) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_setMaxAspectRatio(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function ximgproc_getMinBoxArea(cobj::cv_Ptr{T}) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getMinBoxArea(julia_to_cpp(cobj)))
end

function ximgproc_setMinBoxArea(cobj::cv_Ptr{T}, value::Float64) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_setMinBoxArea(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function ximgproc_getGamma(cobj::cv_Ptr{T}) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getGamma(julia_to_cpp(cobj)))
end

function ximgproc_setGamma(cobj::cv_Ptr{T}, value::Float64) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_setGamma(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function ximgproc_getKappa(cobj::cv_Ptr{T}) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_getKappa(julia_to_cpp(cobj)))
end

function ximgproc_setKappa(cobj::cv_Ptr{T}, value::Float64) where {T <: EdgeBoxes}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeBoxes_cv_ximgproc_EdgeBoxes_setKappa(julia_to_cpp(cobj),julia_to_cpp(value)))
end
function Base.getproperty(m::cv_Ptr{EdgeDrawing}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{EdgeDrawing}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_detectEdges(cobj::cv_Ptr{T}, src::InputArray) where {T <: EdgeDrawing}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeDrawing_cv_ximgproc_EdgeDrawing_detectEdges(julia_to_cpp(cobj),julia_to_cpp(src)))
end

function ximgproc_getEdgeImage(cobj::cv_Ptr{T}, dst::InputArray) where {T <: EdgeDrawing}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeDrawing_cv_ximgproc_EdgeDrawing_getEdgeImage(julia_to_cpp(cobj),julia_to_cpp(dst)))
end
ximgproc_getEdgeImage(cobj::cv_Ptr{T}; dst::InputArray = (CxxMat())) where {T <: EdgeDrawing} = ximgproc_getEdgeImage(cobj, dst)

function ximgproc_getGradientImage(cobj::cv_Ptr{T}, dst::InputArray) where {T <: EdgeDrawing}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeDrawing_cv_ximgproc_EdgeDrawing_getGradientImage(julia_to_cpp(cobj),julia_to_cpp(dst)))
end
ximgproc_getGradientImage(cobj::cv_Ptr{T}; dst::InputArray = (CxxMat())) where {T <: EdgeDrawing} = ximgproc_getGradientImage(cobj, dst)

function ximgproc_getSegments(cobj::cv_Ptr{T}) where {T <: EdgeDrawing}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeDrawing_cv_ximgproc_EdgeDrawing_getSegments(julia_to_cpp(cobj)))
end

function ximgproc_getSegmentIndicesOfLines(cobj::cv_Ptr{T}) where {T <: EdgeDrawing}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeDrawing_cv_ximgproc_EdgeDrawing_getSegmentIndicesOfLines(julia_to_cpp(cobj)))
end

function ximgproc_detectLines(cobj::cv_Ptr{T}, lines::InputArray) where {T <: EdgeDrawing}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeDrawing_cv_ximgproc_EdgeDrawing_detectLines(julia_to_cpp(cobj),julia_to_cpp(lines)))
end
ximgproc_detectLines(cobj::cv_Ptr{T}; lines::InputArray = (CxxMat())) where {T <: EdgeDrawing} = ximgproc_detectLines(cobj, lines)

function ximgproc_detectEllipses(cobj::cv_Ptr{T}, ellipses::InputArray) where {T <: EdgeDrawing}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeDrawing_cv_ximgproc_EdgeDrawing_detectEllipses(julia_to_cpp(cobj),julia_to_cpp(ellipses)))
end
ximgproc_detectEllipses(cobj::cv_Ptr{T}; ellipses::InputArray = (CxxMat())) where {T <: EdgeDrawing} = ximgproc_detectEllipses(cobj, ellipses)

function ximgproc_setParams(cobj::cv_Ptr{T}, parameters::EdgeDrawing_Params) where {T <: EdgeDrawing}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeDrawing_cv_ximgproc_EdgeDrawing_setParams(julia_to_cpp(cobj),julia_to_cpp(parameters)))
end
function Base.getproperty(m::EdgeDrawing_Params, s::Symbol)
    if s==:PFmode
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_PFmode(m))
    end
    if s==:EdgeDetectionOperator
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_EdgeDetectionOperator(m))
    end
    if s==:GradientThresholdValue
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_GradientThresholdValue(m))
    end
    if s==:AnchorThresholdValue
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_AnchorThresholdValue(m))
    end
    if s==:ScanInterval
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_ScanInterval(m))
    end
    if s==:MinPathLength
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_MinPathLength(m))
    end
    if s==:Sigma
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_Sigma(m))
    end
    if s==:SumFlag
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_SumFlag(m))
    end
    if s==:NFAValidation
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_NFAValidation(m))
    end
    if s==:MinLineLength
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_MinLineLength(m))
    end
    if s==:MaxDistanceBetweenTwoLines
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_MaxDistanceBetweenTwoLines(m))
    end
    if s==:LineFitErrorThreshold
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_LineFitErrorThreshold(m))
    end
    if s==:MaxErrorThreshold
        return cpp_to_julia(jlopencv_EdgeDrawing_Params_get_MaxErrorThreshold(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::EdgeDrawing_Params, s::Symbol, v)
    if s==:PFmode
        jlopencv_EdgeDrawing_Params_set_PFmode(m, julia_to_cpp(v))
        return v
    end
    if s==:EdgeDetectionOperator
        jlopencv_EdgeDrawing_Params_set_EdgeDetectionOperator(m, julia_to_cpp(v))
        return v
    end
    if s==:GradientThresholdValue
        jlopencv_EdgeDrawing_Params_set_GradientThresholdValue(m, julia_to_cpp(v))
        return v
    end
    if s==:AnchorThresholdValue
        jlopencv_EdgeDrawing_Params_set_AnchorThresholdValue(m, julia_to_cpp(v))
        return v
    end
    if s==:ScanInterval
        jlopencv_EdgeDrawing_Params_set_ScanInterval(m, julia_to_cpp(v))
        return v
    end
    if s==:MinPathLength
        jlopencv_EdgeDrawing_Params_set_MinPathLength(m, julia_to_cpp(v))
        return v
    end
    if s==:Sigma
        jlopencv_EdgeDrawing_Params_set_Sigma(m, julia_to_cpp(v))
        return v
    end
    if s==:SumFlag
        jlopencv_EdgeDrawing_Params_set_SumFlag(m, julia_to_cpp(v))
        return v
    end
    if s==:NFAValidation
        jlopencv_EdgeDrawing_Params_set_NFAValidation(m, julia_to_cpp(v))
        return v
    end
    if s==:MinLineLength
        jlopencv_EdgeDrawing_Params_set_MinLineLength(m, julia_to_cpp(v))
        return v
    end
    if s==:MaxDistanceBetweenTwoLines
        jlopencv_EdgeDrawing_Params_set_MaxDistanceBetweenTwoLines(m, julia_to_cpp(v))
        return v
    end
    if s==:LineFitErrorThreshold
        jlopencv_EdgeDrawing_Params_set_LineFitErrorThreshold(m, julia_to_cpp(v))
        return v
    end
    if s==:MaxErrorThreshold
        jlopencv_EdgeDrawing_Params_set_MaxErrorThreshold(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function ximgproc_read(cobj::EdgeDrawing_Params, fn::FileNode)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeDrawing_Params_cv_ximgproc_EdgeDrawing_Params_read(julia_to_cpp(cobj),julia_to_cpp(fn)))
end

function ximgproc_write(cobj::EdgeDrawing_Params, fs::FileStorage)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeDrawing_Params_cv_ximgproc_EdgeDrawing_Params_write(julia_to_cpp(cobj),julia_to_cpp(fs)))
end

function ximgproc_Params()
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_EdgeDrawing_Params_cv_ximgproc_EdgeDrawing_Params_Params())
end
function Base.getproperty(m::cv_Ptr{SuperpixelSEEDS}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SuperpixelSEEDS}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_getNumberOfSuperpixels(cobj::cv_Ptr{T}) where {T <: SuperpixelSEEDS}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelSEEDS_cv_ximgproc_SuperpixelSEEDS_getNumberOfSuperpixels(julia_to_cpp(cobj)))
end

function ximgproc_iterate(cobj::cv_Ptr{T}, img::InputArray, num_iterations::Int64) where {T <: SuperpixelSEEDS}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelSEEDS_cv_ximgproc_SuperpixelSEEDS_iterate(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(num_iterations)))
end
ximgproc_iterate(cobj::cv_Ptr{T}, img::InputArray; num_iterations::Int64 = Int64(4)) where {T <: SuperpixelSEEDS} = ximgproc_iterate(cobj, img, num_iterations)

function ximgproc_getLabels(cobj::cv_Ptr{T}, labels_out::InputArray) where {T <: SuperpixelSEEDS}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelSEEDS_cv_ximgproc_SuperpixelSEEDS_getLabels(julia_to_cpp(cobj),julia_to_cpp(labels_out)))
end
ximgproc_getLabels(cobj::cv_Ptr{T}; labels_out::InputArray = (CxxMat())) where {T <: SuperpixelSEEDS} = ximgproc_getLabels(cobj, labels_out)

function ximgproc_getLabelContourMask(cobj::cv_Ptr{T}, image::InputArray, thick_line::Bool) where {T <: SuperpixelSEEDS}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelSEEDS_cv_ximgproc_SuperpixelSEEDS_getLabelContourMask(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(thick_line)))
end
ximgproc_getLabelContourMask(cobj::cv_Ptr{T}; image::InputArray = (CxxMat()), thick_line::Bool = (false)) where {T <: SuperpixelSEEDS} = ximgproc_getLabelContourMask(cobj, image, thick_line)
function Base.getproperty(m::cv_Ptr{SuperpixelSLIC}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SuperpixelSLIC}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_getNumberOfSuperpixels(cobj::cv_Ptr{T}) where {T <: SuperpixelSLIC}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelSLIC_cv_ximgproc_SuperpixelSLIC_getNumberOfSuperpixels(julia_to_cpp(cobj)))
end

function ximgproc_iterate(cobj::cv_Ptr{T}, num_iterations::Int64) where {T <: SuperpixelSLIC}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelSLIC_cv_ximgproc_SuperpixelSLIC_iterate(julia_to_cpp(cobj),julia_to_cpp(num_iterations)))
end
ximgproc_iterate(cobj::cv_Ptr{T}; num_iterations::Int64 = Int64(10)) where {T <: SuperpixelSLIC} = ximgproc_iterate(cobj, num_iterations)

function ximgproc_getLabels(cobj::cv_Ptr{T}, labels_out::InputArray) where {T <: SuperpixelSLIC}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelSLIC_cv_ximgproc_SuperpixelSLIC_getLabels(julia_to_cpp(cobj),julia_to_cpp(labels_out)))
end
ximgproc_getLabels(cobj::cv_Ptr{T}; labels_out::InputArray = (CxxMat())) where {T <: SuperpixelSLIC} = ximgproc_getLabels(cobj, labels_out)

function ximgproc_getLabelContourMask(cobj::cv_Ptr{T}, image::InputArray, thick_line::Bool) where {T <: SuperpixelSLIC}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelSLIC_cv_ximgproc_SuperpixelSLIC_getLabelContourMask(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(thick_line)))
end
ximgproc_getLabelContourMask(cobj::cv_Ptr{T}; image::InputArray = (CxxMat()), thick_line::Bool = (true)) where {T <: SuperpixelSLIC} = ximgproc_getLabelContourMask(cobj, image, thick_line)

function ximgproc_enforceLabelConnectivity(cobj::cv_Ptr{T}, min_element_size::Int64) where {T <: SuperpixelSLIC}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelSLIC_cv_ximgproc_SuperpixelSLIC_enforceLabelConnectivity(julia_to_cpp(cobj),julia_to_cpp(min_element_size)))
end
ximgproc_enforceLabelConnectivity(cobj::cv_Ptr{T}; min_element_size::Int64 = Int64(25)) where {T <: SuperpixelSLIC} = ximgproc_enforceLabelConnectivity(cobj, min_element_size)
function Base.getproperty(m::cv_Ptr{SuperpixelLSC}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SuperpixelLSC}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_getNumberOfSuperpixels(cobj::cv_Ptr{T}) where {T <: SuperpixelLSC}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelLSC_cv_ximgproc_SuperpixelLSC_getNumberOfSuperpixels(julia_to_cpp(cobj)))
end

function ximgproc_iterate(cobj::cv_Ptr{T}, num_iterations::Int64) where {T <: SuperpixelLSC}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelLSC_cv_ximgproc_SuperpixelLSC_iterate(julia_to_cpp(cobj),julia_to_cpp(num_iterations)))
end
ximgproc_iterate(cobj::cv_Ptr{T}; num_iterations::Int64 = Int64(10)) where {T <: SuperpixelLSC} = ximgproc_iterate(cobj, num_iterations)

function ximgproc_getLabels(cobj::cv_Ptr{T}, labels_out::InputArray) where {T <: SuperpixelLSC}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelLSC_cv_ximgproc_SuperpixelLSC_getLabels(julia_to_cpp(cobj),julia_to_cpp(labels_out)))
end
ximgproc_getLabels(cobj::cv_Ptr{T}; labels_out::InputArray = (CxxMat())) where {T <: SuperpixelLSC} = ximgproc_getLabels(cobj, labels_out)

function ximgproc_getLabelContourMask(cobj::cv_Ptr{T}, image::InputArray, thick_line::Bool) where {T <: SuperpixelLSC}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelLSC_cv_ximgproc_SuperpixelLSC_getLabelContourMask(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(thick_line)))
end
ximgproc_getLabelContourMask(cobj::cv_Ptr{T}; image::InputArray = (CxxMat()), thick_line::Bool = (true)) where {T <: SuperpixelLSC} = ximgproc_getLabelContourMask(cobj, image, thick_line)

function ximgproc_enforceLabelConnectivity(cobj::cv_Ptr{T}, min_element_size::Int64) where {T <: SuperpixelLSC}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_SuperpixelLSC_cv_ximgproc_SuperpixelLSC_enforceLabelConnectivity(julia_to_cpp(cobj),julia_to_cpp(min_element_size)))
end
ximgproc_enforceLabelConnectivity(cobj::cv_Ptr{T}; min_element_size::Int64 = Int64(25)) where {T <: SuperpixelLSC} = ximgproc_enforceLabelConnectivity(cobj, min_element_size)
function Base.getproperty(m::cv_Ptr{FastLineDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{FastLineDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_detect(cobj::cv_Ptr{T}, image::InputArray, lines::InputArray) where {T <: FastLineDetector}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_FastLineDetector_cv_ximgproc_FastLineDetector_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(lines)))
end
ximgproc_detect(cobj::cv_Ptr{T}, image::InputArray; lines::InputArray = (CxxMat())) where {T <: FastLineDetector} = ximgproc_detect(cobj, image, lines)

function ximgproc_drawSegments(cobj::cv_Ptr{T}, image::InputArray, lines::InputArray, draw_arrow::Bool, linecolor::Scalar, linethickness::Int64) where {T <: FastLineDetector}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_FastLineDetector_cv_ximgproc_FastLineDetector_drawSegments(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(lines),julia_to_cpp(draw_arrow),julia_to_cpp(linecolor),julia_to_cpp(linethickness)))
end
ximgproc_drawSegments(cobj::cv_Ptr{T}, image::InputArray, lines::InputArray; draw_arrow::Bool = (false), linecolor::Scalar = (cpp_to_julia(ScalarOWSGWSGYbbP())), linethickness::Int64 = Int64(1)) where {T <: FastLineDetector} = ximgproc_drawSegments(cobj, image, lines, draw_arrow, linecolor, linethickness)
function Base.getproperty(m::cv_Ptr{ContourFitting}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{ContourFitting}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_estimateTransformation(cobj::cv_Ptr{T}, src::InputArray, dst::InputArray, alphaPhiST::InputArray, fdContour::Bool) where {T <: ContourFitting}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_ContourFitting_cv_ximgproc_ContourFitting_estimateTransformation(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alphaPhiST),julia_to_cpp(fdContour)))
end
ximgproc_estimateTransformation(cobj::cv_Ptr{T}, src::InputArray, dst::InputArray; alphaPhiST::InputArray = (CxxMat()), fdContour::Bool = (false)) where {T <: ContourFitting} = ximgproc_estimateTransformation(cobj, src, dst, alphaPhiST, fdContour)

function ximgproc_setCtrSize(cobj::cv_Ptr{T}, n::Int64) where {T <: ContourFitting}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_ContourFitting_cv_ximgproc_ContourFitting_setCtrSize(julia_to_cpp(cobj),julia_to_cpp(n)))
end

function ximgproc_setFDSize(cobj::cv_Ptr{T}, n::Int64) where {T <: ContourFitting}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_ContourFitting_cv_ximgproc_ContourFitting_setFDSize(julia_to_cpp(cobj),julia_to_cpp(n)))
end

function ximgproc_getCtrSize(cobj::cv_Ptr{T}) where {T <: ContourFitting}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_ContourFitting_cv_ximgproc_ContourFitting_getCtrSize(julia_to_cpp(cobj)))
end

function ximgproc_getFDSize(cobj::cv_Ptr{T}) where {T <: ContourFitting}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_ContourFitting_cv_ximgproc_ContourFitting_getFDSize(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{RidgeDetectionFilter}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{RidgeDetectionFilter}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_getRidgeFilteredImage(cobj::cv_Ptr{T}, _img::InputArray, out::InputArray) where {T <: RidgeDetectionFilter}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RidgeDetectionFilter_cv_ximgproc_RidgeDetectionFilter_getRidgeFilteredImage(julia_to_cpp(cobj),julia_to_cpp(_img),julia_to_cpp(out)))
end
ximgproc_getRidgeFilteredImage(cobj::cv_Ptr{T}, _img::InputArray; out::InputArray = (CxxMat())) where {T <: RidgeDetectionFilter} = ximgproc_getRidgeFilteredImage(cobj, _img, out)
function Base.getproperty(m::cv_Ptr{ScanSegment}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{ScanSegment}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_getNumberOfSuperpixels(cobj::cv_Ptr{T}) where {T <: ScanSegment}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_ScanSegment_cv_ximgproc_ScanSegment_getNumberOfSuperpixels(julia_to_cpp(cobj)))
end

function ximgproc_iterate(cobj::cv_Ptr{T}, img::InputArray) where {T <: ScanSegment}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_ScanSegment_cv_ximgproc_ScanSegment_iterate(julia_to_cpp(cobj),julia_to_cpp(img)))
end

function ximgproc_getLabels(cobj::cv_Ptr{T}, labels_out::InputArray) where {T <: ScanSegment}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_ScanSegment_cv_ximgproc_ScanSegment_getLabels(julia_to_cpp(cobj),julia_to_cpp(labels_out)))
end
ximgproc_getLabels(cobj::cv_Ptr{T}; labels_out::InputArray = (CxxMat())) where {T <: ScanSegment} = ximgproc_getLabels(cobj, labels_out)

function ximgproc_getLabelContourMask(cobj::cv_Ptr{T}, image::InputArray, thick_line::Bool) where {T <: ScanSegment}
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_ScanSegment_cv_ximgproc_ScanSegment_getLabelContourMask(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(thick_line)))
end
ximgproc_getLabelContourMask(cobj::cv_Ptr{T}; image::InputArray = (CxxMat()), thick_line::Bool = (false)) where {T <: ScanSegment} = ximgproc_getLabelContourMask(cobj, image, thick_line)

function ximgproc_niBlackThreshold(_src::InputArray, maxValue::Float64, type::Int64, blockSize::Int64, k::Float64, _dst::InputArray, binarizationMethod::Int64, r::Float64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_niBlackThreshold(julia_to_cpp(_src),julia_to_cpp(maxValue),julia_to_cpp(type),julia_to_cpp(blockSize),julia_to_cpp(k),julia_to_cpp(_dst),julia_to_cpp(binarizationMethod),julia_to_cpp(r)))
end
ximgproc_niBlackThreshold(_src::InputArray, maxValue::Float64, type::Int64, blockSize::Int64, k::Float64; _dst::InputArray = (CxxMat()), binarizationMethod::Int64 = Int64(cpp_to_julia(jlopencv_default_BINARIZATIONRNIBLACK())), r::Float64 = Float64(128)) = ximgproc_niBlackThreshold(_src, maxValue, type, blockSize, k, _dst, binarizationMethod, r)

function ximgproc_thinning(src::InputArray, dst::InputArray, thinningType::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_thinning(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(thinningType)))
end
ximgproc_thinning(src::InputArray; dst::InputArray = (CxxMat()), thinningType::Int64 = Int64(cpp_to_julia(jlopencv_default_THINNINGRZHANGSUEN()))) = ximgproc_thinning(src, dst, thinningType)

function ximgproc_anisotropicDiffusion(src::InputArray, alpha::Float64, K::Float64, niters::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_anisotropicDiffusion(julia_to_cpp(src),julia_to_cpp(alpha),julia_to_cpp(K),julia_to_cpp(niters),julia_to_cpp(dst)))
end
ximgproc_anisotropicDiffusion(src::InputArray, alpha::Float64, K::Float64, niters::Int64; dst::InputArray = (CxxMat())) = ximgproc_anisotropicDiffusion(src, alpha, K, niters, dst)

function ximgproc_createDTFilter(guide::InputArray, sigmaSpatial::Float64, sigmaColor::Float64, mode::Int64, numIters::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createDTFilter(julia_to_cpp(guide),julia_to_cpp(sigmaSpatial),julia_to_cpp(sigmaColor),julia_to_cpp(mode),julia_to_cpp(numIters)))
end
ximgproc_createDTFilter(guide::InputArray, sigmaSpatial::Float64, sigmaColor::Float64; mode::Int64 = Int64(cpp_to_julia(jlopencv_default_DTFRNC())), numIters::Int64 = Int64(3)) = ximgproc_createDTFilter(guide, sigmaSpatial, sigmaColor, mode, numIters)

function ximgproc_dtFilter(guide::InputArray, src::InputArray, sigmaSpatial::Float64, sigmaColor::Float64, dst::InputArray, mode::Int64, numIters::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_dtFilter(julia_to_cpp(guide),julia_to_cpp(src),julia_to_cpp(sigmaSpatial),julia_to_cpp(sigmaColor),julia_to_cpp(dst),julia_to_cpp(mode),julia_to_cpp(numIters)))
end
ximgproc_dtFilter(guide::InputArray, src::InputArray, sigmaSpatial::Float64, sigmaColor::Float64; dst::InputArray = (CxxMat()), mode::Int64 = Int64(cpp_to_julia(jlopencv_default_DTFRNC())), numIters::Int64 = Int64(3)) = ximgproc_dtFilter(guide, src, sigmaSpatial, sigmaColor, dst, mode, numIters)

function ximgproc_createGuidedFilter(guide::InputArray, radius::Int64, eps::Float64, scale::Float64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createGuidedFilter(julia_to_cpp(guide),julia_to_cpp(radius),julia_to_cpp(eps),julia_to_cpp(scale)))
end
ximgproc_createGuidedFilter(guide::InputArray, radius::Int64, eps::Float64; scale::Float64 = Float64(1.0)) = ximgproc_createGuidedFilter(guide, radius, eps, scale)

function ximgproc_guidedFilter(guide::InputArray, src::InputArray, radius::Int64, eps::Float64, dst::InputArray, dDepth::Int64, scale::Float64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_guidedFilter(julia_to_cpp(guide),julia_to_cpp(src),julia_to_cpp(radius),julia_to_cpp(eps),julia_to_cpp(dst),julia_to_cpp(dDepth),julia_to_cpp(scale)))
end
ximgproc_guidedFilter(guide::InputArray, src::InputArray, radius::Int64, eps::Float64; dst::InputArray = (CxxMat()), dDepth::Int64 = Int64(-1), scale::Float64 = Float64(1.0)) = ximgproc_guidedFilter(guide, src, radius, eps, dst, dDepth, scale)

function ximgproc_AdaptiveManifoldFilter_create()
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_AdaptiveManifoldFilter_create())
end

function ximgproc_createAMFilter(sigma_s::Float64, sigma_r::Float64, adjust_outliers::Bool)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createAMFilter(julia_to_cpp(sigma_s),julia_to_cpp(sigma_r),julia_to_cpp(adjust_outliers)))
end
ximgproc_createAMFilter(sigma_s::Float64, sigma_r::Float64; adjust_outliers::Bool = (false)) = ximgproc_createAMFilter(sigma_s, sigma_r, adjust_outliers)

function ximgproc_amFilter(joint::InputArray, src::InputArray, sigma_s::Float64, sigma_r::Float64, dst::InputArray, adjust_outliers::Bool)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_amFilter(julia_to_cpp(joint),julia_to_cpp(src),julia_to_cpp(sigma_s),julia_to_cpp(sigma_r),julia_to_cpp(dst),julia_to_cpp(adjust_outliers)))
end
ximgproc_amFilter(joint::InputArray, src::InputArray, sigma_s::Float64, sigma_r::Float64; dst::InputArray = (CxxMat()), adjust_outliers::Bool = (false)) = ximgproc_amFilter(joint, src, sigma_s, sigma_r, dst, adjust_outliers)

function ximgproc_jointBilateralFilter(joint::InputArray, src::InputArray, d::Int64, sigmaColor::Float64, sigmaSpace::Float64, dst::InputArray, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_jointBilateralFilter(julia_to_cpp(joint),julia_to_cpp(src),julia_to_cpp(d),julia_to_cpp(sigmaColor),julia_to_cpp(sigmaSpace),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
ximgproc_jointBilateralFilter(joint::InputArray, src::InputArray, d::Int64, sigmaColor::Float64, sigmaSpace::Float64; dst::InputArray = (CxxMat()), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = ximgproc_jointBilateralFilter(joint, src, d, sigmaColor, sigmaSpace, dst, borderType)

function ximgproc_bilateralTextureFilter(src::InputArray, dst::InputArray, fr::Int64, numIter::Int64, sigmaAlpha::Float64, sigmaAvg::Float64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_bilateralTextureFilter(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(fr),julia_to_cpp(numIter),julia_to_cpp(sigmaAlpha),julia_to_cpp(sigmaAvg)))
end
ximgproc_bilateralTextureFilter(src::InputArray; dst::InputArray = (CxxMat()), fr::Int64 = Int64(3), numIter::Int64 = Int64(1), sigmaAlpha::Float64 = Float64(-1.), sigmaAvg::Float64 = Float64(-1.)) = ximgproc_bilateralTextureFilter(src, dst, fr, numIter, sigmaAlpha, sigmaAvg)

function ximgproc_rollingGuidanceFilter(src::InputArray, dst::InputArray, d::Int64, sigmaColor::Float64, sigmaSpace::Float64, numOfIter::Int64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_rollingGuidanceFilter(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(d),julia_to_cpp(sigmaColor),julia_to_cpp(sigmaSpace),julia_to_cpp(numOfIter),julia_to_cpp(borderType)))
end
ximgproc_rollingGuidanceFilter(src::InputArray; dst::InputArray = (CxxMat()), d::Int64 = Int64(-1), sigmaColor::Float64 = Float64(25), sigmaSpace::Float64 = Float64(3), numOfIter::Int64 = Int64(4), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = ximgproc_rollingGuidanceFilter(src, dst, d, sigmaColor, sigmaSpace, numOfIter, borderType)

function ximgproc_createFastBilateralSolverFilter(guide::InputArray, sigma_spatial::Float64, sigma_luma::Float64, sigma_chroma::Float64, lambda::Float64, num_iter::Int64, max_tol::Float64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createFastBilateralSolverFilter(julia_to_cpp(guide),julia_to_cpp(sigma_spatial),julia_to_cpp(sigma_luma),julia_to_cpp(sigma_chroma),julia_to_cpp(lambda),julia_to_cpp(num_iter),julia_to_cpp(max_tol)))
end
ximgproc_createFastBilateralSolverFilter(guide::InputArray, sigma_spatial::Float64, sigma_luma::Float64, sigma_chroma::Float64; lambda::Float64 = Float64(128.0), num_iter::Int64 = Int64(25), max_tol::Float64 = Float64(1e-5)) = ximgproc_createFastBilateralSolverFilter(guide, sigma_spatial, sigma_luma, sigma_chroma, lambda, num_iter, max_tol)

function ximgproc_fastBilateralSolverFilter(guide::InputArray, src::InputArray, confidence::InputArray, dst::InputArray, sigma_spatial::Float64, sigma_luma::Float64, sigma_chroma::Float64, lambda::Float64, num_iter::Int64, max_tol::Float64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_fastBilateralSolverFilter(julia_to_cpp(guide),julia_to_cpp(src),julia_to_cpp(confidence),julia_to_cpp(dst),julia_to_cpp(sigma_spatial),julia_to_cpp(sigma_luma),julia_to_cpp(sigma_chroma),julia_to_cpp(lambda),julia_to_cpp(num_iter),julia_to_cpp(max_tol)))
end
ximgproc_fastBilateralSolverFilter(guide::InputArray, src::InputArray, confidence::InputArray; dst::InputArray = (CxxMat()), sigma_spatial::Float64 = Float64(8), sigma_luma::Float64 = Float64(8), sigma_chroma::Float64 = Float64(8), lambda::Float64 = Float64(128.0), num_iter::Int64 = Int64(25), max_tol::Float64 = Float64(1e-5)) = ximgproc_fastBilateralSolverFilter(guide, src, confidence, dst, sigma_spatial, sigma_luma, sigma_chroma, lambda, num_iter, max_tol)

function ximgproc_createFastGlobalSmootherFilter(guide::InputArray, lambda::Float64, sigma_color::Float64, lambda_attenuation::Float64, num_iter::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createFastGlobalSmootherFilter(julia_to_cpp(guide),julia_to_cpp(lambda),julia_to_cpp(sigma_color),julia_to_cpp(lambda_attenuation),julia_to_cpp(num_iter)))
end
ximgproc_createFastGlobalSmootherFilter(guide::InputArray, lambda::Float64, sigma_color::Float64; lambda_attenuation::Float64 = Float64(0.25), num_iter::Int64 = Int64(3)) = ximgproc_createFastGlobalSmootherFilter(guide, lambda, sigma_color, lambda_attenuation, num_iter)

function ximgproc_fastGlobalSmootherFilter(guide::InputArray, src::InputArray, lambda::Float64, sigma_color::Float64, dst::InputArray, lambda_attenuation::Float64, num_iter::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_fastGlobalSmootherFilter(julia_to_cpp(guide),julia_to_cpp(src),julia_to_cpp(lambda),julia_to_cpp(sigma_color),julia_to_cpp(dst),julia_to_cpp(lambda_attenuation),julia_to_cpp(num_iter)))
end
ximgproc_fastGlobalSmootherFilter(guide::InputArray, src::InputArray, lambda::Float64, sigma_color::Float64; dst::InputArray = (CxxMat()), lambda_attenuation::Float64 = Float64(0.25), num_iter::Int64 = Int64(3)) = ximgproc_fastGlobalSmootherFilter(guide, src, lambda, sigma_color, dst, lambda_attenuation, num_iter)

function ximgproc_l0Smooth(src::InputArray, dst::InputArray, lambda::Float64, kappa::Float64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_l0Smooth(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(lambda),julia_to_cpp(kappa)))
end
ximgproc_l0Smooth(src::InputArray; dst::InputArray = (CxxMat()), lambda::Float64 = Float64(0.02), kappa::Float64 = Float64(2.0)) = ximgproc_l0Smooth(src, dst, lambda, kappa)

function ximgproc_createDisparityWLSFilter(matcher_left::cv_Ptr{<:StereoMatcher})
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createDisparityWLSFilter(julia_to_cpp(matcher_left)))
end

function ximgproc_createRightMatcher(matcher_left::cv_Ptr{<:StereoMatcher})
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createRightMatcher(julia_to_cpp(matcher_left)))
end

function ximgproc_createDisparityWLSFilterGeneric(use_confidence::Bool)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createDisparityWLSFilterGeneric(julia_to_cpp(use_confidence)))
end

function ximgproc_readGT(src_path::String, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_readGT(julia_to_cpp(src_path),julia_to_cpp(dst)))
end
ximgproc_readGT(src_path::String; dst::InputArray = (CxxMat())) = ximgproc_readGT(src_path, dst)

function ximgproc_computeMSE(GT::InputArray, src::InputArray, ROI::Rect{Int32})
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_computeMSE(julia_to_cpp(GT),julia_to_cpp(src),julia_to_cpp(ROI)))
end

function ximgproc_computeBadPixelPercent(GT::InputArray, src::InputArray, ROI::Rect{Int32}, thresh::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_computeBadPixelPercent(julia_to_cpp(GT),julia_to_cpp(src),julia_to_cpp(ROI),julia_to_cpp(thresh)))
end
ximgproc_computeBadPixelPercent(GT::InputArray, src::InputArray, ROI::Rect{Int32}; thresh::Int64 = Int64(24)) = ximgproc_computeBadPixelPercent(GT, src, ROI, thresh)

function ximgproc_getDisparityVis(src::InputArray, dst::InputArray, scale::Float64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_getDisparityVis(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(scale)))
end
ximgproc_getDisparityVis(src::InputArray; dst::InputArray = (CxxMat()), scale::Float64 = Float64(1.0)) = ximgproc_getDisparityVis(src, dst, scale)

function ximgproc_createEdgeAwareInterpolator()
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createEdgeAwareInterpolator())
end

function ximgproc_createRICInterpolator()
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createRICInterpolator())
end

function ximgproc_createRFFeatureGetter()
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createRFFeatureGetter())
end

function ximgproc_createStructuredEdgeDetection(model::String, howToGetFeatures::cv_Ptr{<:RFFeatureGetter})
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createStructuredEdgeDetection(julia_to_cpp(model),julia_to_cpp(howToGetFeatures)))
end
ximgproc_createStructuredEdgeDetection(model::String; howToGetFeatures::cv_Ptr{<:RFFeatureGetter} = (cpp_to_julia(PtriRFFeatureGetterkOP()))) = ximgproc_createStructuredEdgeDetection(model, howToGetFeatures)

function ximgproc_createEdgeBoxes(alpha::Float64, beta::Float64, eta::Float64, minScore::Float64, maxBoxes::Int64, edgeMinMag::Float64, edgeMergeThr::Float64, clusterMinMag::Float64, maxAspectRatio::Float64, minBoxArea::Float64, gamma::Float64, kappa::Float64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createEdgeBoxes(julia_to_cpp(alpha),julia_to_cpp(beta),julia_to_cpp(eta),julia_to_cpp(minScore),julia_to_cpp(maxBoxes),julia_to_cpp(edgeMinMag),julia_to_cpp(edgeMergeThr),julia_to_cpp(clusterMinMag),julia_to_cpp(maxAspectRatio),julia_to_cpp(minBoxArea),julia_to_cpp(gamma),julia_to_cpp(kappa)))
end
ximgproc_createEdgeBoxes(; alpha::Float64 = Float64(0.65), beta::Float64 = Float64(0.75), eta::Float64 = Float64(1), minScore::Float64 = Float64(0.01), maxBoxes::Int64 = Int64(10000), edgeMinMag::Float64 = Float64(0.1), edgeMergeThr::Float64 = Float64(0.5), clusterMinMag::Float64 = Float64(0.5), maxAspectRatio::Float64 = Float64(3), minBoxArea::Float64 = Float64(1000), gamma::Float64 = Float64(2), kappa::Float64 = Float64(1.5)) = ximgproc_createEdgeBoxes(alpha, beta, eta, minScore, maxBoxes, edgeMinMag, edgeMergeThr, clusterMinMag, maxAspectRatio, minBoxArea, gamma, kappa)

function ximgproc_createEdgeDrawing()
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createEdgeDrawing())
end

function ximgproc_createSuperpixelSEEDS(image_width::Int64, image_height::Int64, image_channels::Int64, num_superpixels::Int64, num_levels::Int64, prior::Int64, histogram_bins::Int64, double_step::Bool)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createSuperpixelSEEDS(julia_to_cpp(image_width),julia_to_cpp(image_height),julia_to_cpp(image_channels),julia_to_cpp(num_superpixels),julia_to_cpp(num_levels),julia_to_cpp(prior),julia_to_cpp(histogram_bins),julia_to_cpp(double_step)))
end
ximgproc_createSuperpixelSEEDS(image_width::Int64, image_height::Int64, image_channels::Int64, num_superpixels::Int64, num_levels::Int64; prior::Int64 = Int64(2), histogram_bins::Int64 = Int64(5), double_step::Bool = (false)) = ximgproc_createSuperpixelSEEDS(image_width, image_height, image_channels, num_superpixels, num_levels, prior, histogram_bins, double_step)

function ximgproc_FastHoughTransform(src::InputArray, dstMatDepth::Int64, dst::InputArray, angleRange::Int64, op::Int64, makeSkew::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_FastHoughTransform(julia_to_cpp(src),julia_to_cpp(dstMatDepth),julia_to_cpp(dst),julia_to_cpp(angleRange),julia_to_cpp(op),julia_to_cpp(makeSkew)))
end
ximgproc_FastHoughTransform(src::InputArray, dstMatDepth::Int64; dst::InputArray = (CxxMat()), angleRange::Int64 = Int64(cpp_to_julia(jlopencv_default_ARORZXbRXZb())), op::Int64 = Int64(cpp_to_julia(jlopencv_default_FHTRADD())), makeSkew::Int64 = Int64(cpp_to_julia(jlopencv_default_HDORDESKEW()))) = ximgproc_FastHoughTransform(src, dstMatDepth, dst, angleRange, op, makeSkew)

function ximgproc_covarianceEstimation(src::InputArray, windowRows::Int64, windowCols::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_covarianceEstimation(julia_to_cpp(src),julia_to_cpp(windowRows),julia_to_cpp(windowCols),julia_to_cpp(dst)))
end
ximgproc_covarianceEstimation(src::InputArray, windowRows::Int64, windowCols::Int64; dst::InputArray = (CxxMat())) = ximgproc_covarianceEstimation(src, windowRows, windowCols, dst)

function ximgproc_weightedMedianFilter(joint::InputArray, src::InputArray, r::Int64, dst::InputArray, sigma::Float64, weightType::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_weightedMedianFilter(julia_to_cpp(joint),julia_to_cpp(src),julia_to_cpp(r),julia_to_cpp(dst),julia_to_cpp(sigma),julia_to_cpp(weightType),julia_to_cpp(mask)))
end
ximgproc_weightedMedianFilter(joint::InputArray, src::InputArray, r::Int64; dst::InputArray = (CxxMat()), sigma::Float64 = Float64(25.5), weightType::Int64 = Int64(cpp_to_julia(jlopencv_default_WMFREXP())), mask::InputArray = (CxxMat())) = ximgproc_weightedMedianFilter(joint, src, r, dst, sigma, weightType, mask)

function ximgproc_createSuperpixelSLIC(image::InputArray, algorithm::Int64, region_size::Int64, ruler::Float64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createSuperpixelSLIC(julia_to_cpp(image),julia_to_cpp(algorithm),julia_to_cpp(region_size),julia_to_cpp(ruler)))
end
ximgproc_createSuperpixelSLIC(image::InputArray; algorithm::Int64 = Int64(cpp_to_julia(jlopencv_default_SLICO())), region_size::Int64 = Int64(10), ruler::Float64 = Float64(10.0)) = ximgproc_createSuperpixelSLIC(image, algorithm, region_size, ruler)

function ximgproc_createSuperpixelLSC(image::InputArray, region_size::Int64, ratio::Float64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createSuperpixelLSC(julia_to_cpp(image),julia_to_cpp(region_size),julia_to_cpp(ratio)))
end
ximgproc_createSuperpixelLSC(image::InputArray; region_size::Int64 = Int64(10), ratio::Float64 = Float64(0.075)) = ximgproc_createSuperpixelLSC(image, region_size, ratio)

function ximgproc_createFastLineDetector(length_threshold::Int64, distance_threshold::Float64, canny_th1::Float64, canny_th2::Float64, canny_aperture_size::Int64, do_merge::Bool)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createFastLineDetector(julia_to_cpp(length_threshold),julia_to_cpp(distance_threshold),julia_to_cpp(canny_th1),julia_to_cpp(canny_th2),julia_to_cpp(canny_aperture_size),julia_to_cpp(do_merge)))
end
ximgproc_createFastLineDetector(; length_threshold::Int64 = Int64(10), distance_threshold::Float64 = Float64(1.414213562), canny_th1::Float64 = Float64(50.0), canny_th2::Float64 = Float64(50.0), canny_aperture_size::Int64 = Int64(3), do_merge::Bool = (false)) = ximgproc_createFastLineDetector(length_threshold, distance_threshold, canny_th1, canny_th2, canny_aperture_size, do_merge)

function ximgproc_GradientDericheY(op::InputArray, alpha::Float64, omega::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_GradientDericheY(julia_to_cpp(op),julia_to_cpp(alpha),julia_to_cpp(omega),julia_to_cpp(dst)))
end
ximgproc_GradientDericheY(op::InputArray, alpha::Float64, omega::Float64; dst::InputArray = (CxxMat())) = ximgproc_GradientDericheY(op, alpha, omega, dst)

function ximgproc_GradientDericheX(op::InputArray, alpha::Float64, omega::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_GradientDericheX(julia_to_cpp(op),julia_to_cpp(alpha),julia_to_cpp(omega),julia_to_cpp(dst)))
end
ximgproc_GradientDericheX(op::InputArray, alpha::Float64, omega::Float64; dst::InputArray = (CxxMat())) = ximgproc_GradientDericheX(op, alpha, omega, dst)

function ximgproc_PeiLinNormalization(I::InputArray, T::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_PeiLinNormalization(julia_to_cpp(I),julia_to_cpp(T)))
end
ximgproc_PeiLinNormalization(I::InputArray; T::InputArray = (CxxMat())) = ximgproc_PeiLinNormalization(I, T)

function ximgproc_fourierDescriptor(src::InputArray, dst::InputArray, nbElt::Int64, nbFD::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_fourierDescriptor(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(nbElt),julia_to_cpp(nbFD)))
end
ximgproc_fourierDescriptor(src::InputArray; dst::InputArray = (CxxMat()), nbElt::Int64 = Int64(-1), nbFD::Int64 = Int64(-1)) = ximgproc_fourierDescriptor(src, dst, nbElt, nbFD)

function ximgproc_transformFD(src::InputArray, t::InputArray, dst::InputArray, fdContour::Bool)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_transformFD(julia_to_cpp(src),julia_to_cpp(t),julia_to_cpp(dst),julia_to_cpp(fdContour)))
end
ximgproc_transformFD(src::InputArray, t::InputArray; dst::InputArray = (CxxMat()), fdContour::Bool = (true)) = ximgproc_transformFD(src, t, dst, fdContour)

function ximgproc_contourSampling(src::InputArray, nbElt::Int64, out::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_contourSampling(julia_to_cpp(src),julia_to_cpp(nbElt),julia_to_cpp(out)))
end
ximgproc_contourSampling(src::InputArray, nbElt::Int64; out::InputArray = (CxxMat())) = ximgproc_contourSampling(src, nbElt, out)

function ximgproc_createContourFitting(ctr::Int64, fd::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createContourFitting(julia_to_cpp(ctr),julia_to_cpp(fd)))
end
ximgproc_createContourFitting(; ctr::Int64 = Int64(1024), fd::Int64 = Int64(16)) = ximgproc_createContourFitting(ctr, fd)

function ximgproc_RidgeDetectionFilter_create(ddepth::Int64, dx::Int64, dy::Int64, ksize::Int64, out_dtype::Int64, scale::Float64, delta::Float64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RidgeDetectionFilter_create(julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(out_dtype),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
ximgproc_RidgeDetectionFilter_create(; ddepth::Int64 = Int64(cpp_to_julia(jlopencv_default_CVRZYFCX())), dx::Int64 = Int64(1), dy::Int64 = Int64(1), ksize::Int64 = Int64(3), out_dtype::Int64 = Int64(cpp_to_julia(jlopencv_default_CVReUCX())), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = ximgproc_RidgeDetectionFilter_create(ddepth, dx, dy, ksize, out_dtype, scale, delta, borderType)

function ximgproc_edgePreservingFilter(src::InputArray, d::Int64, threshold::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_edgePreservingFilter(julia_to_cpp(src),julia_to_cpp(d),julia_to_cpp(threshold),julia_to_cpp(dst)))
end
ximgproc_edgePreservingFilter(src::InputArray, d::Int64, threshold::Float64; dst::InputArray = (CxxMat())) = ximgproc_edgePreservingFilter(src, d, threshold, dst)

function ximgproc_createQuaternionImage(img::InputArray, qimg::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createQuaternionImage(julia_to_cpp(img),julia_to_cpp(qimg)))
end
ximgproc_createQuaternionImage(img::InputArray; qimg::InputArray = (CxxMat())) = ximgproc_createQuaternionImage(img, qimg)

function ximgproc_qconj(qimg::InputArray, qcimg::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_qconj(julia_to_cpp(qimg),julia_to_cpp(qcimg)))
end
ximgproc_qconj(qimg::InputArray; qcimg::InputArray = (CxxMat())) = ximgproc_qconj(qimg, qcimg)

function ximgproc_qunitary(qimg::InputArray, qnimg::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_qunitary(julia_to_cpp(qimg),julia_to_cpp(qnimg)))
end
ximgproc_qunitary(qimg::InputArray; qnimg::InputArray = (CxxMat())) = ximgproc_qunitary(qimg, qnimg)

function ximgproc_qmultiply(src1::InputArray, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_qmultiply(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
ximgproc_qmultiply(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat())) = ximgproc_qmultiply(src1, src2, dst)

function ximgproc_qdft(img::InputArray, flags::Int64, sideLeft::Bool, qimg::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_qdft(julia_to_cpp(img),julia_to_cpp(flags),julia_to_cpp(sideLeft),julia_to_cpp(qimg)))
end
ximgproc_qdft(img::InputArray, flags::Int64, sideLeft::Bool; qimg::InputArray = (CxxMat())) = ximgproc_qdft(img, flags, sideLeft, qimg)

function ximgproc_colorMatchTemplate(img::InputArray, templ::InputArray, result::InputArray)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_colorMatchTemplate(julia_to_cpp(img),julia_to_cpp(templ),julia_to_cpp(result)))
end
ximgproc_colorMatchTemplate(img::InputArray, templ::InputArray; result::InputArray = (CxxMat())) = ximgproc_colorMatchTemplate(img, templ, result)

function ximgproc_RadonTransform(src::InputArray, dst::InputArray, theta::Float64, start_angle::Float64, end_angle::Float64, crop::Bool, norm::Bool)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_RadonTransform(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(theta),julia_to_cpp(start_angle),julia_to_cpp(end_angle),julia_to_cpp(crop),julia_to_cpp(norm)))
end
ximgproc_RadonTransform(src::InputArray; dst::InputArray = (CxxMat()), theta::Float64 = Float64(1), start_angle::Float64 = Float64(0), end_angle::Float64 = Float64(180), crop::Bool = (false), norm::Bool = (false)) = ximgproc_RadonTransform(src, dst, theta, start_angle, end_angle, crop, norm)

function ximgproc_findEllipses(image::InputArray, ellipses::InputArray, scoreThreshold::Float64, reliabilityThreshold::Float64, centerDistanceThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_findEllipses(julia_to_cpp(image),julia_to_cpp(ellipses),julia_to_cpp(scoreThreshold),julia_to_cpp(reliabilityThreshold),julia_to_cpp(centerDistanceThreshold)))
end
ximgproc_findEllipses(image::InputArray; ellipses::InputArray = (CxxMat()), scoreThreshold::Float64 = Float64(0.7), reliabilityThreshold::Float64 = Float64(0.5), centerDistanceThreshold::Float64 = Float64(0.05)) = ximgproc_findEllipses(image, ellipses, scoreThreshold, reliabilityThreshold, centerDistanceThreshold)

function ximgproc_createScanSegment(image_width::Int64, image_height::Int64, num_superpixels::Int64, slices::Int64, merge_small::Bool)
	return cpp_to_julia(jlopencv_cv_ximgproc_cv_ximgproc_createScanSegment(julia_to_cpp(image_width),julia_to_cpp(image_height),julia_to_cpp(num_superpixels),julia_to_cpp(slices),julia_to_cpp(merge_small)))
end
ximgproc_createScanSegment(image_width::Int64, image_height::Int64, num_superpixels::Int64; slices::Int64 = Int64(8), merge_small::Bool = (true)) = ximgproc_createScanSegment(image_width, image_height, num_superpixels, slices, merge_small)



include("cv_ximgproc_rl_cxx_wrap.jl")
include("cv_ximgproc_segmentation_cxx_wrap.jl")
