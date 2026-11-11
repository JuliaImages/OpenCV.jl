

   const ml_VariableTypes = Int64 

   const ml_ErrorTypes = Int64 

   const ml_SampleTypes = Int64 

   const ml_StatModel_Flags = Int64 

   const ml_KNearest_Types = Int64 

   const ml_SVM_Types = Int64 

   const ml_SVM_KernelTypes = Int64 

   const ml_SVM_ParamTypes = Int64 

   const ml_EM_Types = Int64 

   const ml_DTrees_Flags = Int64 

   const ml_Boost_Types = Int64 

   const ml_ANN_MLP_TrainingMethods = Int64 

   const ml_ANN_MLP_ActivationFunctions = Int64 

   const ml_ANN_MLP_TrainFlags = Int64 

   const ml_LogisticRegression_RegKinds = Int64 

   const ml_LogisticRegression_Methods = Int64 

   const ml_SVMSGD_SvmsgdType = Int64 

   const ml_SVMSGD_MarginType = Int64 
function Base.getproperty(m::cv_Ptr{ParamGrid}, s::Symbol)
    if s==:minVal
        return cpp_to_julia(jlopencv_ParamGrid_get_minVal(m))
    end
    if s==:maxVal
        return cpp_to_julia(jlopencv_ParamGrid_get_maxVal(m))
    end
    if s==:logStep
        return cpp_to_julia(jlopencv_ParamGrid_get_logStep(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{ParamGrid}, s::Symbol, v)
    if s==:minVal
        jlopencv_ParamGrid_set_minVal(m, julia_to_cpp(v))
        return v
    end
    if s==:maxVal
        jlopencv_ParamGrid_set_maxVal(m, julia_to_cpp(v))
        return v
    end
    if s==:logStep
        jlopencv_ParamGrid_set_logStep(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{TrainData}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TrainData}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ml_getLayout(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getLayout(julia_to_cpp(cobj)))
end

function ml_getNTrainSamples(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNTrainSamples(julia_to_cpp(cobj)))
end

function ml_getNTestSamples(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNTestSamples(julia_to_cpp(cobj)))
end

function ml_getNSamples(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNSamples(julia_to_cpp(cobj)))
end

function ml_getNVars(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNVars(julia_to_cpp(cobj)))
end

function ml_getNAllVars(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNAllVars(julia_to_cpp(cobj)))
end

function ml_getSample(cobj::cv_Ptr{T}, varIdx::InputArray, sidx::Int64, buf::Float64) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSample(julia_to_cpp(cobj),julia_to_cpp(varIdx),julia_to_cpp(sidx),julia_to_cpp(buf)))
end

function ml_getSamples(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSamples(julia_to_cpp(cobj)))
end

function ml_getMissing(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getMissing(julia_to_cpp(cobj)))
end

function ml_getTrainSamples(cobj::cv_Ptr{T}, layout::Int64, compressSamples::Bool, compressVars::Bool) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainSamples(julia_to_cpp(cobj),julia_to_cpp(layout),julia_to_cpp(compressSamples),julia_to_cpp(compressVars)))
end
ml_getTrainSamples(cobj::cv_Ptr{T}; layout::Int64 = Int64(cpp_to_julia(jlopencv_default_ROWRSAMPLE())), compressSamples::Bool = (true), compressVars::Bool = (true)) where {T <: TrainData} = ml_getTrainSamples(cobj, layout, compressSamples, compressVars)

function ml_getTrainResponses(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainResponses(julia_to_cpp(cobj)))
end

function ml_getTrainNormCatResponses(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainNormCatResponses(julia_to_cpp(cobj)))
end

function ml_getTestResponses(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestResponses(julia_to_cpp(cobj)))
end

function ml_getTestNormCatResponses(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestNormCatResponses(julia_to_cpp(cobj)))
end

function ml_getResponses(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getResponses(julia_to_cpp(cobj)))
end

function ml_getNormCatResponses(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNormCatResponses(julia_to_cpp(cobj)))
end

function ml_getSampleWeights(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getSampleWeights(julia_to_cpp(cobj)))
end

function ml_getTrainSampleWeights(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainSampleWeights(julia_to_cpp(cobj)))
end

function ml_getTestSampleWeights(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestSampleWeights(julia_to_cpp(cobj)))
end

function ml_getVarIdx(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getVarIdx(julia_to_cpp(cobj)))
end

function ml_getVarType(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getVarType(julia_to_cpp(cobj)))
end

function ml_getVarSymbolFlags(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getVarSymbolFlags(julia_to_cpp(cobj)))
end

function ml_getResponseType(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getResponseType(julia_to_cpp(cobj)))
end

function ml_getTrainSampleIdx(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTrainSampleIdx(julia_to_cpp(cobj)))
end

function ml_getTestSampleIdx(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestSampleIdx(julia_to_cpp(cobj)))
end

