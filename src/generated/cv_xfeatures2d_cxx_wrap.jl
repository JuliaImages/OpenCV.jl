

   const xfeatures2d_BEBLID_BeblidSize = Int64 

   const xfeatures2d_TEBLID_TeblidSize = Int64 

   const xfeatures2d_DAISY_NormalizationType = Int64 

   const xfeatures2d_PCTSignatures_DistanceFunction = Int64 

   const xfeatures2d_PCTSignatures_PointDistribution = Int64 

   const xfeatures2d_PCTSignatures_SimilarityFunction = Int64 
function Base.getproperty(m::cv_Ptr{FREAK}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{FREAK}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setOrientationNormalized(cobj::cv_Ptr{T}, orientationNormalized::Bool) where {T <: FREAK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_FREAK_cv_xfeatures2d_FREAK_setOrientationNormalized(julia_to_cpp(cobj),julia_to_cpp(orientationNormalized)))
end

function xfeatures2d_getOrientationNormalized(cobj::cv_Ptr{T}) where {T <: FREAK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_FREAK_cv_xfeatures2d_FREAK_getOrientationNormalized(julia_to_cpp(cobj)))
end

function xfeatures2d_setScaleNormalized(cobj::cv_Ptr{T}, scaleNormalized::Bool) where {T <: FREAK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_FREAK_cv_xfeatures2d_FREAK_setScaleNormalized(julia_to_cpp(cobj),julia_to_cpp(scaleNormalized)))
end

function xfeatures2d_getScaleNormalized(cobj::cv_Ptr{T}) where {T <: FREAK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_FREAK_cv_xfeatures2d_FREAK_getScaleNormalized(julia_to_cpp(cobj)))
end

function xfeatures2d_setPatternScale(cobj::cv_Ptr{T}, patternScale::Float64) where {T <: FREAK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_FREAK_cv_xfeatures2d_FREAK_setPatternScale(julia_to_cpp(cobj),julia_to_cpp(patternScale)))
end

function xfeatures2d_getPatternScale(cobj::cv_Ptr{T}) where {T <: FREAK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_FREAK_cv_xfeatures2d_FREAK_getPatternScale(julia_to_cpp(cobj)))
end

function xfeatures2d_setNOctaves(cobj::cv_Ptr{T}, nOctaves::Int64) where {T <: FREAK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_FREAK_cv_xfeatures2d_FREAK_setNOctaves(julia_to_cpp(cobj),julia_to_cpp(nOctaves)))
end

function xfeatures2d_getNOctaves(cobj::cv_Ptr{T}) where {T <: FREAK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_FREAK_cv_xfeatures2d_FREAK_getNOctaves(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: FREAK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_FREAK_cv_xfeatures2d_FREAK_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{StarDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{StarDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setMaxSize(cobj::cv_Ptr{T}, _maxSize::Int64) where {T <: StarDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_StarDetector_cv_xfeatures2d_StarDetector_setMaxSize(julia_to_cpp(cobj),julia_to_cpp(_maxSize)))
end

function xfeatures2d_getMaxSize(cobj::cv_Ptr{T}) where {T <: StarDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_StarDetector_cv_xfeatures2d_StarDetector_getMaxSize(julia_to_cpp(cobj)))
end

function xfeatures2d_setResponseThreshold(cobj::cv_Ptr{T}, _responseThreshold::Int64) where {T <: StarDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_StarDetector_cv_xfeatures2d_StarDetector_setResponseThreshold(julia_to_cpp(cobj),julia_to_cpp(_responseThreshold)))
end

function xfeatures2d_getResponseThreshold(cobj::cv_Ptr{T}) where {T <: StarDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_StarDetector_cv_xfeatures2d_StarDetector_getResponseThreshold(julia_to_cpp(cobj)))
end

function xfeatures2d_setLineThresholdProjected(cobj::cv_Ptr{T}, _lineThresholdProjected::Int64) where {T <: StarDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_StarDetector_cv_xfeatures2d_StarDetector_setLineThresholdProjected(julia_to_cpp(cobj),julia_to_cpp(_lineThresholdProjected)))
end

function xfeatures2d_getLineThresholdProjected(cobj::cv_Ptr{T}) where {T <: StarDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_StarDetector_cv_xfeatures2d_StarDetector_getLineThresholdProjected(julia_to_cpp(cobj)))
end

function xfeatures2d_setLineThresholdBinarized(cobj::cv_Ptr{T}, _lineThresholdBinarized::Int64) where {T <: StarDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_StarDetector_cv_xfeatures2d_StarDetector_setLineThresholdBinarized(julia_to_cpp(cobj),julia_to_cpp(_lineThresholdBinarized)))
end

function xfeatures2d_getLineThresholdBinarized(cobj::cv_Ptr{T}) where {T <: StarDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_StarDetector_cv_xfeatures2d_StarDetector_getLineThresholdBinarized(julia_to_cpp(cobj)))
end

function xfeatures2d_setSuppressNonmaxSize(cobj::cv_Ptr{T}, _suppressNonmaxSize::Int64) where {T <: StarDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_StarDetector_cv_xfeatures2d_StarDetector_setSuppressNonmaxSize(julia_to_cpp(cobj),julia_to_cpp(_suppressNonmaxSize)))
end

function xfeatures2d_getSuppressNonmaxSize(cobj::cv_Ptr{T}) where {T <: StarDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_StarDetector_cv_xfeatures2d_StarDetector_getSuppressNonmaxSize(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: StarDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_StarDetector_cv_xfeatures2d_StarDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{BriefDescriptorExtractor}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{BriefDescriptorExtractor}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setDescriptorSize(cobj::cv_Ptr{T}, bytes::Int64) where {T <: BriefDescriptorExtractor}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BriefDescriptorExtractor_cv_xfeatures2d_BriefDescriptorExtractor_setDescriptorSize(julia_to_cpp(cobj),julia_to_cpp(bytes)))
end

function xfeatures2d_getDescriptorSize(cobj::cv_Ptr{T}) where {T <: BriefDescriptorExtractor}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BriefDescriptorExtractor_cv_xfeatures2d_BriefDescriptorExtractor_getDescriptorSize(julia_to_cpp(cobj)))
end

function xfeatures2d_setUseOrientation(cobj::cv_Ptr{T}, use_orientation::Bool) where {T <: BriefDescriptorExtractor}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BriefDescriptorExtractor_cv_xfeatures2d_BriefDescriptorExtractor_setUseOrientation(julia_to_cpp(cobj),julia_to_cpp(use_orientation)))
end

function xfeatures2d_getUseOrientation(cobj::cv_Ptr{T}) where {T <: BriefDescriptorExtractor}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BriefDescriptorExtractor_cv_xfeatures2d_BriefDescriptorExtractor_getUseOrientation(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: BriefDescriptorExtractor}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BriefDescriptorExtractor_cv_xfeatures2d_BriefDescriptorExtractor_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{LUCID}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{LUCID}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setLucidKernel(cobj::cv_Ptr{T}, lucid_kernel::Int64) where {T <: LUCID}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LUCID_cv_xfeatures2d_LUCID_setLucidKernel(julia_to_cpp(cobj),julia_to_cpp(lucid_kernel)))
end

function xfeatures2d_getLucidKernel(cobj::cv_Ptr{T}) where {T <: LUCID}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LUCID_cv_xfeatures2d_LUCID_getLucidKernel(julia_to_cpp(cobj)))
end

function xfeatures2d_setBlurKernel(cobj::cv_Ptr{T}, blur_kernel::Int64) where {T <: LUCID}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LUCID_cv_xfeatures2d_LUCID_setBlurKernel(julia_to_cpp(cobj),julia_to_cpp(blur_kernel)))
end

function xfeatures2d_getBlurKernel(cobj::cv_Ptr{T}) where {T <: LUCID}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LUCID_cv_xfeatures2d_LUCID_getBlurKernel(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: LUCID}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LUCID_cv_xfeatures2d_LUCID_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{LATCH}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{LATCH}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setBytes(cobj::cv_Ptr{T}, bytes::Int64) where {T <: LATCH}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LATCH_cv_xfeatures2d_LATCH_setBytes(julia_to_cpp(cobj),julia_to_cpp(bytes)))
end

