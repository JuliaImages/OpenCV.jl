

   const xphoto_InpaintTypes = Int64 

   const xphoto_TransformTypes = Int64 

   const xphoto_Bm3dSteps = Int64 
function Base.getproperty(m::cv_Ptr{WhiteBalancer}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{WhiteBalancer}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xphoto_balanceWhite(cobj::cv_Ptr{T}, src::InputArray, dst::InputArray) where {T <: WhiteBalancer}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_WhiteBalancer_cv_xphoto_WhiteBalancer_balanceWhite(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
xphoto_balanceWhite(cobj::cv_Ptr{T}, src::InputArray; dst::InputArray = (CxxMat())) where {T <: WhiteBalancer} = xphoto_balanceWhite(cobj, src, dst)
function Base.getproperty(m::cv_Ptr{SimpleWB}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SimpleWB}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xphoto_getInputMin(cobj::cv_Ptr{T}) where {T <: SimpleWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_SimpleWB_cv_xphoto_SimpleWB_getInputMin(julia_to_cpp(cobj)))
end

function xphoto_setInputMin(cobj::cv_Ptr{T}, val::Float64) where {T <: SimpleWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_SimpleWB_cv_xphoto_SimpleWB_setInputMin(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function xphoto_getInputMax(cobj::cv_Ptr{T}) where {T <: SimpleWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_SimpleWB_cv_xphoto_SimpleWB_getInputMax(julia_to_cpp(cobj)))
end

function xphoto_setInputMax(cobj::cv_Ptr{T}, val::Float64) where {T <: SimpleWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_SimpleWB_cv_xphoto_SimpleWB_setInputMax(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function xphoto_getOutputMin(cobj::cv_Ptr{T}) where {T <: SimpleWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_SimpleWB_cv_xphoto_SimpleWB_getOutputMin(julia_to_cpp(cobj)))
end

function xphoto_setOutputMin(cobj::cv_Ptr{T}, val::Float64) where {T <: SimpleWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_SimpleWB_cv_xphoto_SimpleWB_setOutputMin(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function xphoto_getOutputMax(cobj::cv_Ptr{T}) where {T <: SimpleWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_SimpleWB_cv_xphoto_SimpleWB_getOutputMax(julia_to_cpp(cobj)))
end

function xphoto_setOutputMax(cobj::cv_Ptr{T}, val::Float64) where {T <: SimpleWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_SimpleWB_cv_xphoto_SimpleWB_setOutputMax(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function xphoto_getP(cobj::cv_Ptr{T}) where {T <: SimpleWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_SimpleWB_cv_xphoto_SimpleWB_getP(julia_to_cpp(cobj)))
end

function xphoto_setP(cobj::cv_Ptr{T}, val::Float64) where {T <: SimpleWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_SimpleWB_cv_xphoto_SimpleWB_setP(julia_to_cpp(cobj),julia_to_cpp(val)))
end
function Base.getproperty(m::cv_Ptr{GrayworldWB}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GrayworldWB}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xphoto_getSaturationThreshold(cobj::cv_Ptr{T}) where {T <: GrayworldWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_GrayworldWB_cv_xphoto_GrayworldWB_getSaturationThreshold(julia_to_cpp(cobj)))
end

function xphoto_setSaturationThreshold(cobj::cv_Ptr{T}, val::Float64) where {T <: GrayworldWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_GrayworldWB_cv_xphoto_GrayworldWB_setSaturationThreshold(julia_to_cpp(cobj),julia_to_cpp(val)))
end
function Base.getproperty(m::cv_Ptr{LearningBasedWB}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{LearningBasedWB}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xphoto_extractSimpleFeatures(cobj::cv_Ptr{T}, src::InputArray, dst::InputArray) where {T <: LearningBasedWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_LearningBasedWB_cv_xphoto_LearningBasedWB_extractSimpleFeatures(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
xphoto_extractSimpleFeatures(cobj::cv_Ptr{T}, src::InputArray; dst::InputArray = (CxxMat())) where {T <: LearningBasedWB} = xphoto_extractSimpleFeatures(cobj, src, dst)

function xphoto_getRangeMaxVal(cobj::cv_Ptr{T}) where {T <: LearningBasedWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_LearningBasedWB_cv_xphoto_LearningBasedWB_getRangeMaxVal(julia_to_cpp(cobj)))
end

function xphoto_setRangeMaxVal(cobj::cv_Ptr{T}, val::Int64) where {T <: LearningBasedWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_LearningBasedWB_cv_xphoto_LearningBasedWB_setRangeMaxVal(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function xphoto_getSaturationThreshold(cobj::cv_Ptr{T}) where {T <: LearningBasedWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_LearningBasedWB_cv_xphoto_LearningBasedWB_getSaturationThreshold(julia_to_cpp(cobj)))
end

function xphoto_setSaturationThreshold(cobj::cv_Ptr{T}, val::Float64) where {T <: LearningBasedWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_LearningBasedWB_cv_xphoto_LearningBasedWB_setSaturationThreshold(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function xphoto_getHistBinNum(cobj::cv_Ptr{T}) where {T <: LearningBasedWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_LearningBasedWB_cv_xphoto_LearningBasedWB_getHistBinNum(julia_to_cpp(cobj)))
end

function xphoto_setHistBinNum(cobj::cv_Ptr{T}, val::Int64) where {T <: LearningBasedWB}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_LearningBasedWB_cv_xphoto_LearningBasedWB_setHistBinNum(julia_to_cpp(cobj),julia_to_cpp(val)))
end
function Base.getproperty(m::cv_Ptr{TonemapDurand}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TonemapDurand}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function xphoto_getSaturation(cobj::cv_Ptr{T}) where {T <: TonemapDurand}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_TonemapDurand_cv_xphoto_TonemapDurand_getSaturation(julia_to_cpp(cobj)))
end

function xphoto_setSaturation(cobj::cv_Ptr{T}, saturation::Float64) where {T <: TonemapDurand}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_TonemapDurand_cv_xphoto_TonemapDurand_setSaturation(julia_to_cpp(cobj),julia_to_cpp(saturation)))
end

function xphoto_getContrast(cobj::cv_Ptr{T}) where {T <: TonemapDurand}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_TonemapDurand_cv_xphoto_TonemapDurand_getContrast(julia_to_cpp(cobj)))
end

function xphoto_setContrast(cobj::cv_Ptr{T}, contrast::Float64) where {T <: TonemapDurand}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_TonemapDurand_cv_xphoto_TonemapDurand_setContrast(julia_to_cpp(cobj),julia_to_cpp(contrast)))
end

function xphoto_getSigmaSpace(cobj::cv_Ptr{T}) where {T <: TonemapDurand}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_TonemapDurand_cv_xphoto_TonemapDurand_getSigmaSpace(julia_to_cpp(cobj)))
end

function xphoto_setSigmaSpace(cobj::cv_Ptr{T}, sigma_space::Float64) where {T <: TonemapDurand}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_TonemapDurand_cv_xphoto_TonemapDurand_setSigmaSpace(julia_to_cpp(cobj),julia_to_cpp(sigma_space)))
end

function xphoto_getSigmaColor(cobj::cv_Ptr{T}) where {T <: TonemapDurand}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_TonemapDurand_cv_xphoto_TonemapDurand_getSigmaColor(julia_to_cpp(cobj)))
end

function xphoto_setSigmaColor(cobj::cv_Ptr{T}, sigma_color::Float64) where {T <: TonemapDurand}
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_TonemapDurand_cv_xphoto_TonemapDurand_setSigmaColor(julia_to_cpp(cobj),julia_to_cpp(sigma_color)))
end

function xphoto_createSimpleWB()
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_createSimpleWB())
end

function xphoto_createGrayworldWB()
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_createGrayworldWB())
end

function xphoto_createLearningBasedWB(path_to_model::String)
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_createLearningBasedWB(julia_to_cpp(path_to_model)))
end
xphoto_createLearningBasedWB(; path_to_model::String = ("")) = xphoto_createLearningBasedWB(path_to_model)

function xphoto_applyChannelGains(src::InputArray, gainB::Float64, gainG::Float64, gainR::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_applyChannelGains(julia_to_cpp(src),julia_to_cpp(gainB),julia_to_cpp(gainG),julia_to_cpp(gainR),julia_to_cpp(dst)))
end
xphoto_applyChannelGains(src::InputArray, gainB::Float64, gainG::Float64, gainR::Float64; dst::InputArray = (CxxMat())) = xphoto_applyChannelGains(src, gainB, gainG, gainR, dst)

function xphoto_createTonemapDurand(gamma::Float64, contrast::Float64, saturation::Float64, sigma_color::Float64, sigma_space::Float64)
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_createTonemapDurand(julia_to_cpp(gamma),julia_to_cpp(contrast),julia_to_cpp(saturation),julia_to_cpp(sigma_color),julia_to_cpp(sigma_space)))
end
xphoto_createTonemapDurand(; gamma::Float64 = Float64(1.0), contrast::Float64 = Float64(4.0), saturation::Float64 = Float64(1.0), sigma_color::Float64 = Float64(2.0), sigma_space::Float64 = Float64(2.0)) = xphoto_createTonemapDurand(gamma, contrast, saturation, sigma_color, sigma_space)

function xphoto_oilPainting(src::InputArray, size::Int64, dynRatio::Int64, code::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_oilPainting(julia_to_cpp(src),julia_to_cpp(size),julia_to_cpp(dynRatio),julia_to_cpp(code),julia_to_cpp(dst)))
end
xphoto_oilPainting(src::InputArray, size::Int64, dynRatio::Int64, code::Int64; dst::InputArray = (CxxMat())) = xphoto_oilPainting(src, size, dynRatio, code, dst)

function xphoto_oilPainting(src::InputArray, size::Int64, dynRatio::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_oilPainting(julia_to_cpp(src),julia_to_cpp(size),julia_to_cpp(dynRatio),julia_to_cpp(dst)))
end
xphoto_oilPainting(src::InputArray, size::Int64, dynRatio::Int64; dst::InputArray = (CxxMat())) = xphoto_oilPainting(src, size, dynRatio, dst)

function xphoto_inpaint(src::InputArray, mask::InputArray, dst::InputArray, algorithmType::Int64)
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_inpaint(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst),julia_to_cpp(algorithmType)))
end

function xphoto_dctDenoising(src::InputArray, dst::InputArray, sigma::Float64, psize::Int64)
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_dctDenoising(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(sigma),julia_to_cpp(psize)))
end
xphoto_dctDenoising(src::InputArray, dst::InputArray, sigma::Float64; psize::Int64 = Int64(16)) = xphoto_dctDenoising(src, dst, sigma, psize)

function xphoto_bm3dDenoising(src::InputArray, dstStep1::InputArray, dstStep2::InputArray, h::Float64, templateWindowSize::Int64, searchWindowSize::Int64, blockMatchingStep1::Int64, blockMatchingStep2::Int64, groupSize::Int64, slidingStep::Int64, beta::Float64, normType::Int64, step::Int64, transformType::Int64)
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_bm3dDenoising(julia_to_cpp(src),julia_to_cpp(dstStep1),julia_to_cpp(dstStep2),julia_to_cpp(h),julia_to_cpp(templateWindowSize),julia_to_cpp(searchWindowSize),julia_to_cpp(blockMatchingStep1),julia_to_cpp(blockMatchingStep2),julia_to_cpp(groupSize),julia_to_cpp(slidingStep),julia_to_cpp(beta),julia_to_cpp(normType),julia_to_cpp(step),julia_to_cpp(transformType)))
end
xphoto_bm3dDenoising(src::InputArray, dstStep1::InputArray; dstStep2::InputArray = (CxxMat()), h::Float64 = Float64(1), templateWindowSize::Int64 = Int64(4), searchWindowSize::Int64 = Int64(16), blockMatchingStep1::Int64 = Int64(2500), blockMatchingStep2::Int64 = Int64(400), groupSize::Int64 = Int64(8), slidingStep::Int64 = Int64(1), beta::Float64 = Float64(2.0), normType::Int64 = Int64(cv_NORM_L2), step::Int64 = Int64(cpp_to_julia(cvggxphotoggBMZDRSTEPALL())), transformType::Int64 = Int64(cpp_to_julia(cvggxphotoggHAAR()))) = xphoto_bm3dDenoising(src, dstStep1, dstStep2, h, templateWindowSize, searchWindowSize, blockMatchingStep1, blockMatchingStep2, groupSize, slidingStep, beta, normType, step, transformType)