function ml_getValues(cobj::cv_Ptr{T}, vi::Int64, sidx::InputArray, values::Float64) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getValues(julia_to_cpp(cobj),julia_to_cpp(vi),julia_to_cpp(sidx),julia_to_cpp(values)))
end

function ml_getDefaultSubstValues(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getDefaultSubstValues(julia_to_cpp(cobj)))
end

function ml_getCatCount(cobj::cv_Ptr{T}, vi::Int64) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getCatCount(julia_to_cpp(cobj),julia_to_cpp(vi)))
end

function ml_getClassLabels(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getClassLabels(julia_to_cpp(cobj)))
end

function ml_getCatOfs(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getCatOfs(julia_to_cpp(cobj)))
end

function ml_getCatMap(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getCatMap(julia_to_cpp(cobj)))
end

function ml_setTrainTestSplit(cobj::cv_Ptr{T}, count::Int64, shuffle::Bool) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_setTrainTestSplit(julia_to_cpp(cobj),julia_to_cpp(count),julia_to_cpp(shuffle)))
end
ml_setTrainTestSplit(cobj::cv_Ptr{T}, count::Int64; shuffle::Bool = (true)) where {T <: TrainData} = ml_setTrainTestSplit(cobj, count, shuffle)

function ml_setTrainTestSplitRatio(cobj::cv_Ptr{T}, ratio::Float64, shuffle::Bool) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_setTrainTestSplitRatio(julia_to_cpp(cobj),julia_to_cpp(ratio),julia_to_cpp(shuffle)))
end
ml_setTrainTestSplitRatio(cobj::cv_Ptr{T}, ratio::Float64; shuffle::Bool = (true)) where {T <: TrainData} = ml_setTrainTestSplitRatio(cobj, ratio, shuffle)

function ml_shuffleTrainTest(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_shuffleTrainTest(julia_to_cpp(cobj)))
end

function ml_getTestSamples(cobj::cv_Ptr{T}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getTestSamples(julia_to_cpp(cobj)))
end

function ml_getNames(cobj::cv_Ptr{T}, names::Array{String, 1}) where {T <: TrainData}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_cv_ml_TrainData_getNames(julia_to_cpp(cobj),julia_to_cpp(names)))
end
function Base.getproperty(m::cv_Ptr{StatModel}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{StatModel}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ml_getVarCount(cobj::cv_Ptr{T}) where {T <: StatModel}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_getVarCount(julia_to_cpp(cobj)))
end

function ml_empty(cobj::cv_Ptr{T}) where {T <: StatModel}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_empty(julia_to_cpp(cobj)))
end

function ml_isTrained(cobj::cv_Ptr{T}) where {T <: StatModel}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_isTrained(julia_to_cpp(cobj)))
end

function ml_isClassifier(cobj::cv_Ptr{T}) where {T <: StatModel}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_isClassifier(julia_to_cpp(cobj)))
end

function ml_train(cobj::cv_Ptr{T}, trainData::cv_Ptr{<:TrainData}, flags::Int64) where {T <: StatModel}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_train(julia_to_cpp(cobj),julia_to_cpp(trainData),julia_to_cpp(flags)))
end
ml_train(cobj::cv_Ptr{T}, trainData::cv_Ptr{<:TrainData}; flags::Int64 = Int64(0)) where {T <: StatModel} = ml_train(cobj, trainData, flags)

function ml_train(cobj::cv_Ptr{T}, samples::InputArray, layout::Int64, responses::InputArray) where {T <: StatModel}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_train(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(layout),julia_to_cpp(responses)))
end

function ml_calcError(cobj::cv_Ptr{T}, data::cv_Ptr{<:TrainData}, test::Bool, resp::InputArray) where {T <: StatModel}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_calcError(julia_to_cpp(cobj),julia_to_cpp(data),julia_to_cpp(test),julia_to_cpp(resp)))
end
ml_calcError(cobj::cv_Ptr{T}, data::cv_Ptr{<:TrainData}, test::Bool; resp::InputArray = (CxxMat())) where {T <: StatModel} = ml_calcError(cobj, data, test, resp)

function ml_predict(cobj::cv_Ptr{T}, samples::InputArray, results::InputArray, flags::Int64) where {T <: StatModel}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_StatModel_cv_ml_StatModel_predict(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(results),julia_to_cpp(flags)))
end
ml_predict(cobj::cv_Ptr{T}, samples::InputArray; results::InputArray = (CxxMat()), flags::Int64 = Int64(0)) where {T <: StatModel} = ml_predict(cobj, samples, results, flags)
function Base.getproperty(m::cv_Ptr{NormalBayesClassifier}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{NormalBayesClassifier}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ml_predictProb(cobj::cv_Ptr{T}, inputs::InputArray, outputs::InputArray, outputProbs::InputArray, flags::Int64) where {T <: NormalBayesClassifier}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_NormalBayesClassifier_cv_ml_NormalBayesClassifier_predictProb(julia_to_cpp(cobj),julia_to_cpp(inputs),julia_to_cpp(outputs),julia_to_cpp(outputProbs),julia_to_cpp(flags)))
end
ml_predictProb(cobj::cv_Ptr{T}, inputs::InputArray; outputs::InputArray = (CxxMat()), outputProbs::InputArray = (CxxMat()), flags::Int64 = Int64(0)) where {T <: NormalBayesClassifier} = ml_predictProb(cobj, inputs, outputs, outputProbs, flags)
function Base.getproperty(m::cv_Ptr{KNearest}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{KNearest}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ml_getDefaultK(cobj::cv_Ptr{T}) where {T <: KNearest}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getDefaultK(julia_to_cpp(cobj)))
end