function xfeatures2d_getBytes(cobj::cv_Ptr{T}) where {T <: LATCH}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LATCH_cv_xfeatures2d_LATCH_getBytes(julia_to_cpp(cobj)))
end

function xfeatures2d_setRotationInvariance(cobj::cv_Ptr{T}, rotationInvariance::Bool) where {T <: LATCH}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LATCH_cv_xfeatures2d_LATCH_setRotationInvariance(julia_to_cpp(cobj),julia_to_cpp(rotationInvariance)))
end

function xfeatures2d_getRotationInvariance(cobj::cv_Ptr{T}) where {T <: LATCH}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LATCH_cv_xfeatures2d_LATCH_getRotationInvariance(julia_to_cpp(cobj)))
end

function xfeatures2d_setHalfSSDsize(cobj::cv_Ptr{T}, half_ssd_size::Int64) where {T <: LATCH}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LATCH_cv_xfeatures2d_LATCH_setHalfSSDsize(julia_to_cpp(cobj),julia_to_cpp(half_ssd_size)))
end

function xfeatures2d_getHalfSSDsize(cobj::cv_Ptr{T}) where {T <: LATCH}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LATCH_cv_xfeatures2d_LATCH_getHalfSSDsize(julia_to_cpp(cobj)))
end

function xfeatures2d_setSigma(cobj::cv_Ptr{T}, sigma::Float64) where {T <: LATCH}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LATCH_cv_xfeatures2d_LATCH_setSigma(julia_to_cpp(cobj),julia_to_cpp(sigma)))
end

function xfeatures2d_getSigma(cobj::cv_Ptr{T}) where {T <: LATCH}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LATCH_cv_xfeatures2d_LATCH_getSigma(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: LATCH}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LATCH_cv_xfeatures2d_LATCH_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{BEBLID}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{BEBLID}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setScaleFactor(cobj::cv_Ptr{T}, scale_factor::Float64) where {T <: BEBLID}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BEBLID_cv_xfeatures2d_BEBLID_setScaleFactor(julia_to_cpp(cobj),julia_to_cpp(scale_factor)))
end

function xfeatures2d_getScaleFactor(cobj::cv_Ptr{T}) where {T <: BEBLID}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BEBLID_cv_xfeatures2d_BEBLID_getScaleFactor(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: BEBLID}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BEBLID_cv_xfeatures2d_BEBLID_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{TEBLID}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TEBLID}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: TEBLID}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_TEBLID_cv_xfeatures2d_TEBLID_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{DAISY}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{DAISY}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setRadius(cobj::cv_Ptr{T}, radius::Float64) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_setRadius(julia_to_cpp(cobj),julia_to_cpp(radius)))
end

function xfeatures2d_getRadius(cobj::cv_Ptr{T}) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_getRadius(julia_to_cpp(cobj)))
end

function xfeatures2d_setQRadius(cobj::cv_Ptr{T}, q_radius::Int64) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_setQRadius(julia_to_cpp(cobj),julia_to_cpp(q_radius)))
end

function xfeatures2d_getQRadius(cobj::cv_Ptr{T}) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_getQRadius(julia_to_cpp(cobj)))
end

function xfeatures2d_setQTheta(cobj::cv_Ptr{T}, q_theta::Int64) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_setQTheta(julia_to_cpp(cobj),julia_to_cpp(q_theta)))
end

function xfeatures2d_getQTheta(cobj::cv_Ptr{T}) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_getQTheta(julia_to_cpp(cobj)))
end

function xfeatures2d_setQHist(cobj::cv_Ptr{T}, q_hist::Int64) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_setQHist(julia_to_cpp(cobj),julia_to_cpp(q_hist)))
end

function xfeatures2d_getQHist(cobj::cv_Ptr{T}) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_getQHist(julia_to_cpp(cobj)))
end

function xfeatures2d_setNorm(cobj::cv_Ptr{T}, norm::Int64) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_setNorm(julia_to_cpp(cobj),julia_to_cpp(norm)))
end

function xfeatures2d_getNorm(cobj::cv_Ptr{T}) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_getNorm(julia_to_cpp(cobj)))
end

function xfeatures2d_setH(cobj::cv_Ptr{T}, H::InputArray) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_setH(julia_to_cpp(cobj),julia_to_cpp(H)))
end

function xfeatures2d_getH(cobj::cv_Ptr{T}) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_getH(julia_to_cpp(cobj)))
end

function xfeatures2d_setInterpolation(cobj::cv_Ptr{T}, interpolation::Bool) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_setInterpolation(julia_to_cpp(cobj),julia_to_cpp(interpolation)))
end

function xfeatures2d_getInterpolation(cobj::cv_Ptr{T}) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_getInterpolation(julia_to_cpp(cobj)))
end

function xfeatures2d_setUseOrientation(cobj::cv_Ptr{T}, use_orientation::Bool) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_setUseOrientation(julia_to_cpp(cobj),julia_to_cpp(use_orientation)))
end

function xfeatures2d_getUseOrientation(cobj::cv_Ptr{T}) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_getUseOrientation(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: DAISY}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_cv_xfeatures2d_DAISY_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{MSDDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{MSDDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setPatchRadius(cobj::cv_Ptr{T}, patch_radius::Int64) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_setPatchRadius(julia_to_cpp(cobj),julia_to_cpp(patch_radius)))
end

function xfeatures2d_getPatchRadius(cobj::cv_Ptr{T}) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_getPatchRadius(julia_to_cpp(cobj)))
end

function xfeatures2d_setSearchAreaRadius(cobj::cv_Ptr{T}, use_orientation::Int64) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_setSearchAreaRadius(julia_to_cpp(cobj),julia_to_cpp(use_orientation)))
end

function xfeatures2d_getSearchAreaRadius(cobj::cv_Ptr{T}) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_getSearchAreaRadius(julia_to_cpp(cobj)))
end

function xfeatures2d_setNmsRadius(cobj::cv_Ptr{T}, nms_radius::Int64) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_setNmsRadius(julia_to_cpp(cobj),julia_to_cpp(nms_radius)))
end

function xfeatures2d_getNmsRadius(cobj::cv_Ptr{T}) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_getNmsRadius(julia_to_cpp(cobj)))
end

function xfeatures2d_setNmsScaleRadius(cobj::cv_Ptr{T}, nms_scale_radius::Int64) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_setNmsScaleRadius(julia_to_cpp(cobj),julia_to_cpp(nms_scale_radius)))
end

function xfeatures2d_getNmsScaleRadius(cobj::cv_Ptr{T}) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_getNmsScaleRadius(julia_to_cpp(cobj)))
end

function xfeatures2d_setThSaliency(cobj::cv_Ptr{T}, th_saliency::Float64) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_setThSaliency(julia_to_cpp(cobj),julia_to_cpp(th_saliency)))
end

function xfeatures2d_getThSaliency(cobj::cv_Ptr{T}) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_getThSaliency(julia_to_cpp(cobj)))
end

function xfeatures2d_setKNN(cobj::cv_Ptr{T}, kNN::Int64) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_setKNN(julia_to_cpp(cobj),julia_to_cpp(kNN)))
end

function xfeatures2d_getKNN(cobj::cv_Ptr{T}) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_getKNN(julia_to_cpp(cobj)))
end

function xfeatures2d_setScaleFactor(cobj::cv_Ptr{T}, scale_factor::Float64) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_setScaleFactor(julia_to_cpp(cobj),julia_to_cpp(scale_factor)))
end

function xfeatures2d_getScaleFactor(cobj::cv_Ptr{T}) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_getScaleFactor(julia_to_cpp(cobj)))
end