function xphoto_bm3dDenoising(src::InputArray, dst::InputArray, h::Float64, templateWindowSize::Int64, searchWindowSize::Int64, blockMatchingStep1::Int64, blockMatchingStep2::Int64, groupSize::Int64, slidingStep::Int64, beta::Float64, normType::Int64, step::Int64, transformType::Int64)
	return cpp_to_julia(jlopencv_cv_xphoto_cv_xphoto_bm3dDenoising(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(h),julia_to_cpp(templateWindowSize),julia_to_cpp(searchWindowSize),julia_to_cpp(blockMatchingStep1),julia_to_cpp(blockMatchingStep2),julia_to_cpp(groupSize),julia_to_cpp(slidingStep),julia_to_cpp(beta),julia_to_cpp(normType),julia_to_cpp(step),julia_to_cpp(transformType)))
end
xphoto_bm3dDenoising(src::InputArray; dst::InputArray = (CxxMat()), h::Float64 = Float64(1), templateWindowSize::Int64 = Int64(4), searchWindowSize::Int64 = Int64(16), blockMatchingStep1::Int64 = Int64(2500), blockMatchingStep2::Int64 = Int64(400), groupSize::Int64 = Int64(8), slidingStep::Int64 = Int64(1), beta::Float64 = Float64(2.0), normType::Int64 = Int64(cv_NORM_L2), step::Int64 = Int64(cpp_to_julia(cvggxphotoggBMZDRSTEPALL())), transformType::Int64 = Int64(cpp_to_julia(cvggxphotoggHAAR()))) = xphoto_bm3dDenoising(src, dst, h, templateWindowSize, searchWindowSize, blockMatchingStep1, blockMatchingStep2, groupSize, slidingStep, beta, normType, step, transformType)