function ml_setDefaultK(cobj::cv_Ptr{T}, val::Int64) where {T <: KNearest}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setDefaultK(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getIsClassifier(cobj::cv_Ptr{T}) where {T <: KNearest}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getIsClassifier(julia_to_cpp(cobj)))
end

function ml_setIsClassifier(cobj::cv_Ptr{T}, val::Bool) where {T <: KNearest}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setIsClassifier(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getEmax(cobj::cv_Ptr{T}) where {T <: KNearest}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getEmax(julia_to_cpp(cobj)))
end

function ml_setEmax(cobj::cv_Ptr{T}, val::Int64) where {T <: KNearest}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setEmax(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getAlgorithmType(cobj::cv_Ptr{T}) where {T <: KNearest}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_getAlgorithmType(julia_to_cpp(cobj)))
end

function ml_setAlgorithmType(cobj::cv_Ptr{T}, val::Int64) where {T <: KNearest}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_setAlgorithmType(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_findNearest(cobj::cv_Ptr{T}, samples::InputArray, k::Int64, results::InputArray, neighborResponses::InputArray, dist::InputArray) where {T <: KNearest}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_cv_ml_KNearest_findNearest(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(k),julia_to_cpp(results),julia_to_cpp(neighborResponses),julia_to_cpp(dist)))
end
ml_findNearest(cobj::cv_Ptr{T}, samples::InputArray, k::Int64; results::InputArray = (CxxMat()), neighborResponses::InputArray = (CxxMat()), dist::InputArray = (CxxMat())) where {T <: KNearest} = ml_findNearest(cobj, samples, k, results, neighborResponses, dist)
function Base.getproperty(m::cv_Ptr{SVM}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SVM}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ml_getType(cobj::cv_Ptr{T}) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getType(julia_to_cpp(cobj)))
end

function ml_setType(cobj::cv_Ptr{T}, val::Int64) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setType(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getGamma(cobj::cv_Ptr{T}) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getGamma(julia_to_cpp(cobj)))
end

function ml_setGamma(cobj::cv_Ptr{T}, val::Float64) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setGamma(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getCoef0(cobj::cv_Ptr{T}) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getCoef0(julia_to_cpp(cobj)))
end

function ml_setCoef0(cobj::cv_Ptr{T}, val::Float64) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setCoef0(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getDegree(cobj::cv_Ptr{T}) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getDegree(julia_to_cpp(cobj)))
end

function ml_setDegree(cobj::cv_Ptr{T}, val::Float64) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setDegree(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getC(cobj::cv_Ptr{T}) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getC(julia_to_cpp(cobj)))
end

function ml_setC(cobj::cv_Ptr{T}, val::Float64) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setC(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getNu(cobj::cv_Ptr{T}) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getNu(julia_to_cpp(cobj)))
end

function ml_setNu(cobj::cv_Ptr{T}, val::Float64) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setNu(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getP(cobj::cv_Ptr{T}) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getP(julia_to_cpp(cobj)))
end

function ml_setP(cobj::cv_Ptr{T}, val::Float64) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setP(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getClassWeights(cobj::cv_Ptr{T}) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getClassWeights(julia_to_cpp(cobj)))
end

function ml_setClassWeights(cobj::cv_Ptr{T}, val::InputArray) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setClassWeights(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getTermCriteria(cobj::cv_Ptr{T}) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getTermCriteria(julia_to_cpp(cobj)))
end

function ml_setTermCriteria(cobj::cv_Ptr{T}, val::TermCriteria) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getKernelType(cobj::cv_Ptr{T}) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getKernelType(julia_to_cpp(cobj)))
end

function ml_setKernel(cobj::cv_Ptr{T}, kernelType::Int64) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_setKernel(julia_to_cpp(cobj),julia_to_cpp(kernelType)))
end