function xfeatures2d_setNScales(cobj::cv_Ptr{T}, use_orientation::Int64) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_setNScales(julia_to_cpp(cobj),julia_to_cpp(use_orientation)))
end

function xfeatures2d_getNScales(cobj::cv_Ptr{T}) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_getNScales(julia_to_cpp(cobj)))
end

function xfeatures2d_setComputeOrientation(cobj::cv_Ptr{T}, compute_orientation::Bool) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_setComputeOrientation(julia_to_cpp(cobj),julia_to_cpp(compute_orientation)))
end

function xfeatures2d_getComputeOrientation(cobj::cv_Ptr{T}) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_getComputeOrientation(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: MSDDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_cv_xfeatures2d_MSDDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{VGG}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{VGG}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: VGG}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_VGG_cv_xfeatures2d_VGG_getDefaultName(julia_to_cpp(cobj)))
end

function xfeatures2d_setSigma(cobj::cv_Ptr{T}, isigma::Float64) where {T <: VGG}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_VGG_cv_xfeatures2d_VGG_setSigma(julia_to_cpp(cobj),julia_to_cpp(isigma)))
end

function xfeatures2d_getSigma(cobj::cv_Ptr{T}) where {T <: VGG}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_VGG_cv_xfeatures2d_VGG_getSigma(julia_to_cpp(cobj)))
end

function xfeatures2d_setUseNormalizeImage(cobj::cv_Ptr{T}, img_normalize::Bool) where {T <: VGG}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_VGG_cv_xfeatures2d_VGG_setUseNormalizeImage(julia_to_cpp(cobj),julia_to_cpp(img_normalize)))
end

function xfeatures2d_getUseNormalizeImage(cobj::cv_Ptr{T}) where {T <: VGG}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_VGG_cv_xfeatures2d_VGG_getUseNormalizeImage(julia_to_cpp(cobj)))
end

function xfeatures2d_setUseScaleOrientation(cobj::cv_Ptr{T}, use_scale_orientation::Bool) where {T <: VGG}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_VGG_cv_xfeatures2d_VGG_setUseScaleOrientation(julia_to_cpp(cobj),julia_to_cpp(use_scale_orientation)))
end

function xfeatures2d_getUseScaleOrientation(cobj::cv_Ptr{T}) where {T <: VGG}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_VGG_cv_xfeatures2d_VGG_getUseScaleOrientation(julia_to_cpp(cobj)))
end

function xfeatures2d_setScaleFactor(cobj::cv_Ptr{T}, scale_factor::Float64) where {T <: VGG}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_VGG_cv_xfeatures2d_VGG_setScaleFactor(julia_to_cpp(cobj),julia_to_cpp(scale_factor)))
end

function xfeatures2d_getScaleFactor(cobj::cv_Ptr{T}) where {T <: VGG}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_VGG_cv_xfeatures2d_VGG_getScaleFactor(julia_to_cpp(cobj)))
end

function xfeatures2d_setUseNormalizeDescriptor(cobj::cv_Ptr{T}, dsc_normalize::Bool) where {T <: VGG}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_VGG_cv_xfeatures2d_VGG_setUseNormalizeDescriptor(julia_to_cpp(cobj),julia_to_cpp(dsc_normalize)))
end

function xfeatures2d_getUseNormalizeDescriptor(cobj::cv_Ptr{T}) where {T <: VGG}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_VGG_cv_xfeatures2d_VGG_getUseNormalizeDescriptor(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{BoostDesc}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{BoostDesc}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: BoostDesc}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BoostDesc_cv_xfeatures2d_BoostDesc_getDefaultName(julia_to_cpp(cobj)))
end

function xfeatures2d_setUseScaleOrientation(cobj::cv_Ptr{T}, use_scale_orientation::Bool) where {T <: BoostDesc}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BoostDesc_cv_xfeatures2d_BoostDesc_setUseScaleOrientation(julia_to_cpp(cobj),julia_to_cpp(use_scale_orientation)))
end

function xfeatures2d_getUseScaleOrientation(cobj::cv_Ptr{T}) where {T <: BoostDesc}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BoostDesc_cv_xfeatures2d_BoostDesc_getUseScaleOrientation(julia_to_cpp(cobj)))
end

function xfeatures2d_setScaleFactor(cobj::cv_Ptr{T}, scale_factor::Float64) where {T <: BoostDesc}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BoostDesc_cv_xfeatures2d_BoostDesc_setScaleFactor(julia_to_cpp(cobj),julia_to_cpp(scale_factor)))
end

function xfeatures2d_getScaleFactor(cobj::cv_Ptr{T}) where {T <: BoostDesc}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BoostDesc_cv_xfeatures2d_BoostDesc_getScaleFactor(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{PCTSignatures}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{PCTSignatures}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_computeSignature(cobj::cv_Ptr{T}, image::InputArray, signature::InputArray) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_computeSignature(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(signature)))
end
xfeatures2d_computeSignature(cobj::cv_Ptr{T}, image::InputArray; signature::InputArray = (CxxMat())) where {T <: PCTSignatures} = xfeatures2d_computeSignature(cobj, image, signature)

function xfeatures2d_computeSignatures(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}, signatures::AbstractVector{<:InputArray}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_computeSignatures(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(signatures)))
end

function xfeatures2d_getSampleCount(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getSampleCount(julia_to_cpp(cobj)))
end

function xfeatures2d_getGrayscaleBits(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getGrayscaleBits(julia_to_cpp(cobj)))
end

function xfeatures2d_setGrayscaleBits(cobj::cv_Ptr{T}, grayscaleBits::Int64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setGrayscaleBits(julia_to_cpp(cobj),julia_to_cpp(grayscaleBits)))
end

function xfeatures2d_getWindowRadius(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getWindowRadius(julia_to_cpp(cobj)))
end

function xfeatures2d_setWindowRadius(cobj::cv_Ptr{T}, radius::Int64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setWindowRadius(julia_to_cpp(cobj),julia_to_cpp(radius)))
end

function xfeatures2d_getWeightX(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getWeightX(julia_to_cpp(cobj)))
end

function xfeatures2d_setWeightX(cobj::cv_Ptr{T}, weight::Float64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setWeightX(julia_to_cpp(cobj),julia_to_cpp(weight)))
end

function xfeatures2d_getWeightY(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getWeightY(julia_to_cpp(cobj)))
end

function xfeatures2d_setWeightY(cobj::cv_Ptr{T}, weight::Float64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setWeightY(julia_to_cpp(cobj),julia_to_cpp(weight)))
end

function xfeatures2d_getWeightL(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getWeightL(julia_to_cpp(cobj)))
end

function xfeatures2d_setWeightL(cobj::cv_Ptr{T}, weight::Float64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setWeightL(julia_to_cpp(cobj),julia_to_cpp(weight)))
end

function xfeatures2d_getWeightA(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getWeightA(julia_to_cpp(cobj)))
end

function xfeatures2d_setWeightA(cobj::cv_Ptr{T}, weight::Float64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setWeightA(julia_to_cpp(cobj),julia_to_cpp(weight)))
end

function xfeatures2d_getWeightB(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getWeightB(julia_to_cpp(cobj)))
end

function xfeatures2d_setWeightB(cobj::cv_Ptr{T}, weight::Float64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setWeightB(julia_to_cpp(cobj),julia_to_cpp(weight)))
end

function xfeatures2d_getWeightContrast(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getWeightContrast(julia_to_cpp(cobj)))
end

function xfeatures2d_setWeightContrast(cobj::cv_Ptr{T}, weight::Float64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setWeightContrast(julia_to_cpp(cobj),julia_to_cpp(weight)))
end

function xfeatures2d_getWeightEntropy(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getWeightEntropy(julia_to_cpp(cobj)))
end

function xfeatures2d_setWeightEntropy(cobj::cv_Ptr{T}, weight::Float64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setWeightEntropy(julia_to_cpp(cobj),julia_to_cpp(weight)))
end

