

   const ccm_CcmType = Int64 

   const ccm_InitialMethodType = Int64 

   const ccm_ColorCheckerType = Int64 

   const ccm_ColorSpace = Int64 

   const ccm_LinearizationType = Int64 

   const ccm_DistanceType = Int64 
function Base.getproperty(m::ColorCorrectionModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ColorCorrectionModel, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ccm_setColorSpace(cobj::ColorCorrectionModel, cs::ccm_ColorSpace)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setColorSpace(julia_to_cpp(cobj),julia_to_cpp(cs)))
end

function ccm_setCcmType(cobj::ColorCorrectionModel, ccmType::ccm_CcmType)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setCcmType(julia_to_cpp(cobj),julia_to_cpp(ccmType)))
end

function ccm_setDistance(cobj::ColorCorrectionModel, distance::ccm_DistanceType)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setDistance(julia_to_cpp(cobj),julia_to_cpp(distance)))
end

function ccm_setLinearization(cobj::ColorCorrectionModel, linearizationType::ccm_LinearizationType)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setLinearization(julia_to_cpp(cobj),julia_to_cpp(linearizationType)))
end

function ccm_setLinearizationGamma(cobj::ColorCorrectionModel, gamma::Float64)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setLinearizationGamma(julia_to_cpp(cobj),julia_to_cpp(gamma)))
end

function ccm_setLinearizationDegree(cobj::ColorCorrectionModel, deg::Int64)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setLinearizationDegree(julia_to_cpp(cobj),julia_to_cpp(deg)))
end

function ccm_setSaturatedThreshold(cobj::ColorCorrectionModel, lower::Float64, upper::Float64)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setSaturatedThreshold(julia_to_cpp(cobj),julia_to_cpp(lower),julia_to_cpp(upper)))
end

function ccm_setWeightsList(cobj::ColorCorrectionModel, weightsList::InputArray)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setWeightsList(julia_to_cpp(cobj),julia_to_cpp(weightsList)))
end

function ccm_setWeightCoeff(cobj::ColorCorrectionModel, weightsCoeff::Float64)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setWeightCoeff(julia_to_cpp(cobj),julia_to_cpp(weightsCoeff)))
end

function ccm_setInitialMethod(cobj::ColorCorrectionModel, initialMethodType::ccm_InitialMethodType)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setInitialMethod(julia_to_cpp(cobj),julia_to_cpp(initialMethodType)))
end

function ccm_setMaxCount(cobj::ColorCorrectionModel, maxCount::Int64)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setMaxCount(julia_to_cpp(cobj),julia_to_cpp(maxCount)))
end

function ccm_setEpsilon(cobj::ColorCorrectionModel, epsilon::Float64)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setEpsilon(julia_to_cpp(cobj),julia_to_cpp(epsilon)))
end

function ccm_setRGB(cobj::ColorCorrectionModel, rgb::Bool)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_setRGB(julia_to_cpp(cobj),julia_to_cpp(rgb)))
end

function ccm_compute(cobj::ColorCorrectionModel)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_compute(julia_to_cpp(cobj)))
end

function ccm_getColorCorrectionMatrix(cobj::ColorCorrectionModel)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_getColorCorrectionMatrix(julia_to_cpp(cobj)))
end

function ccm_getLoss(cobj::ColorCorrectionModel)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_getLoss(julia_to_cpp(cobj)))
end

function ccm_getSrcLinearRGB(cobj::ColorCorrectionModel)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_getSrcLinearRGB(julia_to_cpp(cobj)))
end

function ccm_getRefLinearRGB(cobj::ColorCorrectionModel)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_getRefLinearRGB(julia_to_cpp(cobj)))
end

function ccm_getMask(cobj::ColorCorrectionModel)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_getMask(julia_to_cpp(cobj)))
end

function ccm_getWeights(cobj::ColorCorrectionModel)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_getWeights(julia_to_cpp(cobj)))
end

function ccm_correctImage(cobj::ColorCorrectionModel, src::InputArray, dst::InputArray, islinear::Bool)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_correctImage(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(islinear)))
end
ccm_correctImage(cobj::ColorCorrectionModel, src::InputArray; dst::InputArray = (CxxMat()), islinear::Bool = (false)) = ccm_correctImage(cobj, src, dst, islinear)

function ccm_write(cobj::ColorCorrectionModel, fs::FileStorage)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_write(julia_to_cpp(cobj),julia_to_cpp(fs)))
end

function ccm_read(cobj::ColorCorrectionModel, node::FileNode)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_read(julia_to_cpp(cobj),julia_to_cpp(node)))
end

function ccm_ColorCorrectionModel()
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_ColorCorrectionModel())
end

function ccm_ColorCorrectionModel(src::InputArray, constColor::Int64)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_ColorCorrectionModel(julia_to_cpp(src),julia_to_cpp(constColor)))
end

function ccm_ColorCorrectionModel(src::InputArray, colors::InputArray, refColorSpace::ccm_ColorSpace)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_ColorCorrectionModel(julia_to_cpp(src),julia_to_cpp(colors),julia_to_cpp(refColorSpace)))
end

function ccm_ColorCorrectionModel(src::InputArray, colors::InputArray, refColorSpace::ccm_ColorSpace, coloredPatchesMask::InputArray)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_ColorCorrectionModel_cv_ccm_ColorCorrectionModel_ColorCorrectionModel(julia_to_cpp(src),julia_to_cpp(colors),julia_to_cpp(refColorSpace),julia_to_cpp(coloredPatchesMask)))
end

function ccm_gammaCorrection(src::InputArray, gamma::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_ccm_cv_ccm_gammaCorrection(julia_to_cpp(src),julia_to_cpp(gamma),julia_to_cpp(dst)))
end
ccm_gammaCorrection(src::InputArray, gamma::Float64; dst::InputArray = (CxxMat())) = ccm_gammaCorrection(src, gamma, dst)