function ml_trainAuto(cobj::cv_Ptr{T}, samples::InputArray, layout::Int64, responses::InputArray, kFold::Int64, Cgrid::cv_Ptr{<:ParamGrid}, gammaGrid::cv_Ptr{<:ParamGrid}, pGrid::cv_Ptr{<:ParamGrid}, nuGrid::cv_Ptr{<:ParamGrid}, coeffGrid::cv_Ptr{<:ParamGrid}, degreeGrid::cv_Ptr{<:ParamGrid}, balanced::Bool) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_trainAuto(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(layout),julia_to_cpp(responses),julia_to_cpp(kFold),julia_to_cpp(Cgrid),julia_to_cpp(gammaGrid),julia_to_cpp(pGrid),julia_to_cpp(nuGrid),julia_to_cpp(coeffGrid),julia_to_cpp(degreeGrid),julia_to_cpp(balanced)))
end
ml_trainAuto(cobj::cv_Ptr{T}, samples::InputArray, layout::Int64, responses::InputArray; kFold::Int64 = Int64(10), Cgrid::cv_Ptr{<:ParamGrid} = (cpp_to_julia(SVMgggetDefaultGridPtrOSVMggCP())), gammaGrid::cv_Ptr{<:ParamGrid} = (cpp_to_julia(SVMgggetDefaultGridPtrOSVMggGAMMAP())), pGrid::cv_Ptr{<:ParamGrid} = (cpp_to_julia(SVMgggetDefaultGridPtrOSVMggPP())), nuGrid::cv_Ptr{<:ParamGrid} = (cpp_to_julia(SVMgggetDefaultGridPtrOSVMggNUP())), coeffGrid::cv_Ptr{<:ParamGrid} = (cpp_to_julia(SVMgggetDefaultGridPtrOSVMggCOEFP())), degreeGrid::cv_Ptr{<:ParamGrid} = (cpp_to_julia(SVMgggetDefaultGridPtrOSVMggDEGREEP())), balanced::Bool = (false)) where {T <: SVM} = ml_trainAuto(cobj, samples, layout, responses, kFold, Cgrid, gammaGrid, pGrid, nuGrid, coeffGrid, degreeGrid, balanced)

function ml_getSupportVectors(cobj::cv_Ptr{T}) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getSupportVectors(julia_to_cpp(cobj)))
end

function ml_getUncompressedSupportVectors(cobj::cv_Ptr{T}) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getUncompressedSupportVectors(julia_to_cpp(cobj)))
end

function ml_getDecisionFunction(cobj::cv_Ptr{T}, i::Int64, alpha::InputArray, svidx::InputArray) where {T <: SVM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_cv_ml_SVM_getDecisionFunction(julia_to_cpp(cobj),julia_to_cpp(i),julia_to_cpp(alpha),julia_to_cpp(svidx)))
end
ml_getDecisionFunction(cobj::cv_Ptr{T}, i::Int64; alpha::InputArray = (CxxMat()), svidx::InputArray = (CxxMat())) where {T <: SVM} = ml_getDecisionFunction(cobj, i, alpha, svidx)
function Base.getproperty(m::cv_Ptr{EM}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{EM}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ml_getClustersNumber(cobj::cv_Ptr{T}) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getClustersNumber(julia_to_cpp(cobj)))
end

function ml_setClustersNumber(cobj::cv_Ptr{T}, val::Int64) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_setClustersNumber(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getCovarianceMatrixType(cobj::cv_Ptr{T}) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getCovarianceMatrixType(julia_to_cpp(cobj)))
end

function ml_setCovarianceMatrixType(cobj::cv_Ptr{T}, val::Int64) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_setCovarianceMatrixType(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getTermCriteria(cobj::cv_Ptr{T}) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getTermCriteria(julia_to_cpp(cobj)))
end

function ml_setTermCriteria(cobj::cv_Ptr{T}, val::TermCriteria) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getWeights(cobj::cv_Ptr{T}) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getWeights(julia_to_cpp(cobj)))
end

function ml_getMeans(cobj::cv_Ptr{T}) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getMeans(julia_to_cpp(cobj)))
end

function ml_getCovs(cobj::cv_Ptr{T}, covs::AbstractVector{<:InputArray}) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_getCovs(julia_to_cpp(cobj),julia_to_cpp(covs)))
end
ml_getCovs(cobj::cv_Ptr{T}; covs::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) where {T <: EM} = ml_getCovs(cobj, covs)

function ml_predict(cobj::cv_Ptr{T}, samples::InputArray, results::InputArray, flags::Int64) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(results),julia_to_cpp(flags)))
end
ml_predict(cobj::cv_Ptr{T}, samples::InputArray; results::InputArray = (CxxMat()), flags::Int64 = Int64(0)) where {T <: EM} = ml_predict(cobj, samples, results, flags)

function ml_predict2(cobj::cv_Ptr{T}, sample::InputArray, probs::InputArray) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_predict2(julia_to_cpp(cobj),julia_to_cpp(sample),julia_to_cpp(probs)))
end
ml_predict2(cobj::cv_Ptr{T}, sample::InputArray; probs::InputArray = (CxxMat())) where {T <: EM} = ml_predict2(cobj, sample, probs)

function ml_trainEM(cobj::cv_Ptr{T}, samples::InputArray, logLikelihoods::InputArray, labels::InputArray, probs::InputArray) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainEM(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(logLikelihoods),julia_to_cpp(labels),julia_to_cpp(probs)))
end
ml_trainEM(cobj::cv_Ptr{T}, samples::InputArray; logLikelihoods::InputArray = (CxxMat()), labels::InputArray = (CxxMat()), probs::InputArray = (CxxMat())) where {T <: EM} = ml_trainEM(cobj, samples, logLikelihoods, labels, probs)