function xfeatures2d_getSamplingPoints(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getSamplingPoints(julia_to_cpp(cobj)))
end

function xfeatures2d_setWeight(cobj::cv_Ptr{T}, idx::Int64, value::Float64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setWeight(julia_to_cpp(cobj),julia_to_cpp(idx),julia_to_cpp(value)))
end

function xfeatures2d_setWeights(cobj::cv_Ptr{T}, weights::Array{Float32, 1}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setWeights(julia_to_cpp(cobj),julia_to_cpp(weights)))
end

function xfeatures2d_setTranslation(cobj::cv_Ptr{T}, idx::Int64, value::Float64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setTranslation(julia_to_cpp(cobj),julia_to_cpp(idx),julia_to_cpp(value)))
end

function xfeatures2d_setTranslations(cobj::cv_Ptr{T}, translations::Array{Float32, 1}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setTranslations(julia_to_cpp(cobj),julia_to_cpp(translations)))
end

function xfeatures2d_setSamplingPoints(cobj::cv_Ptr{T}, samplingPoints::Array{Point{Float32}, 1}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setSamplingPoints(julia_to_cpp(cobj),julia_to_cpp(samplingPoints)))
end

function xfeatures2d_getInitSeedIndexes(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getInitSeedIndexes(julia_to_cpp(cobj)))
end

function xfeatures2d_setInitSeedIndexes(cobj::cv_Ptr{T}, initSeedIndexes::Array{Int32, 1}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setInitSeedIndexes(julia_to_cpp(cobj),julia_to_cpp(initSeedIndexes)))
end

function xfeatures2d_getInitSeedCount(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getInitSeedCount(julia_to_cpp(cobj)))
end

function xfeatures2d_getIterationCount(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getIterationCount(julia_to_cpp(cobj)))
end

function xfeatures2d_setIterationCount(cobj::cv_Ptr{T}, iterationCount::Int64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setIterationCount(julia_to_cpp(cobj),julia_to_cpp(iterationCount)))
end

function xfeatures2d_getMaxClustersCount(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getMaxClustersCount(julia_to_cpp(cobj)))
end

function xfeatures2d_setMaxClustersCount(cobj::cv_Ptr{T}, maxClustersCount::Int64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setMaxClustersCount(julia_to_cpp(cobj),julia_to_cpp(maxClustersCount)))
end

function xfeatures2d_getClusterMinSize(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getClusterMinSize(julia_to_cpp(cobj)))
end

function xfeatures2d_setClusterMinSize(cobj::cv_Ptr{T}, clusterMinSize::Int64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setClusterMinSize(julia_to_cpp(cobj),julia_to_cpp(clusterMinSize)))
end

function xfeatures2d_getJoiningDistance(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getJoiningDistance(julia_to_cpp(cobj)))
end

function xfeatures2d_setJoiningDistance(cobj::cv_Ptr{T}, joiningDistance::Float64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setJoiningDistance(julia_to_cpp(cobj),julia_to_cpp(joiningDistance)))
end

function xfeatures2d_getDropThreshold(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getDropThreshold(julia_to_cpp(cobj)))
end

function xfeatures2d_setDropThreshold(cobj::cv_Ptr{T}, dropThreshold::Float64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setDropThreshold(julia_to_cpp(cobj),julia_to_cpp(dropThreshold)))
end

function xfeatures2d_getDistanceFunction(cobj::cv_Ptr{T}) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_getDistanceFunction(julia_to_cpp(cobj)))
end

function xfeatures2d_setDistanceFunction(cobj::cv_Ptr{T}, distanceFunction::Int64) where {T <: PCTSignatures}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_cv_xfeatures2d_PCTSignatures_setDistanceFunction(julia_to_cpp(cobj),julia_to_cpp(distanceFunction)))
end
function Base.getproperty(m::cv_Ptr{PCTSignaturesSQFD}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{PCTSignaturesSQFD}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_computeQuadraticFormDistance(cobj::cv_Ptr{T}, _signature0::InputArray, _signature1::InputArray) where {T <: PCTSignaturesSQFD}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignaturesSQFD_cv_xfeatures2d_PCTSignaturesSQFD_computeQuadraticFormDistance(julia_to_cpp(cobj),julia_to_cpp(_signature0),julia_to_cpp(_signature1)))
end

function xfeatures2d_computeQuadraticFormDistances(cobj::cv_Ptr{T}, sourceSignature::InputArray, imageSignatures::AbstractVector{<:InputArray}, distances::Array{Float32, 1}) where {T <: PCTSignaturesSQFD}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignaturesSQFD_cv_xfeatures2d_PCTSignaturesSQFD_computeQuadraticFormDistances(julia_to_cpp(cobj),julia_to_cpp(sourceSignature),julia_to_cpp(imageSignatures),julia_to_cpp(distances)))
end
function Base.getproperty(m::cv_Ptr{HarrisLaplaceFeatureDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{HarrisLaplaceFeatureDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setNumOctaves(cobj::cv_Ptr{T}, numOctaves_::Int64) where {T <: HarrisLaplaceFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_HarrisLaplaceFeatureDetector_cv_xfeatures2d_HarrisLaplaceFeatureDetector_setNumOctaves(julia_to_cpp(cobj),julia_to_cpp(numOctaves_)))
end

function xfeatures2d_getNumOctaves(cobj::cv_Ptr{T}) where {T <: HarrisLaplaceFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_HarrisLaplaceFeatureDetector_cv_xfeatures2d_HarrisLaplaceFeatureDetector_getNumOctaves(julia_to_cpp(cobj)))
end

function xfeatures2d_setCornThresh(cobj::cv_Ptr{T}, corn_thresh_::Float64) where {T <: HarrisLaplaceFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_HarrisLaplaceFeatureDetector_cv_xfeatures2d_HarrisLaplaceFeatureDetector_setCornThresh(julia_to_cpp(cobj),julia_to_cpp(corn_thresh_)))
end

function xfeatures2d_getCornThresh(cobj::cv_Ptr{T}) where {T <: HarrisLaplaceFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_HarrisLaplaceFeatureDetector_cv_xfeatures2d_HarrisLaplaceFeatureDetector_getCornThresh(julia_to_cpp(cobj)))
end

function xfeatures2d_setDOGThresh(cobj::cv_Ptr{T}, DOG_thresh_::Float64) where {T <: HarrisLaplaceFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_HarrisLaplaceFeatureDetector_cv_xfeatures2d_HarrisLaplaceFeatureDetector_setDOGThresh(julia_to_cpp(cobj),julia_to_cpp(DOG_thresh_)))
end

function xfeatures2d_getDOGThresh(cobj::cv_Ptr{T}) where {T <: HarrisLaplaceFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_HarrisLaplaceFeatureDetector_cv_xfeatures2d_HarrisLaplaceFeatureDetector_getDOGThresh(julia_to_cpp(cobj)))
end

function xfeatures2d_setMaxCorners(cobj::cv_Ptr{T}, maxCorners_::Int64) where {T <: HarrisLaplaceFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_HarrisLaplaceFeatureDetector_cv_xfeatures2d_HarrisLaplaceFeatureDetector_setMaxCorners(julia_to_cpp(cobj),julia_to_cpp(maxCorners_)))
end

function xfeatures2d_getMaxCorners(cobj::cv_Ptr{T}) where {T <: HarrisLaplaceFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_HarrisLaplaceFeatureDetector_cv_xfeatures2d_HarrisLaplaceFeatureDetector_getMaxCorners(julia_to_cpp(cobj)))
end

function xfeatures2d_setNumLayers(cobj::cv_Ptr{T}, num_layers_::Int64) where {T <: HarrisLaplaceFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_HarrisLaplaceFeatureDetector_cv_xfeatures2d_HarrisLaplaceFeatureDetector_setNumLayers(julia_to_cpp(cobj),julia_to_cpp(num_layers_)))
end

function xfeatures2d_getNumLayers(cobj::cv_Ptr{T}) where {T <: HarrisLaplaceFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_HarrisLaplaceFeatureDetector_cv_xfeatures2d_HarrisLaplaceFeatureDetector_getNumLayers(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: HarrisLaplaceFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_HarrisLaplaceFeatureDetector_cv_xfeatures2d_HarrisLaplaceFeatureDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{AffineFeature2D}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{AffineFeature2D}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{TBMR}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TBMR}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setMinArea(cobj::cv_Ptr{T}, minArea::Int64) where {T <: TBMR}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_TBMR_cv_xfeatures2d_TBMR_setMinArea(julia_to_cpp(cobj),julia_to_cpp(minArea)))
end

function xfeatures2d_getMinArea(cobj::cv_Ptr{T}) where {T <: TBMR}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_TBMR_cv_xfeatures2d_TBMR_getMinArea(julia_to_cpp(cobj)))
end

function xfeatures2d_setMaxAreaRelative(cobj::cv_Ptr{T}, maxArea::Float64) where {T <: TBMR}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_TBMR_cv_xfeatures2d_TBMR_setMaxAreaRelative(julia_to_cpp(cobj),julia_to_cpp(maxArea)))
end

function xfeatures2d_getMaxAreaRelative(cobj::cv_Ptr{T}) where {T <: TBMR}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_TBMR_cv_xfeatures2d_TBMR_getMaxAreaRelative(julia_to_cpp(cobj)))
end

