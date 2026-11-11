

   const optflow_SupportRegionType = Int64 

   const optflow_SolverType = Int64 

   const optflow_InterpolationType = Int64 
function Base.getproperty(m::cv_Ptr{DualTVL1OpticalFlow}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{DualTVL1OpticalFlow}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function optflow_getTau(cobj::cv_Ptr{T}) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_getTau(julia_to_cpp(cobj)))
end

function optflow_setTau(cobj::cv_Ptr{T}, val::Float64) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_setTau(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getLambda(cobj::cv_Ptr{T}) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_getLambda(julia_to_cpp(cobj)))
end

function optflow_setLambda(cobj::cv_Ptr{T}, val::Float64) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_setLambda(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getTheta(cobj::cv_Ptr{T}) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_getTheta(julia_to_cpp(cobj)))
end

function optflow_setTheta(cobj::cv_Ptr{T}, val::Float64) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_setTheta(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getGamma(cobj::cv_Ptr{T}) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_getGamma(julia_to_cpp(cobj)))
end

function optflow_setGamma(cobj::cv_Ptr{T}, val::Float64) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_setGamma(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getScalesNumber(cobj::cv_Ptr{T}) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_getScalesNumber(julia_to_cpp(cobj)))
end

function optflow_setScalesNumber(cobj::cv_Ptr{T}, val::Int64) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_setScalesNumber(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getWarpingsNumber(cobj::cv_Ptr{T}) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_getWarpingsNumber(julia_to_cpp(cobj)))
end

function optflow_setWarpingsNumber(cobj::cv_Ptr{T}, val::Int64) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_setWarpingsNumber(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getEpsilon(cobj::cv_Ptr{T}) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_getEpsilon(julia_to_cpp(cobj)))
end

function optflow_setEpsilon(cobj::cv_Ptr{T}, val::Float64) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_setEpsilon(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getInnerIterations(cobj::cv_Ptr{T}) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_getInnerIterations(julia_to_cpp(cobj)))
end

function optflow_setInnerIterations(cobj::cv_Ptr{T}, val::Int64) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_setInnerIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getOuterIterations(cobj::cv_Ptr{T}) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_getOuterIterations(julia_to_cpp(cobj)))
end

function optflow_setOuterIterations(cobj::cv_Ptr{T}, val::Int64) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_setOuterIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getUseInitialFlow(cobj::cv_Ptr{T}) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_getUseInitialFlow(julia_to_cpp(cobj)))
end

function optflow_setUseInitialFlow(cobj::cv_Ptr{T}, val::Bool) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_setUseInitialFlow(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getScaleStep(cobj::cv_Ptr{T}) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_getScaleStep(julia_to_cpp(cobj)))
end

function optflow_setScaleStep(cobj::cv_Ptr{T}, val::Float64) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_setScaleStep(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getMedianFiltering(cobj::cv_Ptr{T}) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_getMedianFiltering(julia_to_cpp(cobj)))
end