function ml_trainE(cobj::cv_Ptr{T}, samples::InputArray, means0::InputArray, covs0::InputArray, weights0::InputArray, logLikelihoods::InputArray, labels::InputArray, probs::InputArray) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainE(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(means0),julia_to_cpp(covs0),julia_to_cpp(weights0),julia_to_cpp(logLikelihoods),julia_to_cpp(labels),julia_to_cpp(probs)))
end
ml_trainE(cobj::cv_Ptr{T}, samples::InputArray, means0::InputArray; covs0::InputArray = (CxxMat()), weights0::InputArray = (CxxMat()), logLikelihoods::InputArray = (CxxMat()), labels::InputArray = (CxxMat()), probs::InputArray = (CxxMat())) where {T <: EM} = ml_trainE(cobj, samples, means0, covs0, weights0, logLikelihoods, labels, probs)

function ml_trainM(cobj::cv_Ptr{T}, samples::InputArray, probs0::InputArray, logLikelihoods::InputArray, labels::InputArray, probs::InputArray) where {T <: EM}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_cv_ml_EM_trainM(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(probs0),julia_to_cpp(logLikelihoods),julia_to_cpp(labels),julia_to_cpp(probs)))
end
ml_trainM(cobj::cv_Ptr{T}, samples::InputArray, probs0::InputArray; logLikelihoods::InputArray = (CxxMat()), labels::InputArray = (CxxMat()), probs::InputArray = (CxxMat())) where {T <: EM} = ml_trainM(cobj, samples, probs0, logLikelihoods, labels, probs)
function Base.getproperty(m::cv_Ptr{DTrees}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{DTrees}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ml_getMaxCategories(cobj::cv_Ptr{T}) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getMaxCategories(julia_to_cpp(cobj)))
end

function ml_setMaxCategories(cobj::cv_Ptr{T}, val::Int64) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setMaxCategories(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getMaxDepth(cobj::cv_Ptr{T}) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getMaxDepth(julia_to_cpp(cobj)))
end

function ml_setMaxDepth(cobj::cv_Ptr{T}, val::Int64) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setMaxDepth(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getMinSampleCount(cobj::cv_Ptr{T}) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getMinSampleCount(julia_to_cpp(cobj)))
end

function ml_setMinSampleCount(cobj::cv_Ptr{T}, val::Int64) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setMinSampleCount(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getCVFolds(cobj::cv_Ptr{T}) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getCVFolds(julia_to_cpp(cobj)))
end

function ml_setCVFolds(cobj::cv_Ptr{T}, val::Int64) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setCVFolds(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getUseSurrogates(cobj::cv_Ptr{T}) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getUseSurrogates(julia_to_cpp(cobj)))
end

function ml_setUseSurrogates(cobj::cv_Ptr{T}, val::Bool) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setUseSurrogates(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getUse1SERule(cobj::cv_Ptr{T}) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getUse1SERule(julia_to_cpp(cobj)))
end

function ml_setUse1SERule(cobj::cv_Ptr{T}, val::Bool) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setUse1SERule(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getTruncatePrunedTree(cobj::cv_Ptr{T}) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getTruncatePrunedTree(julia_to_cpp(cobj)))
end

function ml_setTruncatePrunedTree(cobj::cv_Ptr{T}, val::Bool) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setTruncatePrunedTree(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getRegressionAccuracy(cobj::cv_Ptr{T}) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getRegressionAccuracy(julia_to_cpp(cobj)))
end

function ml_setRegressionAccuracy(cobj::cv_Ptr{T}, val::Float64) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setRegressionAccuracy(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getPriors(cobj::cv_Ptr{T}) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_getPriors(julia_to_cpp(cobj)))
end