function xfeatures2d_setScaleFactor(cobj::cv_Ptr{T}, scale_factor::Float64) where {T <: TBMR}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_TBMR_cv_xfeatures2d_TBMR_setScaleFactor(julia_to_cpp(cobj),julia_to_cpp(scale_factor)))
end

function xfeatures2d_getScaleFactor(cobj::cv_Ptr{T}) where {T <: TBMR}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_TBMR_cv_xfeatures2d_TBMR_getScaleFactor(julia_to_cpp(cobj)))
end

function xfeatures2d_setNScales(cobj::cv_Ptr{T}, n_scales::Int64) where {T <: TBMR}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_TBMR_cv_xfeatures2d_TBMR_setNScales(julia_to_cpp(cobj),julia_to_cpp(n_scales)))
end

function xfeatures2d_getNScales(cobj::cv_Ptr{T}) where {T <: TBMR}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_TBMR_cv_xfeatures2d_TBMR_getNScales(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: TBMR}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_TBMR_cv_xfeatures2d_TBMR_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{BRISK}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{BRISK}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BRISK_cv_xfeatures2d_BRISK_getDefaultName(julia_to_cpp(cobj)))
end

function xfeatures2d_setThreshold(cobj::cv_Ptr{T}, threshold::Int64) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BRISK_cv_xfeatures2d_BRISK_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function xfeatures2d_getThreshold(cobj::cv_Ptr{T}) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BRISK_cv_xfeatures2d_BRISK_getThreshold(julia_to_cpp(cobj)))
end

function xfeatures2d_setOctaves(cobj::cv_Ptr{T}, octaves::Int64) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BRISK_cv_xfeatures2d_BRISK_setOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end

function xfeatures2d_getOctaves(cobj::cv_Ptr{T}) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BRISK_cv_xfeatures2d_BRISK_getOctaves(julia_to_cpp(cobj)))
end

function xfeatures2d_setPatternScale(cobj::cv_Ptr{T}, patternScale::Float64) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BRISK_cv_xfeatures2d_BRISK_setPatternScale(julia_to_cpp(cobj),julia_to_cpp(patternScale)))
end

function xfeatures2d_getPatternScale(cobj::cv_Ptr{T}) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BRISK_cv_xfeatures2d_BRISK_getPatternScale(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{AgastFeatureDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{AgastFeatureDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setThreshold(cobj::cv_Ptr{T}, threshold::Int64) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AgastFeatureDetector_cv_xfeatures2d_AgastFeatureDetector_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function xfeatures2d_getThreshold(cobj::cv_Ptr{T}) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AgastFeatureDetector_cv_xfeatures2d_AgastFeatureDetector_getThreshold(julia_to_cpp(cobj)))
end

function xfeatures2d_setNonmaxSuppression(cobj::cv_Ptr{T}, f::Bool) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AgastFeatureDetector_cv_xfeatures2d_AgastFeatureDetector_setNonmaxSuppression(julia_to_cpp(cobj),julia_to_cpp(f)))
end

function xfeatures2d_getNonmaxSuppression(cobj::cv_Ptr{T}) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AgastFeatureDetector_cv_xfeatures2d_AgastFeatureDetector_getNonmaxSuppression(julia_to_cpp(cobj)))
end

function xfeatures2d_setType(cobj::cv_Ptr{T}, type::Int64) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AgastFeatureDetector_cv_xfeatures2d_AgastFeatureDetector_setType(julia_to_cpp(cobj),julia_to_cpp(type)))
end

function xfeatures2d_getType(cobj::cv_Ptr{T}) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AgastFeatureDetector_cv_xfeatures2d_AgastFeatureDetector_getType(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AgastFeatureDetector_cv_xfeatures2d_AgastFeatureDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{KAZE}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{KAZE}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setExtended(cobj::cv_Ptr{T}, extended::Bool) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_setExtended(julia_to_cpp(cobj),julia_to_cpp(extended)))
end

function xfeatures2d_getExtended(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_getExtended(julia_to_cpp(cobj)))
end

function xfeatures2d_setUpright(cobj::cv_Ptr{T}, upright::Bool) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_setUpright(julia_to_cpp(cobj),julia_to_cpp(upright)))
end

function xfeatures2d_getUpright(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_getUpright(julia_to_cpp(cobj)))
end

function xfeatures2d_setThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function xfeatures2d_getThreshold(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_getThreshold(julia_to_cpp(cobj)))
end

function xfeatures2d_setNOctaves(cobj::cv_Ptr{T}, octaves::Int64) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_setNOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end

function xfeatures2d_getNOctaves(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_getNOctaves(julia_to_cpp(cobj)))
end

function xfeatures2d_setNOctaveLayers(cobj::cv_Ptr{T}, octaveLayers::Int64) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_setNOctaveLayers(julia_to_cpp(cobj),julia_to_cpp(octaveLayers)))
end

function xfeatures2d_getNOctaveLayers(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_getNOctaveLayers(julia_to_cpp(cobj)))
end

function xfeatures2d_setDiffusivity(cobj::cv_Ptr{T}, diff::Int64) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_setDiffusivity(julia_to_cpp(cobj),julia_to_cpp(diff)))
end