function optflow_setMedianFiltering(cobj::cv_Ptr{T}, val::Int64) where {T <: DualTVL1OpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_cv_optflow_DualTVL1OpticalFlow_setMedianFiltering(julia_to_cpp(cobj),julia_to_cpp(val)))
end
function Base.getproperty(m::PCAPrior, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::PCAPrior, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{OpticalFlowPCAFlow}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{OpticalFlowPCAFlow}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{RLOFOpticalFlowParameter}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{RLOFOpticalFlowParameter}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function optflow_setUseMEstimator(cobj::cv_Ptr{T}, val::Bool) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setUseMEstimator(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_setSolverType(cobj::cv_Ptr{T}, val::optflow_SolverType) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setSolverType(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getSolverType(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getSolverType(julia_to_cpp(cobj)))
end

function optflow_setSupportRegionType(cobj::cv_Ptr{T}, val::optflow_SupportRegionType) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setSupportRegionType(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getSupportRegionType(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getSupportRegionType(julia_to_cpp(cobj)))
end

function optflow_setNormSigma0(cobj::cv_Ptr{T}, val::Float64) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setNormSigma0(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getNormSigma0(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getNormSigma0(julia_to_cpp(cobj)))
end

function optflow_setNormSigma1(cobj::cv_Ptr{T}, val::Float64) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setNormSigma1(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getNormSigma1(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getNormSigma1(julia_to_cpp(cobj)))
end

function optflow_setSmallWinSize(cobj::cv_Ptr{T}, val::Int64) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setSmallWinSize(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getSmallWinSize(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getSmallWinSize(julia_to_cpp(cobj)))
end

function optflow_setLargeWinSize(cobj::cv_Ptr{T}, val::Int64) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setLargeWinSize(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getLargeWinSize(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getLargeWinSize(julia_to_cpp(cobj)))
end

function optflow_setCrossSegmentationThreshold(cobj::cv_Ptr{T}, val::Int64) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setCrossSegmentationThreshold(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getCrossSegmentationThreshold(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getCrossSegmentationThreshold(julia_to_cpp(cobj)))
end

function optflow_setMaxLevel(cobj::cv_Ptr{T}, val::Int64) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setMaxLevel(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getMaxLevel(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getMaxLevel(julia_to_cpp(cobj)))
end

function optflow_setUseInitialFlow(cobj::cv_Ptr{T}, val::Bool) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setUseInitialFlow(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getUseInitialFlow(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getUseInitialFlow(julia_to_cpp(cobj)))
end

function optflow_setUseIlluminationModel(cobj::cv_Ptr{T}, val::Bool) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setUseIlluminationModel(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getUseIlluminationModel(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getUseIlluminationModel(julia_to_cpp(cobj)))
end

function optflow_setUseGlobalMotionPrior(cobj::cv_Ptr{T}, val::Bool) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setUseGlobalMotionPrior(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getUseGlobalMotionPrior(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getUseGlobalMotionPrior(julia_to_cpp(cobj)))
end

function optflow_setMaxIteration(cobj::cv_Ptr{T}, val::Int64) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setMaxIteration(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getMaxIteration(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getMaxIteration(julia_to_cpp(cobj)))
end

function optflow_setMinEigenValue(cobj::cv_Ptr{T}, val::Float64) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setMinEigenValue(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getMinEigenValue(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getMinEigenValue(julia_to_cpp(cobj)))
end

function optflow_setGlobalMotionRansacThreshold(cobj::cv_Ptr{T}, val::Float64) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_setGlobalMotionRansacThreshold(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getGlobalMotionRansacThreshold(cobj::cv_Ptr{T}) where {T <: RLOFOpticalFlowParameter}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_cv_optflow_RLOFOpticalFlowParameter_getGlobalMotionRansacThreshold(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{DenseRLOFOpticalFlow}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{DenseRLOFOpticalFlow}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function optflow_setRLOFOpticalFlowParameter(cobj::cv_Ptr{T}, val::cv_Ptr{<:RLOFOpticalFlowParameter}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setRLOFOpticalFlowParameter(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getRLOFOpticalFlowParameter(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getRLOFOpticalFlowParameter(julia_to_cpp(cobj)))
end

function optflow_setForwardBackward(cobj::cv_Ptr{T}, val::Float64) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setForwardBackward(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getForwardBackward(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getForwardBackward(julia_to_cpp(cobj)))
end

function optflow_getGridStep(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getGridStep(julia_to_cpp(cobj)))
end

function optflow_setGridStep(cobj::cv_Ptr{T}, val::Size{Int32}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setGridStep(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_setInterpolation(cobj::cv_Ptr{T}, val::optflow_InterpolationType) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setInterpolation(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getInterpolation(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getInterpolation(julia_to_cpp(cobj)))
end

function optflow_getEPICK(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getEPICK(julia_to_cpp(cobj)))
end

function optflow_setEPICK(cobj::cv_Ptr{T}, val::Int64) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setEPICK(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getEPICSigma(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getEPICSigma(julia_to_cpp(cobj)))
end

function optflow_setEPICSigma(cobj::cv_Ptr{T}, val::Float64) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setEPICSigma(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getEPICLambda(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getEPICLambda(julia_to_cpp(cobj)))
end

function optflow_setEPICLambda(cobj::cv_Ptr{T}, val::Float64) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setEPICLambda(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getFgsLambda(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getFgsLambda(julia_to_cpp(cobj)))
end

function optflow_setFgsLambda(cobj::cv_Ptr{T}, val::Float64) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setFgsLambda(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getFgsSigma(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getFgsSigma(julia_to_cpp(cobj)))
end

function optflow_setFgsSigma(cobj::cv_Ptr{T}, val::Float64) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setFgsSigma(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_setUsePostProc(cobj::cv_Ptr{T}, val::Bool) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setUsePostProc(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getUsePostProc(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getUsePostProc(julia_to_cpp(cobj)))
end

function optflow_setUseVariationalRefinement(cobj::cv_Ptr{T}, val::Bool) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setUseVariationalRefinement(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getUseVariationalRefinement(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getUseVariationalRefinement(julia_to_cpp(cobj)))
end

function optflow_setRICSPSize(cobj::cv_Ptr{T}, val::Int64) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setRICSPSize(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getRICSPSize(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getRICSPSize(julia_to_cpp(cobj)))
end

function optflow_setRICSLICType(cobj::cv_Ptr{T}, val::Int64) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_setRICSLICType(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getRICSLICType(cobj::cv_Ptr{T}) where {T <: DenseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_cv_optflow_DenseRLOFOpticalFlow_getRICSLICType(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{SparseRLOFOpticalFlow}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SparseRLOFOpticalFlow}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function optflow_setRLOFOpticalFlowParameter(cobj::cv_Ptr{T}, val::cv_Ptr{<:RLOFOpticalFlowParameter}) where {T <: SparseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_SparseRLOFOpticalFlow_cv_optflow_SparseRLOFOpticalFlow_setRLOFOpticalFlowParameter(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getRLOFOpticalFlowParameter(cobj::cv_Ptr{T}) where {T <: SparseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_SparseRLOFOpticalFlow_cv_optflow_SparseRLOFOpticalFlow_getRLOFOpticalFlowParameter(julia_to_cpp(cobj)))
end

function optflow_setForwardBackward(cobj::cv_Ptr{T}, val::Float64) where {T <: SparseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_SparseRLOFOpticalFlow_cv_optflow_SparseRLOFOpticalFlow_setForwardBackward(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function optflow_getForwardBackward(cobj::cv_Ptr{T}) where {T <: SparseRLOFOpticalFlow}
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_SparseRLOFOpticalFlow_cv_optflow_SparseRLOFOpticalFlow_getForwardBackward(julia_to_cpp(cobj)))
end

function optflow_calcOpticalFlowSF(from::InputArray, to::InputArray, layers::Int64, averaging_block_size::Int64, max_flow::Int64, flow::InputArray)
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_calcOpticalFlowSF(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(layers),julia_to_cpp(averaging_block_size),julia_to_cpp(max_flow),julia_to_cpp(flow)))
end
optflow_calcOpticalFlowSF(from::InputArray, to::InputArray, layers::Int64, averaging_block_size::Int64, max_flow::Int64; flow::InputArray = (CxxMat())) = optflow_calcOpticalFlowSF(from, to, layers, averaging_block_size, max_flow, flow)

function optflow_calcOpticalFlowSF(from::InputArray, to::InputArray, layers::Int64, averaging_block_size::Int64, max_flow::Int64, sigma_dist::Float64, sigma_color::Float64, postprocess_window::Int64, sigma_dist_fix::Float64, sigma_color_fix::Float64, occ_thr::Float64, upscale_averaging_radius::Int64, upscale_sigma_dist::Float64, upscale_sigma_color::Float64, speed_up_thr::Float64, flow::InputArray)
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_calcOpticalFlowSF(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(layers),julia_to_cpp(averaging_block_size),julia_to_cpp(max_flow),julia_to_cpp(sigma_dist),julia_to_cpp(sigma_color),julia_to_cpp(postprocess_window),julia_to_cpp(sigma_dist_fix),julia_to_cpp(sigma_color_fix),julia_to_cpp(occ_thr),julia_to_cpp(upscale_averaging_radius),julia_to_cpp(upscale_sigma_dist),julia_to_cpp(upscale_sigma_color),julia_to_cpp(speed_up_thr),julia_to_cpp(flow)))
end
optflow_calcOpticalFlowSF(from::InputArray, to::InputArray, layers::Int64, averaging_block_size::Int64, max_flow::Int64, sigma_dist::Float64, sigma_color::Float64, postprocess_window::Int64, sigma_dist_fix::Float64, sigma_color_fix::Float64, occ_thr::Float64, upscale_averaging_radius::Int64, upscale_sigma_dist::Float64, upscale_sigma_color::Float64, speed_up_thr::Float64; flow::InputArray = (CxxMat())) = optflow_calcOpticalFlowSF(from, to, layers, averaging_block_size, max_flow, sigma_dist, sigma_color, postprocess_window, sigma_dist_fix, sigma_color_fix, occ_thr, upscale_averaging_radius, upscale_sigma_dist, upscale_sigma_color, speed_up_thr, flow)

function optflow_calcOpticalFlowSparseToDense(from::InputArray, to::InputArray, flow::InputArray, grid_step::Int64, k::Int64, sigma::Float64, use_post_proc::Bool, fgs_lambda::Float64, fgs_sigma::Float64)
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_calcOpticalFlowSparseToDense(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(flow),julia_to_cpp(grid_step),julia_to_cpp(k),julia_to_cpp(sigma),julia_to_cpp(use_post_proc),julia_to_cpp(fgs_lambda),julia_to_cpp(fgs_sigma)))
end
optflow_calcOpticalFlowSparseToDense(from::InputArray, to::InputArray; flow::InputArray = (CxxMat()), grid_step::Int64 = Int64(8), k::Int64 = Int64(128), sigma::Float64 = Float64(0.05), use_post_proc::Bool = (true), fgs_lambda::Float64 = Float64(500.0), fgs_sigma::Float64 = Float64(1.5)) = optflow_calcOpticalFlowSparseToDense(from, to, flow, grid_step, k, sigma, use_post_proc, fgs_lambda, fgs_sigma)

function optflow_createOptFlow_DeepFlow()
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_createOptFlow_DeepFlow())
end

function optflow_createOptFlow_SimpleFlow()
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_createOptFlow_SimpleFlow())
end

function optflow_createOptFlow_Farneback()
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_createOptFlow_Farneback())
end

function optflow_createOptFlow_SparseToDense()
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_createOptFlow_SparseToDense())
end

function optflow_DualTVL1OpticalFlow_create(tau::Float64, lambda::Float64, theta::Float64, nscales::Int64, warps::Int64, epsilon::Float64, innnerIterations::Int64, outerIterations::Int64, scaleStep::Float64, gamma::Float64, medianFiltering::Int64, useInitialFlow::Bool)
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DualTVL1OpticalFlow_create(julia_to_cpp(tau),julia_to_cpp(lambda),julia_to_cpp(theta),julia_to_cpp(nscales),julia_to_cpp(warps),julia_to_cpp(epsilon),julia_to_cpp(innnerIterations),julia_to_cpp(outerIterations),julia_to_cpp(scaleStep),julia_to_cpp(gamma),julia_to_cpp(medianFiltering),julia_to_cpp(useInitialFlow)))
end
optflow_DualTVL1OpticalFlow_create(; tau::Float64 = Float64(0.25), lambda::Float64 = Float64(0.15), theta::Float64 = Float64(0.3), nscales::Int64 = Int64(5), warps::Int64 = Int64(5), epsilon::Float64 = Float64(0.01), innnerIterations::Int64 = Int64(30), outerIterations::Int64 = Int64(10), scaleStep::Float64 = Float64(0.8), gamma::Float64 = Float64(0.0), medianFiltering::Int64 = Int64(5), useInitialFlow::Bool = (false)) = optflow_DualTVL1OpticalFlow_create(tau, lambda, theta, nscales, warps, epsilon, innnerIterations, outerIterations, scaleStep, gamma, medianFiltering, useInitialFlow)

function optflow_createOptFlow_DualTVL1()
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_createOptFlow_DualTVL1())
end

function optflow_createOptFlow_PCAFlow()
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_createOptFlow_PCAFlow())
end

function optflow_RLOFOpticalFlowParameter_create()
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_RLOFOpticalFlowParameter_create())
end

function optflow_DenseRLOFOpticalFlow_create(rlofParam::cv_Ptr{<:RLOFOpticalFlowParameter}, forwardBackwardThreshold::Float64, gridStep::Size{Int32}, interp_type::optflow_InterpolationType, epicK::Int64, epicSigma::Float64, epicLambda::Float64, ricSPSize::Int64, ricSLICType::Int64, use_post_proc::Bool, fgsLambda::Float64, fgsSigma::Float64, use_variational_refinement::Bool)
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_DenseRLOFOpticalFlow_create(julia_to_cpp(rlofParam),julia_to_cpp(forwardBackwardThreshold),julia_to_cpp(gridStep),julia_to_cpp(interp_type),julia_to_cpp(epicK),julia_to_cpp(epicSigma),julia_to_cpp(epicLambda),julia_to_cpp(ricSPSize),julia_to_cpp(ricSLICType),julia_to_cpp(use_post_proc),julia_to_cpp(fgsLambda),julia_to_cpp(fgsSigma),julia_to_cpp(use_variational_refinement)))
end
optflow_DenseRLOFOpticalFlow_create(; rlofParam::cv_Ptr{<:RLOFOpticalFlowParameter} = (cpp_to_julia(PtriRLOFOpticalFlowParameterkOP())), forwardBackwardThreshold::Float64 = Float64(1), gridStep::Size{Int32} = (cpp_to_julia(SizeOcSGcP())), interp_type::optflow_InterpolationType = (cpp_to_julia(InterpolationTypeggINTERPREPIC())), epicK::Int64 = Int64(128), epicSigma::Float64 = Float64(0.05), epicLambda::Float64 = Float64(999.0), ricSPSize::Int64 = Int64(15), ricSLICType::Int64 = Int64(100), use_post_proc::Bool = (true), fgsLambda::Float64 = Float64(500.0), fgsSigma::Float64 = Float64(1.5), use_variational_refinement::Bool = (false)) = optflow_DenseRLOFOpticalFlow_create(rlofParam, forwardBackwardThreshold, gridStep, interp_type, epicK, epicSigma, epicLambda, ricSPSize, ricSLICType, use_post_proc, fgsLambda, fgsSigma, use_variational_refinement)

function optflow_SparseRLOFOpticalFlow_create(rlofParam::cv_Ptr{<:RLOFOpticalFlowParameter}, forwardBackwardThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_SparseRLOFOpticalFlow_create(julia_to_cpp(rlofParam),julia_to_cpp(forwardBackwardThreshold)))
end
optflow_SparseRLOFOpticalFlow_create(; rlofParam::cv_Ptr{<:RLOFOpticalFlowParameter} = (cpp_to_julia(PtriRLOFOpticalFlowParameterkOP())), forwardBackwardThreshold::Float64 = Float64(1)) = optflow_SparseRLOFOpticalFlow_create(rlofParam, forwardBackwardThreshold)

function optflow_calcOpticalFlowDenseRLOF(I0::InputArray, I1::InputArray, flow::InputArray, rlofParam::cv_Ptr{<:RLOFOpticalFlowParameter}, forwardBackwardThreshold::Float64, gridStep::Size{Int32}, interp_type::optflow_InterpolationType, epicK::Int64, epicSigma::Float64, epicLambda::Float64, ricSPSize::Int64, ricSLICType::Int64, use_post_proc::Bool, fgsLambda::Float64, fgsSigma::Float64, use_variational_refinement::Bool)
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_calcOpticalFlowDenseRLOF(julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow),julia_to_cpp(rlofParam),julia_to_cpp(forwardBackwardThreshold),julia_to_cpp(gridStep),julia_to_cpp(interp_type),julia_to_cpp(epicK),julia_to_cpp(epicSigma),julia_to_cpp(epicLambda),julia_to_cpp(ricSPSize),julia_to_cpp(ricSLICType),julia_to_cpp(use_post_proc),julia_to_cpp(fgsLambda),julia_to_cpp(fgsSigma),julia_to_cpp(use_variational_refinement)))
end
optflow_calcOpticalFlowDenseRLOF(I0::InputArray, I1::InputArray, flow::InputArray; rlofParam::cv_Ptr{<:RLOFOpticalFlowParameter} = (cpp_to_julia(PtriRLOFOpticalFlowParameterkOP())), forwardBackwardThreshold::Float64 = Float64(0), gridStep::Size{Int32} = (cpp_to_julia(SizeOcSGcP())), interp_type::optflow_InterpolationType = (cpp_to_julia(InterpolationTypeggINTERPREPIC())), epicK::Int64 = Int64(128), epicSigma::Float64 = Float64(0.05), epicLambda::Float64 = Float64(100.), ricSPSize::Int64 = Int64(15), ricSLICType::Int64 = Int64(100), use_post_proc::Bool = (true), fgsLambda::Float64 = Float64(500.0), fgsSigma::Float64 = Float64(1.5), use_variational_refinement::Bool = (false)) = optflow_calcOpticalFlowDenseRLOF(I0, I1, flow, rlofParam, forwardBackwardThreshold, gridStep, interp_type, epicK, epicSigma, epicLambda, ricSPSize, ricSLICType, use_post_proc, fgsLambda, fgsSigma, use_variational_refinement)

function optflow_calcOpticalFlowSparseRLOF(prevImg::InputArray, nextImg::InputArray, prevPts::InputArray, nextPts::InputArray, status::InputArray, err::InputArray, rlofParam::cv_Ptr{<:RLOFOpticalFlowParameter}, forwardBackwardThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_calcOpticalFlowSparseRLOF(julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err),julia_to_cpp(rlofParam),julia_to_cpp(forwardBackwardThreshold)))
end
optflow_calcOpticalFlowSparseRLOF(prevImg::InputArray, nextImg::InputArray, prevPts::InputArray, nextPts::InputArray; status::InputArray = (CxxMat()), err::InputArray = (CxxMat()), rlofParam::cv_Ptr{<:RLOFOpticalFlowParameter} = (cpp_to_julia(PtriRLOFOpticalFlowParameterkOP())), forwardBackwardThreshold::Float64 = Float64(0)) = optflow_calcOpticalFlowSparseRLOF(prevImg, nextImg, prevPts, nextPts, status, err, rlofParam, forwardBackwardThreshold)

function optflow_createOptFlow_DenseRLOF()
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_createOptFlow_DenseRLOF())
end

function optflow_createOptFlow_SparseRLOF()
	return cpp_to_julia(jlopencv_cv_optflow_cv_optflow_createOptFlow_SparseRLOF())
end