function ml_setPriors(cobj::cv_Ptr{T}, val::InputArray) where {T <: DTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_cv_ml_DTrees_setPriors(julia_to_cpp(cobj),julia_to_cpp(val)))
end
function Base.getproperty(m::cv_Ptr{RTrees}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{RTrees}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ml_getCalculateVarImportance(cobj::cv_Ptr{T}) where {T <: RTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getCalculateVarImportance(julia_to_cpp(cobj)))
end

function ml_setCalculateVarImportance(cobj::cv_Ptr{T}, val::Bool) where {T <: RTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_setCalculateVarImportance(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getActiveVarCount(cobj::cv_Ptr{T}) where {T <: RTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getActiveVarCount(julia_to_cpp(cobj)))
end

function ml_setActiveVarCount(cobj::cv_Ptr{T}, val::Int64) where {T <: RTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_setActiveVarCount(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getTermCriteria(cobj::cv_Ptr{T}) where {T <: RTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getTermCriteria(julia_to_cpp(cobj)))
end

function ml_setTermCriteria(cobj::cv_Ptr{T}, val::TermCriteria) where {T <: RTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getVarImportance(cobj::cv_Ptr{T}) where {T <: RTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getVarImportance(julia_to_cpp(cobj)))
end

function ml_getVotes(cobj::cv_Ptr{T}, samples::InputArray, flags::Int64, results::InputArray) where {T <: RTrees}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_cv_ml_RTrees_getVotes(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(flags),julia_to_cpp(results)))
end
ml_getVotes(cobj::cv_Ptr{T}, samples::InputArray, flags::Int64; results::InputArray = (CxxMat())) where {T <: RTrees} = ml_getVotes(cobj, samples, flags, results)
function Base.getproperty(m::cv_Ptr{Boost}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{Boost}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ml_getBoostType(cobj::cv_Ptr{T}) where {T <: Boost}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_getBoostType(julia_to_cpp(cobj)))
end

function ml_setBoostType(cobj::cv_Ptr{T}, val::Int64) where {T <: Boost}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_setBoostType(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getWeakCount(cobj::cv_Ptr{T}) where {T <: Boost}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_getWeakCount(julia_to_cpp(cobj)))
end

function ml_setWeakCount(cobj::cv_Ptr{T}, val::Int64) where {T <: Boost}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_setWeakCount(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getWeightTrimRate(cobj::cv_Ptr{T}) where {T <: Boost}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_getWeightTrimRate(julia_to_cpp(cobj)))
end

function ml_setWeightTrimRate(cobj::cv_Ptr{T}, val::Float64) where {T <: Boost}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_cv_ml_Boost_setWeightTrimRate(julia_to_cpp(cobj),julia_to_cpp(val)))
end
function Base.getproperty(m::cv_Ptr{ANN_MLP}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{ANN_MLP}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ml_setTrainMethod(cobj::cv_Ptr{T}, method::Int64, param1::Float64, param2::Float64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setTrainMethod(julia_to_cpp(cobj),julia_to_cpp(method),julia_to_cpp(param1),julia_to_cpp(param2)))
end
ml_setTrainMethod(cobj::cv_Ptr{T}, method::Int64; param1::Float64 = Float64(0), param2::Float64 = Float64(0)) where {T <: ANN_MLP} = ml_setTrainMethod(cobj, method, param1, param2)

function ml_getTrainMethod(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getTrainMethod(julia_to_cpp(cobj)))
end

function ml_setActivationFunction(cobj::cv_Ptr{T}, type::Int64, param1::Float64, param2::Float64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setActivationFunction(julia_to_cpp(cobj),julia_to_cpp(type),julia_to_cpp(param1),julia_to_cpp(param2)))
end
ml_setActivationFunction(cobj::cv_Ptr{T}, type::Int64; param1::Float64 = Float64(0), param2::Float64 = Float64(0)) where {T <: ANN_MLP} = ml_setActivationFunction(cobj, type, param1, param2)

function ml_setLayerSizes(cobj::cv_Ptr{T}, _layer_sizes::InputArray) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setLayerSizes(julia_to_cpp(cobj),julia_to_cpp(_layer_sizes)))
end

function ml_getLayerSizes(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getLayerSizes(julia_to_cpp(cobj)))
end

function ml_getTermCriteria(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getTermCriteria(julia_to_cpp(cobj)))
end

function ml_setTermCriteria(cobj::cv_Ptr{T}, val::TermCriteria) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getBackpropWeightScale(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getBackpropWeightScale(julia_to_cpp(cobj)))
end

function ml_setBackpropWeightScale(cobj::cv_Ptr{T}, val::Float64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setBackpropWeightScale(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getBackpropMomentumScale(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getBackpropMomentumScale(julia_to_cpp(cobj)))
end

function ml_setBackpropMomentumScale(cobj::cv_Ptr{T}, val::Float64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setBackpropMomentumScale(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getRpropDW0(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDW0(julia_to_cpp(cobj)))
end

function ml_setRpropDW0(cobj::cv_Ptr{T}, val::Float64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDW0(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getRpropDWPlus(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWPlus(julia_to_cpp(cobj)))
end

function ml_setRpropDWPlus(cobj::cv_Ptr{T}, val::Float64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWPlus(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getRpropDWMinus(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWMinus(julia_to_cpp(cobj)))
end

function ml_setRpropDWMinus(cobj::cv_Ptr{T}, val::Float64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWMinus(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getRpropDWMin(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWMin(julia_to_cpp(cobj)))
end

function ml_setRpropDWMin(cobj::cv_Ptr{T}, val::Float64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWMin(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getRpropDWMax(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getRpropDWMax(julia_to_cpp(cobj)))
end

function ml_setRpropDWMax(cobj::cv_Ptr{T}, val::Float64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setRpropDWMax(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getAnnealInitialT(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealInitialT(julia_to_cpp(cobj)))
end

function ml_setAnnealInitialT(cobj::cv_Ptr{T}, val::Float64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealInitialT(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getAnnealFinalT(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealFinalT(julia_to_cpp(cobj)))
end

function ml_setAnnealFinalT(cobj::cv_Ptr{T}, val::Float64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealFinalT(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getAnnealCoolingRatio(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealCoolingRatio(julia_to_cpp(cobj)))
end

function ml_setAnnealCoolingRatio(cobj::cv_Ptr{T}, val::Float64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealCoolingRatio(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getAnnealItePerStep(cobj::cv_Ptr{T}) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getAnnealItePerStep(julia_to_cpp(cobj)))
end

function ml_setAnnealItePerStep(cobj::cv_Ptr{T}, val::Int64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_setAnnealItePerStep(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getWeights(cobj::cv_Ptr{T}, layerIdx::Int64) where {T <: ANN_MLP}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_cv_ml_ANN_MLP_getWeights(julia_to_cpp(cobj),julia_to_cpp(layerIdx)))
end
function Base.getproperty(m::cv_Ptr{LogisticRegression}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{LogisticRegression}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ml_getLearningRate(cobj::cv_Ptr{T}) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getLearningRate(julia_to_cpp(cobj)))
end

function ml_setLearningRate(cobj::cv_Ptr{T}, val::Float64) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setLearningRate(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getIterations(cobj::cv_Ptr{T}) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getIterations(julia_to_cpp(cobj)))
end

function ml_setIterations(cobj::cv_Ptr{T}, val::Int64) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getRegularization(cobj::cv_Ptr{T}) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getRegularization(julia_to_cpp(cobj)))
end

function ml_setRegularization(cobj::cv_Ptr{T}, val::Int64) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setRegularization(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getTrainMethod(cobj::cv_Ptr{T}) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getTrainMethod(julia_to_cpp(cobj)))
end

function ml_setTrainMethod(cobj::cv_Ptr{T}, val::Int64) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setTrainMethod(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getMiniBatchSize(cobj::cv_Ptr{T}) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getMiniBatchSize(julia_to_cpp(cobj)))
end

function ml_setMiniBatchSize(cobj::cv_Ptr{T}, val::Int64) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setMiniBatchSize(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_getTermCriteria(cobj::cv_Ptr{T}) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_getTermCriteria(julia_to_cpp(cobj)))
end

function ml_setTermCriteria(cobj::cv_Ptr{T}, val::TermCriteria) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_predict(cobj::cv_Ptr{T}, samples::InputArray, results::InputArray, flags::Int64) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_predict(julia_to_cpp(cobj),julia_to_cpp(samples),julia_to_cpp(results),julia_to_cpp(flags)))
end
ml_predict(cobj::cv_Ptr{T}, samples::InputArray; results::InputArray = (CxxMat()), flags::Int64 = Int64(0)) where {T <: LogisticRegression} = ml_predict(cobj, samples, results, flags)

function ml_get_learnt_thetas(cobj::cv_Ptr{T}) where {T <: LogisticRegression}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_cv_ml_LogisticRegression_get_learnt_thetas(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{SVMSGD}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SVMSGD}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ml_getWeights(cobj::cv_Ptr{T}) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getWeights(julia_to_cpp(cobj)))
end

function ml_getShift(cobj::cv_Ptr{T}) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getShift(julia_to_cpp(cobj)))
end

function ml_setOptimalParameters(cobj::cv_Ptr{T}, svmsgdType::Int64, marginType::Int64) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setOptimalParameters(julia_to_cpp(cobj),julia_to_cpp(svmsgdType),julia_to_cpp(marginType)))
end
ml_setOptimalParameters(cobj::cv_Ptr{T}; svmsgdType::Int64 = Int64(cpp_to_julia(SVMSGDggASGD())), marginType::Int64 = Int64(cpp_to_julia(SVMSGDggSOFTRMARGIN()))) where {T <: SVMSGD} = ml_setOptimalParameters(cobj, svmsgdType, marginType)

function ml_getSvmsgdType(cobj::cv_Ptr{T}) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getSvmsgdType(julia_to_cpp(cobj)))
end

function ml_setSvmsgdType(cobj::cv_Ptr{T}, svmsgdType::Int64) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setSvmsgdType(julia_to_cpp(cobj),julia_to_cpp(svmsgdType)))
end

function ml_getMarginType(cobj::cv_Ptr{T}) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getMarginType(julia_to_cpp(cobj)))
end

function ml_setMarginType(cobj::cv_Ptr{T}, marginType::Int64) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setMarginType(julia_to_cpp(cobj),julia_to_cpp(marginType)))
end

function ml_getMarginRegularization(cobj::cv_Ptr{T}) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getMarginRegularization(julia_to_cpp(cobj)))
end

function ml_setMarginRegularization(cobj::cv_Ptr{T}, marginRegularization::Float64) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setMarginRegularization(julia_to_cpp(cobj),julia_to_cpp(marginRegularization)))
end

function ml_getInitialStepSize(cobj::cv_Ptr{T}) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getInitialStepSize(julia_to_cpp(cobj)))
end

function ml_setInitialStepSize(cobj::cv_Ptr{T}, InitialStepSize::Float64) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setInitialStepSize(julia_to_cpp(cobj),julia_to_cpp(InitialStepSize)))
end

function ml_getStepDecreasingPower(cobj::cv_Ptr{T}) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getStepDecreasingPower(julia_to_cpp(cobj)))
end

function ml_setStepDecreasingPower(cobj::cv_Ptr{T}, stepDecreasingPower::Float64) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setStepDecreasingPower(julia_to_cpp(cobj),julia_to_cpp(stepDecreasingPower)))
end

function ml_getTermCriteria(cobj::cv_Ptr{T}) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_getTermCriteria(julia_to_cpp(cobj)))
end

function ml_setTermCriteria(cobj::cv_Ptr{T}, val::TermCriteria) where {T <: SVMSGD}
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_cv_ml_SVMSGD_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function ml_ParamGrid_create(minVal::Float64, maxVal::Float64, logstep::Float64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ParamGrid_create(julia_to_cpp(minVal),julia_to_cpp(maxVal),julia_to_cpp(logstep)))
end
ml_ParamGrid_create(; minVal::Float64 = Float64(0.), maxVal::Float64 = Float64(0.), logstep::Float64 = Float64(1)) = ml_ParamGrid_create(minVal, maxVal, logstep)

function ml_TrainData_getSubVector(vec::InputArray, idx::InputArray)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_getSubVector(julia_to_cpp(vec),julia_to_cpp(idx)))
end

function ml_TrainData_getSubMatrix(matrix::InputArray, idx::InputArray, layout::Int64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_getSubMatrix(julia_to_cpp(matrix),julia_to_cpp(idx),julia_to_cpp(layout)))
end

function ml_TrainData_create(samples::InputArray, layout::Int64, responses::InputArray, varIdx::InputArray, sampleIdx::InputArray, sampleWeights::InputArray, varType::InputArray)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_TrainData_create(julia_to_cpp(samples),julia_to_cpp(layout),julia_to_cpp(responses),julia_to_cpp(varIdx),julia_to_cpp(sampleIdx),julia_to_cpp(sampleWeights),julia_to_cpp(varType)))
end
ml_TrainData_create(samples::InputArray, layout::Int64, responses::InputArray; varIdx::InputArray = (CxxMat()), sampleIdx::InputArray = (CxxMat()), sampleWeights::InputArray = (CxxMat()), varType::InputArray = (CxxMat())) = ml_TrainData_create(samples, layout, responses, varIdx, sampleIdx, sampleWeights, varType)

function ml_NormalBayesClassifier_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_NormalBayesClassifier_create())
end

function ml_NormalBayesClassifier_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_NormalBayesClassifier_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
ml_NormalBayesClassifier_load(filepath::String; nodeName::String = ("")) = ml_NormalBayesClassifier_load(filepath, nodeName)

function ml_KNearest_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_create())
end

function ml_KNearest_load(filepath::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_KNearest_load(julia_to_cpp(filepath)))
end

function ml_SVM_getDefaultGridPtr(param_id::Int64)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_getDefaultGridPtr(julia_to_cpp(param_id)))
end

function ml_SVM_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_create())
end

function ml_SVM_load(filepath::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVM_load(julia_to_cpp(filepath)))
end

function ml_EM_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_create())
end

function ml_EM_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_EM_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
ml_EM_load(filepath::String; nodeName::String = ("")) = ml_EM_load(filepath, nodeName)

function ml_DTrees_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_create())
end