function xfeatures2d_getDiffusivity(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_getDiffusivity(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_cv_xfeatures2d_KAZE_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{AKAZE}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{AKAZE}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setDescriptorType(cobj::cv_Ptr{T}, dtype::Int64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_setDescriptorType(julia_to_cpp(cobj),julia_to_cpp(dtype)))
end

function xfeatures2d_getDescriptorType(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_getDescriptorType(julia_to_cpp(cobj)))
end

function xfeatures2d_setDescriptorSize(cobj::cv_Ptr{T}, dsize::Int64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_setDescriptorSize(julia_to_cpp(cobj),julia_to_cpp(dsize)))
end

function xfeatures2d_getDescriptorSize(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_getDescriptorSize(julia_to_cpp(cobj)))
end

function xfeatures2d_setDescriptorChannels(cobj::cv_Ptr{T}, dch::Int64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_setDescriptorChannels(julia_to_cpp(cobj),julia_to_cpp(dch)))
end

function xfeatures2d_getDescriptorChannels(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_getDescriptorChannels(julia_to_cpp(cobj)))
end

function xfeatures2d_setThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function xfeatures2d_getThreshold(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_getThreshold(julia_to_cpp(cobj)))
end

function xfeatures2d_setNOctaves(cobj::cv_Ptr{T}, octaves::Int64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_setNOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end

function xfeatures2d_getNOctaves(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_getNOctaves(julia_to_cpp(cobj)))
end

function xfeatures2d_setNOctaveLayers(cobj::cv_Ptr{T}, octaveLayers::Int64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_setNOctaveLayers(julia_to_cpp(cobj),julia_to_cpp(octaveLayers)))
end

function xfeatures2d_getNOctaveLayers(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_getNOctaveLayers(julia_to_cpp(cobj)))
end

function xfeatures2d_setDiffusivity(cobj::cv_Ptr{T}, diff::Int64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_setDiffusivity(julia_to_cpp(cobj),julia_to_cpp(diff)))
end

function xfeatures2d_getDiffusivity(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_getDiffusivity(julia_to_cpp(cobj)))
end

function xfeatures2d_getDefaultName(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_getDefaultName(julia_to_cpp(cobj)))
end

function xfeatures2d_setMaxPoints(cobj::cv_Ptr{T}, max_points::Int64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_setMaxPoints(julia_to_cpp(cobj),julia_to_cpp(max_points)))
end

function xfeatures2d_getMaxPoints(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_cv_xfeatures2d_AKAZE_getMaxPoints(julia_to_cpp(cobj)))
end
function Base.getproperty(m::BOWTrainer, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWTrainer, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_add(cobj::BOWTrainer, descriptors::InputArray)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWTrainer_cv_xfeatures2d_BOWTrainer_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end

function xfeatures2d_getDescriptors(cobj::BOWTrainer)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWTrainer_cv_xfeatures2d_BOWTrainer_getDescriptors(julia_to_cpp(cobj)))
end

function xfeatures2d_descriptorsCount(cobj::BOWTrainer)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWTrainer_cv_xfeatures2d_BOWTrainer_descriptorsCount(julia_to_cpp(cobj)))
end

function xfeatures2d_clear(cobj::BOWTrainer)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWTrainer_cv_xfeatures2d_BOWTrainer_clear(julia_to_cpp(cobj)))
end

function xfeatures2d_cluster(cobj::BOWTrainer)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWTrainer_cv_xfeatures2d_BOWTrainer_cluster(julia_to_cpp(cobj)))
end

function xfeatures2d_cluster(cobj::BOWTrainer, descriptors::InputArray)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWTrainer_cv_xfeatures2d_BOWTrainer_cluster(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end
function Base.getproperty(m::BOWKMeansTrainer, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWKMeansTrainer, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_cluster(cobj::BOWKMeansTrainer)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWKMeansTrainer_cv_xfeatures2d_BOWKMeansTrainer_cluster(julia_to_cpp(cobj)))
end

function xfeatures2d_cluster(cobj::BOWKMeansTrainer, descriptors::InputArray)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWKMeansTrainer_cv_xfeatures2d_BOWKMeansTrainer_cluster(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end

function xfeatures2d_BOWKMeansTrainer(clusterCount::Int64, termcrit::TermCriteria, attempts::Int64, flags::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWKMeansTrainer_cv_xfeatures2d_BOWKMeansTrainer_BOWKMeansTrainer(julia_to_cpp(clusterCount),julia_to_cpp(termcrit),julia_to_cpp(attempts),julia_to_cpp(flags)))
end
xfeatures2d_BOWKMeansTrainer(clusterCount::Int64; termcrit::TermCriteria = (cpp_to_julia(TermCriteriaOP())), attempts::Int64 = Int64(3), flags::Int64 = Int64(cpp_to_julia(jlopencv_default_KMEANSRPPRCENTERS()))) = xfeatures2d_BOWKMeansTrainer(clusterCount, termcrit, attempts, flags)
function Base.getproperty(m::BOWImgDescriptorExtractor, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWImgDescriptorExtractor, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xfeatures2d_setVocabulary(cobj::BOWImgDescriptorExtractor, vocabulary::InputArray)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWImgDescriptorExtractor_cv_xfeatures2d_BOWImgDescriptorExtractor_setVocabulary(julia_to_cpp(cobj),julia_to_cpp(vocabulary)))
end

function xfeatures2d_getVocabulary(cobj::BOWImgDescriptorExtractor)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWImgDescriptorExtractor_cv_xfeatures2d_BOWImgDescriptorExtractor_getVocabulary(julia_to_cpp(cobj)))
end

function xfeatures2d_compute2(cobj::BOWImgDescriptorExtractor, image::InputArray, keypoints::Array{KeyPoint, 1}, imgDescriptor::InputArray)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWImgDescriptorExtractor_cv_xfeatures2d_BOWImgDescriptorExtractor_compute2(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(imgDescriptor)))
end
xfeatures2d_compute2(cobj::BOWImgDescriptorExtractor, image::InputArray, keypoints::Array{KeyPoint, 1}; imgDescriptor::InputArray = (CxxMat())) = xfeatures2d_compute2(cobj, image, keypoints, imgDescriptor)

function xfeatures2d_descriptorSize(cobj::BOWImgDescriptorExtractor)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWImgDescriptorExtractor_cv_xfeatures2d_BOWImgDescriptorExtractor_descriptorSize(julia_to_cpp(cobj)))
end

function xfeatures2d_descriptorType(cobj::BOWImgDescriptorExtractor)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWImgDescriptorExtractor_cv_xfeatures2d_BOWImgDescriptorExtractor_descriptorType(julia_to_cpp(cobj)))
end

function xfeatures2d_BOWImgDescriptorExtractor(dextractor::cv_Ptr{<:Feature2D}, dmatcher::cv_Ptr{<:DescriptorMatcher})
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BOWImgDescriptorExtractor_cv_xfeatures2d_BOWImgDescriptorExtractor_BOWImgDescriptorExtractor(julia_to_cpp(dextractor),julia_to_cpp(dmatcher)))
end

function xfeatures2d_FREAK_create(orientationNormalized::Bool, scaleNormalized::Bool, patternScale::Float64, nOctaves::Int64, selectedPairs::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_FREAK_create(julia_to_cpp(orientationNormalized),julia_to_cpp(scaleNormalized),julia_to_cpp(patternScale),julia_to_cpp(nOctaves),julia_to_cpp(selectedPairs)))
end
xfeatures2d_FREAK_create(; orientationNormalized::Bool = (true), scaleNormalized::Bool = (true), patternScale::Float64 = Float64(22.0), nOctaves::Int64 = Int64(4), selectedPairs::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = xfeatures2d_FREAK_create(orientationNormalized, scaleNormalized, patternScale, nOctaves, selectedPairs)

function xfeatures2d_StarDetector_create(maxSize::Int64, responseThreshold::Int64, lineThresholdProjected::Int64, lineThresholdBinarized::Int64, suppressNonmaxSize::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_StarDetector_create(julia_to_cpp(maxSize),julia_to_cpp(responseThreshold),julia_to_cpp(lineThresholdProjected),julia_to_cpp(lineThresholdBinarized),julia_to_cpp(suppressNonmaxSize)))
end
xfeatures2d_StarDetector_create(; maxSize::Int64 = Int64(45), responseThreshold::Int64 = Int64(30), lineThresholdProjected::Int64 = Int64(10), lineThresholdBinarized::Int64 = Int64(8), suppressNonmaxSize::Int64 = Int64(5)) = xfeatures2d_StarDetector_create(maxSize, responseThreshold, lineThresholdProjected, lineThresholdBinarized, suppressNonmaxSize)

function xfeatures2d_BriefDescriptorExtractor_create(bytes::Int64, use_orientation::Bool)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BriefDescriptorExtractor_create(julia_to_cpp(bytes),julia_to_cpp(use_orientation)))
end
xfeatures2d_BriefDescriptorExtractor_create(; bytes::Int64 = Int64(32), use_orientation::Bool = (false)) = xfeatures2d_BriefDescriptorExtractor_create(bytes, use_orientation)