function ml_DTrees_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_DTrees_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
ml_DTrees_load(filepath::String; nodeName::String = ("")) = ml_DTrees_load(filepath, nodeName)

function ml_RTrees_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_create())
end

function ml_RTrees_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_RTrees_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
ml_RTrees_load(filepath::String; nodeName::String = ("")) = ml_RTrees_load(filepath, nodeName)

function ml_Boost_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_create())
end

function ml_Boost_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_Boost_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
ml_Boost_load(filepath::String; nodeName::String = ("")) = ml_Boost_load(filepath, nodeName)

function ml_ANN_MLP_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_create())
end

function ml_ANN_MLP_load(filepath::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_ANN_MLP_load(julia_to_cpp(filepath)))
end

function ml_LogisticRegression_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_create())
end

function ml_LogisticRegression_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_LogisticRegression_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
ml_LogisticRegression_load(filepath::String; nodeName::String = ("")) = ml_LogisticRegression_load(filepath, nodeName)

function ml_SVMSGD_create()
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_create())
end

function ml_SVMSGD_load(filepath::String, nodeName::String)
	return cpp_to_julia(jlopencv_cv_ml_cv_ml_SVMSGD_load(julia_to_cpp(filepath),julia_to_cpp(nodeName)))
end
ml_SVMSGD_load(filepath::String; nodeName::String = ("")) = ml_SVMSGD_load(filepath, nodeName)