function xfeatures2d_LUCID_create(lucid_kernel::Int64, blur_kernel::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LUCID_create(julia_to_cpp(lucid_kernel),julia_to_cpp(blur_kernel)))
end
xfeatures2d_LUCID_create(; lucid_kernel::Int64 = Int64(1), blur_kernel::Int64 = Int64(2)) = xfeatures2d_LUCID_create(lucid_kernel, blur_kernel)

function xfeatures2d_LATCH_create(bytes::Int64, rotationInvariance::Bool, half_ssd_size::Int64, sigma::Float64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_LATCH_create(julia_to_cpp(bytes),julia_to_cpp(rotationInvariance),julia_to_cpp(half_ssd_size),julia_to_cpp(sigma)))
end
xfeatures2d_LATCH_create(; bytes::Int64 = Int64(32), rotationInvariance::Bool = (true), half_ssd_size::Int64 = Int64(3), sigma::Float64 = Float64(2.0)) = xfeatures2d_LATCH_create(bytes, rotationInvariance, half_ssd_size, sigma)

function xfeatures2d_BEBLID_create(scale_factor::Float64, n_bits::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BEBLID_create(julia_to_cpp(scale_factor),julia_to_cpp(n_bits)))
end
xfeatures2d_BEBLID_create(scale_factor::Float64; n_bits::Int64 = Int64(cpp_to_julia(BEBLIDggSIZERbXYRBITS()))) = xfeatures2d_BEBLID_create(scale_factor, n_bits)

function xfeatures2d_TEBLID_create(scale_factor::Float64, n_bits::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_TEBLID_create(julia_to_cpp(scale_factor),julia_to_cpp(n_bits)))
end
xfeatures2d_TEBLID_create(scale_factor::Float64; n_bits::Int64 = Int64(cpp_to_julia(TEBLIDggSIZERYbcRBITS()))) = xfeatures2d_TEBLID_create(scale_factor, n_bits)

function xfeatures2d_DAISY_create(radius::Float64, q_radius::Int64, q_theta::Int64, q_hist::Int64, norm::xfeatures2d_DAISY_NormalizationType, H::InputArray, interpolation::Bool, use_orientation::Bool)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_DAISY_create(julia_to_cpp(radius),julia_to_cpp(q_radius),julia_to_cpp(q_theta),julia_to_cpp(q_hist),julia_to_cpp(norm),julia_to_cpp(H),julia_to_cpp(interpolation),julia_to_cpp(use_orientation)))
end
xfeatures2d_DAISY_create(; radius::Float64 = Float64(15), q_radius::Int64 = Int64(3), q_theta::Int64 = Int64(8), q_hist::Int64 = Int64(8), norm::xfeatures2d_DAISY_NormalizationType = (cpp_to_julia(DAISYggNRMRNONE())), H::InputArray = (CxxMat()), interpolation::Bool = (true), use_orientation::Bool = (false)) = xfeatures2d_DAISY_create(radius, q_radius, q_theta, q_hist, norm, H, interpolation, use_orientation)

function xfeatures2d_MSDDetector_create(m_patch_radius::Int64, m_search_area_radius::Int64, m_nms_radius::Int64, m_nms_scale_radius::Int64, m_th_saliency::Float64, m_kNN::Int64, m_scale_factor::Float64, m_n_scales::Int64, m_compute_orientation::Bool)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_MSDDetector_create(julia_to_cpp(m_patch_radius),julia_to_cpp(m_search_area_radius),julia_to_cpp(m_nms_radius),julia_to_cpp(m_nms_scale_radius),julia_to_cpp(m_th_saliency),julia_to_cpp(m_kNN),julia_to_cpp(m_scale_factor),julia_to_cpp(m_n_scales),julia_to_cpp(m_compute_orientation)))
end
xfeatures2d_MSDDetector_create(; m_patch_radius::Int64 = Int64(3), m_search_area_radius::Int64 = Int64(5), m_nms_radius::Int64 = Int64(5), m_nms_scale_radius::Int64 = Int64(0), m_th_saliency::Float64 = Float64(250.0), m_kNN::Int64 = Int64(4), m_scale_factor::Float64 = Float64(1.25), m_n_scales::Int64 = Int64(-1), m_compute_orientation::Bool = (false)) = xfeatures2d_MSDDetector_create(m_patch_radius, m_search_area_radius, m_nms_radius, m_nms_scale_radius, m_th_saliency, m_kNN, m_scale_factor, m_n_scales, m_compute_orientation)

function xfeatures2d_VGG_create(desc::Int64, isigma::Float64, img_normalize::Bool, use_scale_orientation::Bool, scale_factor::Float64, dsc_normalize::Bool)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_VGG_create(julia_to_cpp(desc),julia_to_cpp(isigma),julia_to_cpp(img_normalize),julia_to_cpp(use_scale_orientation),julia_to_cpp(scale_factor),julia_to_cpp(dsc_normalize)))
end
xfeatures2d_VGG_create(; desc::Int64 = Int64(cpp_to_julia(VGGggVGGRXYW())), isigma::Float64 = Float64(1.4), img_normalize::Bool = (true), use_scale_orientation::Bool = (true), scale_factor::Float64 = Float64(6.25), dsc_normalize::Bool = (false)) = xfeatures2d_VGG_create(desc, isigma, img_normalize, use_scale_orientation, scale_factor, dsc_normalize)

function xfeatures2d_BoostDesc_create(desc::Int64, use_scale_orientation::Bool, scale_factor::Float64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BoostDesc_create(julia_to_cpp(desc),julia_to_cpp(use_scale_orientation),julia_to_cpp(scale_factor)))
end
xfeatures2d_BoostDesc_create(; desc::Int64 = Int64(cpp_to_julia(BoostDescggBINBOOSTRYbc())), use_scale_orientation::Bool = (true), scale_factor::Float64 = Float64(6.25)) = xfeatures2d_BoostDesc_create(desc, use_scale_orientation, scale_factor)

function xfeatures2d_PCTSignatures_create(initSampleCount::Int64, initSeedCount::Int64, pointDistribution::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_create(julia_to_cpp(initSampleCount),julia_to_cpp(initSeedCount),julia_to_cpp(pointDistribution)))
end
xfeatures2d_PCTSignatures_create(; initSampleCount::Int64 = Int64(2000), initSeedCount::Int64 = Int64(400), pointDistribution::Int64 = Int64(0)) = xfeatures2d_PCTSignatures_create(initSampleCount, initSeedCount, pointDistribution)

function xfeatures2d_PCTSignatures_create(initSamplingPoints::Array{Point{Float32}, 1}, initSeedCount::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_create(julia_to_cpp(initSamplingPoints),julia_to_cpp(initSeedCount)))
end

function xfeatures2d_PCTSignatures_create(initSamplingPoints::Array{Point{Float32}, 1}, initClusterSeedIndexes::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_create(julia_to_cpp(initSamplingPoints),julia_to_cpp(initClusterSeedIndexes)))
end

function xfeatures2d_PCTSignatures_drawSignature(source::InputArray, signature::InputArray, result::InputArray, radiusToShorterSideRatio::Float64, borderThickness::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_drawSignature(julia_to_cpp(source),julia_to_cpp(signature),julia_to_cpp(result),julia_to_cpp(radiusToShorterSideRatio),julia_to_cpp(borderThickness)))
end
xfeatures2d_PCTSignatures_drawSignature(source::InputArray, signature::InputArray; result::InputArray = (CxxMat()), radiusToShorterSideRatio::Float64 = Float64(cpp_to_julia(jlopencv_default_XUWGVGe())), borderThickness::Int64 = Int64(1)) = xfeatures2d_PCTSignatures_drawSignature(source, signature, result, radiusToShorterSideRatio, borderThickness)

function xfeatures2d_PCTSignatures_generateInitPoints(initPoints::Array{Point{Float32}, 1}, count::Int64, pointDistribution::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignatures_generateInitPoints(julia_to_cpp(initPoints),julia_to_cpp(count),julia_to_cpp(pointDistribution)))
end

function xfeatures2d_PCTSignaturesSQFD_create(distanceFunction::Int64, similarityFunction::Int64, similarityParameter::Float64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_PCTSignaturesSQFD_create(julia_to_cpp(distanceFunction),julia_to_cpp(similarityFunction),julia_to_cpp(similarityParameter)))
end
xfeatures2d_PCTSignaturesSQFD_create(; distanceFunction::Int64 = Int64(3), similarityFunction::Int64 = Int64(2), similarityParameter::Float64 = Float64(1.0)) = xfeatures2d_PCTSignaturesSQFD_create(distanceFunction, similarityFunction, similarityParameter)

function xfeatures2d_HarrisLaplaceFeatureDetector_create(numOctaves::Int64, corn_thresh::Float64, DOG_thresh::Float64, maxCorners::Int64, num_layers::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_HarrisLaplaceFeatureDetector_create(julia_to_cpp(numOctaves),julia_to_cpp(corn_thresh),julia_to_cpp(DOG_thresh),julia_to_cpp(maxCorners),julia_to_cpp(num_layers)))
end
xfeatures2d_HarrisLaplaceFeatureDetector_create(; numOctaves::Int64 = Int64(6), corn_thresh::Float64 = Float64(0.01), DOG_thresh::Float64 = Float64(0.01), maxCorners::Int64 = Int64(5000), num_layers::Int64 = Int64(4)) = xfeatures2d_HarrisLaplaceFeatureDetector_create(numOctaves, corn_thresh, DOG_thresh, maxCorners, num_layers)

function xfeatures2d_TBMR_create(min_area::Int64, max_area_relative::Float64, scale_factor::Float64, n_scales::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_TBMR_create(julia_to_cpp(min_area),julia_to_cpp(max_area_relative),julia_to_cpp(scale_factor),julia_to_cpp(n_scales)))
end
xfeatures2d_TBMR_create(; min_area::Int64 = Int64(60), max_area_relative::Float64 = Float64(0.01), scale_factor::Float64 = Float64(1.25), n_scales::Int64 = Int64(-1)) = xfeatures2d_TBMR_create(min_area, max_area_relative, scale_factor, n_scales)

function xfeatures2d_BRISK_create(thresh::Int64, octaves::Int64, patternScale::Float64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BRISK_create(julia_to_cpp(thresh),julia_to_cpp(octaves),julia_to_cpp(patternScale)))
end
xfeatures2d_BRISK_create(; thresh::Int64 = Int64(30), octaves::Int64 = Int64(3), patternScale::Float64 = Float64(1.0)) = xfeatures2d_BRISK_create(thresh, octaves, patternScale)

function xfeatures2d_BRISK_create(radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}, dMax::Float64, dMin::Float64, indexChange::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BRISK_create(julia_to_cpp(radiusList),julia_to_cpp(numberList),julia_to_cpp(dMax),julia_to_cpp(dMin),julia_to_cpp(indexChange)))
end
xfeatures2d_BRISK_create(radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}; dMax::Float64 = Float64(5.85), dMin::Float64 = Float64(8.2), indexChange::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = xfeatures2d_BRISK_create(radiusList, numberList, dMax, dMin, indexChange)

function xfeatures2d_BRISK_create(thresh::Int64, octaves::Int64, radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}, dMax::Float64, dMin::Float64, indexChange::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_BRISK_create(julia_to_cpp(thresh),julia_to_cpp(octaves),julia_to_cpp(radiusList),julia_to_cpp(numberList),julia_to_cpp(dMax),julia_to_cpp(dMin),julia_to_cpp(indexChange)))
end
xfeatures2d_BRISK_create(thresh::Int64, octaves::Int64, radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}; dMax::Float64 = Float64(5.85), dMin::Float64 = Float64(8.2), indexChange::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = xfeatures2d_BRISK_create(thresh, octaves, radiusList, numberList, dMax, dMin, indexChange)

function xfeatures2d_AgastFeatureDetector_create(threshold::Int64, nonmaxSuppression::Bool, type::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AgastFeatureDetector_create(julia_to_cpp(threshold),julia_to_cpp(nonmaxSuppression),julia_to_cpp(type)))
end
xfeatures2d_AgastFeatureDetector_create(; threshold::Int64 = Int64(10), nonmaxSuppression::Bool = (true), type::Int64 = Int64(cpp_to_julia(AgastFeatureDetectorggOASTRfRXc()))) = xfeatures2d_AgastFeatureDetector_create(threshold, nonmaxSuppression, type)

function xfeatures2d_KAZE_create(extended::Bool, upright::Bool, threshold::Float64, nOctaves::Int64, nOctaveLayers::Int64, diffusivity::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_KAZE_create(julia_to_cpp(extended),julia_to_cpp(upright),julia_to_cpp(threshold),julia_to_cpp(nOctaves),julia_to_cpp(nOctaveLayers),julia_to_cpp(diffusivity)))
end
xfeatures2d_KAZE_create(; extended::Bool = (false), upright::Bool = (false), threshold::Float64 = Float64(0.001), nOctaves::Int64 = Int64(4), nOctaveLayers::Int64 = Int64(4), diffusivity::Int64 = Int64(cpp_to_julia(KAZEggDIFFRPMRGY()))) = xfeatures2d_KAZE_create(extended, upright, threshold, nOctaves, nOctaveLayers, diffusivity)

function xfeatures2d_AKAZE_create(descriptor_type::Int64, descriptor_size::Int64, descriptor_channels::Int64, threshold::Float64, nOctaves::Int64, nOctaveLayers::Int64, diffusivity::Int64, max_points::Int64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_AKAZE_create(julia_to_cpp(descriptor_type),julia_to_cpp(descriptor_size),julia_to_cpp(descriptor_channels),julia_to_cpp(threshold),julia_to_cpp(nOctaves),julia_to_cpp(nOctaveLayers),julia_to_cpp(diffusivity),julia_to_cpp(max_points)))
end
xfeatures2d_AKAZE_create(; descriptor_type::Int64 = Int64(cpp_to_julia(AKAZEggDESCRIPTORRMLDB())), descriptor_size::Int64 = Int64(0), descriptor_channels::Int64 = Int64(3), threshold::Float64 = Float64(0.001), nOctaves::Int64 = Int64(4), nOctaveLayers::Int64 = Int64(4), diffusivity::Int64 = Int64(cpp_to_julia(KAZEggDIFFRPMRGY())), max_points::Int64 = Int64(-1)) = xfeatures2d_AKAZE_create(descriptor_type, descriptor_size, descriptor_channels, threshold, nOctaves, nOctaveLayers, diffusivity, max_points)

function xfeatures2d_matchGMS(size1::Size{Int32}, size2::Size{Int32}, keypoints1::Array{KeyPoint, 1}, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, withRotation::Bool, withScale::Bool, thresholdFactor::Float64)
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_matchGMS(julia_to_cpp(size1),julia_to_cpp(size2),julia_to_cpp(keypoints1),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(withRotation),julia_to_cpp(withScale),julia_to_cpp(thresholdFactor)))
end
xfeatures2d_matchGMS(size1::Size{Int32}, size2::Size{Int32}, keypoints1::Array{KeyPoint, 1}, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}; withRotation::Bool = (false), withScale::Bool = (false), thresholdFactor::Float64 = Float64(6.0)) = xfeatures2d_matchGMS(size1, size2, keypoints1, keypoints2, matches1to2, withRotation, withScale, thresholdFactor)

function xfeatures2d_matchLOGOS(keypoints1::Array{KeyPoint, 1}, keypoints2::Array{KeyPoint, 1}, nn1::Array{Int32, 1}, nn2::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_xfeatures2d_cv_xfeatures2d_matchLOGOS(julia_to_cpp(keypoints1),julia_to_cpp(keypoints2),julia_to_cpp(nn1),julia_to_cpp(nn2)))
end



