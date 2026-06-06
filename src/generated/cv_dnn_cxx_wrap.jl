

   const dnn_Backend = Int64 

   const dnn_Target = Int64 

   const dnn_DataLayout = Int64 

   const dnn_ImagePaddingMode = Int64 

   const dnn_SoftNMSMethod = Int64 
function Base.getproperty(m::cv_Ptr{Layer}, s::Symbol)
    if s==:blobs
        return cpp_to_julia(jlopencv_Layer_get_blobs(m))
    end
    if s==:name
        return cpp_to_julia(jlopencv_Layer_get_name(m))
    end
    if s==:type
        return cpp_to_julia(jlopencv_Layer_get_type(m))
    end
    if s==:preferableTarget
        return cpp_to_julia(jlopencv_Layer_get_preferableTarget(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{Layer}, s::Symbol, v)
    if s==:name
        jlopencv_Layer_set_name(m, julia_to_cpp(v))
    end
    if s==:type
        jlopencv_Layer_set_type(m, julia_to_cpp(v))
    end
    if s==:preferableTarget
        jlopencv_Layer_set_preferableTarget(m, julia_to_cpp(v))
    end
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::Net, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Net, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function dnn_empty(cobj::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_empty(julia_to_cpp(cobj)))
end

function dnn_dump(cobj::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_dump(julia_to_cpp(cobj)))
end

function dnn_dumpToFile(cobj::Net, path::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_dumpToFile(julia_to_cpp(cobj),julia_to_cpp(path)))
end

function dnn_setInputShape(cobj::Net, inputName::String, shape::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setInputShape(julia_to_cpp(cobj),julia_to_cpp(inputName),julia_to_cpp(shape)))
end

function dnn_forward(cobj::Net, outputName::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward(julia_to_cpp(cobj),julia_to_cpp(outputName)))
end
dnn_forward(cobj::Net; outputName::String = ("")) = dnn_forward(cobj, outputName)

function dnn_forward(cobj::Net, outputBlobs::AbstractVector{<:InputArray}, outputName::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward(julia_to_cpp(cobj),julia_to_cpp(outputBlobs),julia_to_cpp(outputName)))
end

function dnn_forward(cobj::Net, outBlobNames::Array{String, 1}, outputBlobs::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forward(julia_to_cpp(cobj),julia_to_cpp(outBlobNames),julia_to_cpp(outputBlobs)))
end
dnn_forward(cobj::Net, outBlobNames::Array{String, 1}; outputBlobs::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) = dnn_forward(cobj, outBlobNames, outputBlobs)

function dnn_forwardAsync(cobj::Net, outputName::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_forwardAsync(julia_to_cpp(cobj),julia_to_cpp(outputName)))
end
dnn_forwardAsync(cobj::Net; outputName::String = ("")) = dnn_forwardAsync(cobj, outputName)

function dnn_setPreferableBackend(cobj::Net, backendId::Int64)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setPreferableBackend(julia_to_cpp(cobj),julia_to_cpp(backendId)))
end

function dnn_setPreferableTarget(cobj::Net, targetId::Int64)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setPreferableTarget(julia_to_cpp(cobj),julia_to_cpp(targetId)))
end

function dnn_setInput(cobj::Net, blob::InputArray, name::String, scalefactor::Float64, mean::Scalar)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setInput(julia_to_cpp(cobj),julia_to_cpp(blob),julia_to_cpp(name),julia_to_cpp(scalefactor),julia_to_cpp(mean)))
end
dnn_setInput(cobj::Net, blob::InputArray; name::String = (""), scalefactor::Float64 = Float64(1.0), mean::Scalar = (cpp_to_julia(ScalarOP()))) = dnn_setInput(cobj, blob, name, scalefactor, mean)

function dnn_setParam(cobj::Net, layer::Int64, numParam::Int64, blob::InputArray)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setParam(julia_to_cpp(cobj),julia_to_cpp(layer),julia_to_cpp(numParam),julia_to_cpp(blob)))
end

function dnn_setParam(cobj::Net, layerName::String, numParam::Int64, blob::InputArray)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_setParam(julia_to_cpp(cobj),julia_to_cpp(layerName),julia_to_cpp(numParam),julia_to_cpp(blob)))
end

function dnn_getParam(cobj::Net, layer::Int64, numParam::Int64)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getParam(julia_to_cpp(cobj),julia_to_cpp(layer),julia_to_cpp(numParam)))
end
dnn_getParam(cobj::Net, layer::Int64; numParam::Int64 = Int64(0)) = dnn_getParam(cobj, layer, numParam)

function dnn_getParam(cobj::Net, layerName::String, numParam::Int64)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getParam(julia_to_cpp(cobj),julia_to_cpp(layerName),julia_to_cpp(numParam)))
end
dnn_getParam(cobj::Net, layerName::String; numParam::Int64 = Int64(0)) = dnn_getParam(cobj, layerName, numParam)

function dnn_getFLOPS(cobj::Net, netInputShapes::Array{Array{Int32, 1}, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getFLOPS(julia_to_cpp(cobj),julia_to_cpp(netInputShapes)))
end

function dnn_getFLOPS(cobj::Net, netInputShape::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getFLOPS(julia_to_cpp(cobj),julia_to_cpp(netInputShape)))
end

function dnn_getFLOPS(cobj::Net, layerId::Int64, netInputShapes::Array{Array{Int32, 1}, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getFLOPS(julia_to_cpp(cobj),julia_to_cpp(layerId),julia_to_cpp(netInputShapes)))
end

function dnn_getFLOPS(cobj::Net, layerId::Int64, netInputShape::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getFLOPS(julia_to_cpp(cobj),julia_to_cpp(layerId),julia_to_cpp(netInputShape)))
end

function dnn_getMemoryConsumption(cobj::Net, netInputShape::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getMemoryConsumption(julia_to_cpp(cobj),julia_to_cpp(netInputShape)))
end

function dnn_getMemoryConsumption(cobj::Net, layerId::Int64, netInputShapes::Array{Array{Int32, 1}, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getMemoryConsumption(julia_to_cpp(cobj),julia_to_cpp(layerId),julia_to_cpp(netInputShapes)))
end

function dnn_getMemoryConsumption(cobj::Net, layerId::Int64, netInputShape::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getMemoryConsumption(julia_to_cpp(cobj),julia_to_cpp(layerId),julia_to_cpp(netInputShape)))
end

function dnn_enableFusion(cobj::Net, fusion::Bool)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_enableFusion(julia_to_cpp(cobj),julia_to_cpp(fusion)))
end

function dnn_getPerfProfile(cobj::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_getPerfProfile(julia_to_cpp(cobj)))
end

function dnn_Net()
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_cv_dnn_Net_Net())
end
function Base.getproperty(m::Image2BlobParams, s::Symbol)
    if s==:scalefactor
        return cpp_to_julia(jlopencv_Image2BlobParams_get_scalefactor(m))
    end
    if s==:size
        return cpp_to_julia(jlopencv_Image2BlobParams_get_size(m))
    end
    if s==:mean
        return cpp_to_julia(jlopencv_Image2BlobParams_get_mean(m))
    end
    if s==:swapRB
        return cpp_to_julia(jlopencv_Image2BlobParams_get_swapRB(m))
    end
    if s==:ddepth
        return cpp_to_julia(jlopencv_Image2BlobParams_get_ddepth(m))
    end
    if s==:datalayout
        return cpp_to_julia(jlopencv_Image2BlobParams_get_datalayout(m))
    end
    if s==:paddingmode
        return cpp_to_julia(jlopencv_Image2BlobParams_get_paddingmode(m))
    end
    if s==:borderValue
        return cpp_to_julia(jlopencv_Image2BlobParams_get_borderValue(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Image2BlobParams, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::Model, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Model, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function dnn_setInputSize(cobj::Model, size::Size{Int32})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputSize(julia_to_cpp(cobj),julia_to_cpp(size)))
end

function dnn_setInputSize(cobj::Model, width::Int64, height::Int64)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputSize(julia_to_cpp(cobj),julia_to_cpp(width),julia_to_cpp(height)))
end

function dnn_setInputMean(cobj::Model, mean::Scalar)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputMean(julia_to_cpp(cobj),julia_to_cpp(mean)))
end

function dnn_setInputScale(cobj::Model, scale::Scalar)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputScale(julia_to_cpp(cobj),julia_to_cpp(scale)))
end

function dnn_setInputCrop(cobj::Model, crop::Bool)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputCrop(julia_to_cpp(cobj),julia_to_cpp(crop)))
end

function dnn_setInputSwapRB(cobj::Model, swapRB::Bool)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputSwapRB(julia_to_cpp(cobj),julia_to_cpp(swapRB)))
end

function dnn_setInputParams(cobj::Model, scale::Float64, size::Size{Int32}, mean::Scalar, swapRB::Bool, crop::Bool)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setInputParams(julia_to_cpp(cobj),julia_to_cpp(scale),julia_to_cpp(size),julia_to_cpp(mean),julia_to_cpp(swapRB),julia_to_cpp(crop)))
end
dnn_setInputParams(cobj::Model; scale::Float64 = Float64(1.0), size::Size{Int32} = (cpp_to_julia(SizeOP())), mean::Scalar = (cpp_to_julia(ScalarOP())), swapRB::Bool = (false), crop::Bool = (false)) = dnn_setInputParams(cobj, scale, size, mean, swapRB, crop)

function dnn_predict(cobj::Model, frame::InputArray, outs::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_predict(julia_to_cpp(cobj),julia_to_cpp(frame),julia_to_cpp(outs)))
end
dnn_predict(cobj::Model, frame::InputArray; outs::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) = dnn_predict(cobj, frame, outs)

function dnn_setPreferableTarget(cobj::Model, targetId::dnn_Target)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_setPreferableTarget(julia_to_cpp(cobj),julia_to_cpp(targetId)))
end

function dnn_Model(model::String, config::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_Model(julia_to_cpp(model),julia_to_cpp(config)))
end
dnn_Model(model::String; config::String = ("")) = dnn_Model(model, config)

function dnn_Model(network::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Model_cv_dnn_Model_Model(julia_to_cpp(network)))
end
function Base.getproperty(m::ClassificationModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ClassificationModel, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function dnn_classify(cobj::ClassificationModel, frame::InputArray)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_ClassificationModel_cv_dnn_ClassificationModel_classify(julia_to_cpp(cobj),julia_to_cpp(frame)))
end

function dnn_ClassificationModel(model::String, config::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_ClassificationModel_cv_dnn_ClassificationModel_ClassificationModel(julia_to_cpp(model),julia_to_cpp(config)))
end
dnn_ClassificationModel(model::String; config::String = ("")) = dnn_ClassificationModel(model, config)

function dnn_ClassificationModel(network::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_ClassificationModel_cv_dnn_ClassificationModel_ClassificationModel(julia_to_cpp(network)))
end
function Base.getproperty(m::KeypointsModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KeypointsModel, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function dnn_estimate(cobj::KeypointsModel, frame::InputArray, thresh::Float64)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_KeypointsModel_cv_dnn_KeypointsModel_estimate(julia_to_cpp(cobj),julia_to_cpp(frame),julia_to_cpp(thresh)))
end
dnn_estimate(cobj::KeypointsModel, frame::InputArray; thresh::Float64 = Float64(0.5)) = dnn_estimate(cobj, frame, thresh)

function dnn_KeypointsModel(model::String, config::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_KeypointsModel_cv_dnn_KeypointsModel_KeypointsModel(julia_to_cpp(model),julia_to_cpp(config)))
end
dnn_KeypointsModel(model::String; config::String = ("")) = dnn_KeypointsModel(model, config)

function dnn_KeypointsModel(network::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_KeypointsModel_cv_dnn_KeypointsModel_KeypointsModel(julia_to_cpp(network)))
end
function Base.getproperty(m::SegmentationModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SegmentationModel, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function dnn_segment(cobj::SegmentationModel, frame::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_SegmentationModel_cv_dnn_SegmentationModel_segment(julia_to_cpp(cobj),julia_to_cpp(frame),julia_to_cpp(mask)))
end
dnn_segment(cobj::SegmentationModel, frame::InputArray; mask::InputArray = (CxxMat())) = dnn_segment(cobj, frame, mask)

function dnn_SegmentationModel(model::String, config::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_SegmentationModel_cv_dnn_SegmentationModel_SegmentationModel(julia_to_cpp(model),julia_to_cpp(config)))
end
dnn_SegmentationModel(model::String; config::String = ("")) = dnn_SegmentationModel(model, config)

function dnn_SegmentationModel(network::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_SegmentationModel_cv_dnn_SegmentationModel_SegmentationModel(julia_to_cpp(network)))
end
function Base.getproperty(m::DetectionModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DetectionModel, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function dnn_detect(cobj::DetectionModel, frame::InputArray, confThreshold::Float64, nmsThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_DetectionModel_cv_dnn_DetectionModel_detect(julia_to_cpp(cobj),julia_to_cpp(frame),julia_to_cpp(confThreshold),julia_to_cpp(nmsThreshold)))
end
dnn_detect(cobj::DetectionModel, frame::InputArray; confThreshold::Float64 = Float64(0.5), nmsThreshold::Float64 = Float64(0)) = dnn_detect(cobj, frame, confThreshold, nmsThreshold)

function dnn_DetectionModel(model::String, config::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_DetectionModel_cv_dnn_DetectionModel_DetectionModel(julia_to_cpp(model),julia_to_cpp(config)))
end
dnn_DetectionModel(model::String; config::String = ("")) = dnn_DetectionModel(model, config)

function dnn_DetectionModel(network::Net)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_DetectionModel_cv_dnn_DetectionModel_DetectionModel(julia_to_cpp(network)))
end
function Base.getproperty(m::TextRecognitionModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TextRecognitionModel, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::TextDetectionModel, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TextDetectionModel, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::TextDetectionModel_EAST, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TextDetectionModel_EAST, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::TextDetectionModel_DB, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TextDetectionModel_DB, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function dnn_Net_readFromModelOptimizer(xml::String, bin::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_readFromModelOptimizer(julia_to_cpp(xml),julia_to_cpp(bin)))
end

function dnn_Net_readFromModelOptimizer(bufferModelConfig::Array{UInt8, 1}, bufferWeights::Array{UInt8, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_Net_readFromModelOptimizer(julia_to_cpp(bufferModelConfig),julia_to_cpp(bufferWeights)))
end

function dnn_readNetFromDarknet(cfgFile::String, darknetModel::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromDarknet(julia_to_cpp(cfgFile),julia_to_cpp(darknetModel)))
end
dnn_readNetFromDarknet(cfgFile::String; darknetModel::String = ("")) = dnn_readNetFromDarknet(cfgFile, darknetModel)

function dnn_readNetFromDarknet(bufferCfg::Array{UInt8, 1}, bufferModel::Array{UInt8, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromDarknet(julia_to_cpp(bufferCfg),julia_to_cpp(bufferModel)))
end
dnn_readNetFromDarknet(bufferCfg::Array{UInt8, 1}; bufferModel::Array{UInt8, 1} = (cpp_to_julia(stdggvectoriucharkOP()))) = dnn_readNetFromDarknet(bufferCfg, bufferModel)

function dnn_readNetFromCaffe(prototxt::String, caffeModel::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromCaffe(julia_to_cpp(prototxt),julia_to_cpp(caffeModel)))
end
dnn_readNetFromCaffe(prototxt::String; caffeModel::String = ("")) = dnn_readNetFromCaffe(prototxt, caffeModel)

function dnn_readNetFromCaffe(bufferProto::Array{UInt8, 1}, bufferModel::Array{UInt8, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromCaffe(julia_to_cpp(bufferProto),julia_to_cpp(bufferModel)))
end
dnn_readNetFromCaffe(bufferProto::Array{UInt8, 1}; bufferModel::Array{UInt8, 1} = (cpp_to_julia(stdggvectoriucharkOP()))) = dnn_readNetFromCaffe(bufferProto, bufferModel)

function dnn_readNetFromTensorflow(model::String, config::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromTensorflow(julia_to_cpp(model),julia_to_cpp(config)))
end
dnn_readNetFromTensorflow(model::String; config::String = ("")) = dnn_readNetFromTensorflow(model, config)

function dnn_readNetFromTensorflow(bufferModel::Array{UInt8, 1}, bufferConfig::Array{UInt8, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromTensorflow(julia_to_cpp(bufferModel),julia_to_cpp(bufferConfig)))
end
dnn_readNetFromTensorflow(bufferModel::Array{UInt8, 1}; bufferConfig::Array{UInt8, 1} = (cpp_to_julia(stdggvectoriucharkOP()))) = dnn_readNetFromTensorflow(bufferModel, bufferConfig)

function dnn_readNetFromTorch(model::String, isBinary::Bool, evaluate::Bool)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromTorch(julia_to_cpp(model),julia_to_cpp(isBinary),julia_to_cpp(evaluate)))
end
dnn_readNetFromTorch(model::String; isBinary::Bool = (true), evaluate::Bool = (true)) = dnn_readNetFromTorch(model, isBinary, evaluate)

function dnn_readNet(model::String, config::String, framework::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNet(julia_to_cpp(model),julia_to_cpp(config),julia_to_cpp(framework)))
end
dnn_readNet(model::String; config::String = (""), framework::String = ("")) = dnn_readNet(model, config, framework)

function dnn_readNet(framework::String, bufferModel::Array{UInt8, 1}, bufferConfig::Array{UInt8, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNet(julia_to_cpp(framework),julia_to_cpp(bufferModel),julia_to_cpp(bufferConfig)))
end
dnn_readNet(framework::String, bufferModel::Array{UInt8, 1}; bufferConfig::Array{UInt8, 1} = (cpp_to_julia(stdggvectoriucharkOP()))) = dnn_readNet(framework, bufferModel, bufferConfig)

function dnn_readTorchBlob(filename::String, isBinary::Bool)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readTorchBlob(julia_to_cpp(filename),julia_to_cpp(isBinary)))
end
dnn_readTorchBlob(filename::String; isBinary::Bool = (true)) = dnn_readTorchBlob(filename, isBinary)

function dnn_readNetFromModelOptimizer(xml::String, bin::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromModelOptimizer(julia_to_cpp(xml),julia_to_cpp(bin)))
end
dnn_readNetFromModelOptimizer(xml::String; bin::String = ("")) = dnn_readNetFromModelOptimizer(xml, bin)

function dnn_readNetFromModelOptimizer(bufferModelConfig::Array{UInt8, 1}, bufferWeights::Array{UInt8, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromModelOptimizer(julia_to_cpp(bufferModelConfig),julia_to_cpp(bufferWeights)))
end

function dnn_readNetFromONNX(onnxFile::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromONNX(julia_to_cpp(onnxFile)))
end

function dnn_readNetFromONNX(buffer::Array{UInt8, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readNetFromONNX(julia_to_cpp(buffer)))
end

function dnn_readTensorFromONNX(path::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_readTensorFromONNX(julia_to_cpp(path)))
end

function dnn_blobFromImage(image::InputArray, scalefactor::Float64, size::Size{Int32}, mean::Scalar, swapRB::Bool, crop::Bool, ddepth::Int64)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_blobFromImage(julia_to_cpp(image),julia_to_cpp(scalefactor),julia_to_cpp(size),julia_to_cpp(mean),julia_to_cpp(swapRB),julia_to_cpp(crop),julia_to_cpp(ddepth)))
end
dnn_blobFromImage(image::InputArray; scalefactor::Float64 = Float64(1.0), size::Size{Int32} = (cpp_to_julia(SizeOP())), mean::Scalar = (cpp_to_julia(ScalarOP())), swapRB::Bool = (false), crop::Bool = (false), ddepth::Int64 = Int64(CV_32F)) = dnn_blobFromImage(image, scalefactor, size, mean, swapRB, crop, ddepth)

function dnn_blobFromImages(images::AbstractVector{<:InputArray}, scalefactor::Float64, size::Size{Int32}, mean::Scalar, swapRB::Bool, crop::Bool, ddepth::Int64)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_blobFromImages(julia_to_cpp(images),julia_to_cpp(scalefactor),julia_to_cpp(size),julia_to_cpp(mean),julia_to_cpp(swapRB),julia_to_cpp(crop),julia_to_cpp(ddepth)))
end
dnn_blobFromImages(images::AbstractVector{<:InputArray}; scalefactor::Float64 = Float64(1.0), size::Size{Int32} = (cpp_to_julia(SizeOP())), mean::Scalar = (cpp_to_julia(ScalarOP())), swapRB::Bool = (false), crop::Bool = (false), ddepth::Int64 = Int64(CV_32F)) = dnn_blobFromImages(images, scalefactor, size, mean, swapRB, crop, ddepth)

function dnn_imagesFromBlob(blob_::InputArray, images_::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_imagesFromBlob(julia_to_cpp(blob_),julia_to_cpp(images_)))
end
dnn_imagesFromBlob(blob_::InputArray; images_::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) = dnn_imagesFromBlob(blob_, images_)

function dnn_shrinkCaffeModel(src::String, dst::String, layersTypes::Array{String, 1})
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_shrinkCaffeModel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(layersTypes)))
end
dnn_shrinkCaffeModel(src::String, dst::String; layersTypes::Array{String, 1} = (cpp_to_julia(stdggvectoriStringkOP()))) = dnn_shrinkCaffeModel(src, dst, layersTypes)

function dnn_writeTextGraph(model::String, output::String)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_writeTextGraph(julia_to_cpp(model),julia_to_cpp(output)))
end

function dnn_NMSBoxes(bboxes::Array{Rect{Float64}, 1}, scores::Array{Float32, 1}, score_threshold::Float64, nms_threshold::Float64, eta::Float64, top_k::Int64)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_NMSBoxes(julia_to_cpp(bboxes),julia_to_cpp(scores),julia_to_cpp(score_threshold),julia_to_cpp(nms_threshold),julia_to_cpp(eta),julia_to_cpp(top_k)))
end
dnn_NMSBoxes(bboxes::Array{Rect{Float64}, 1}, scores::Array{Float32, 1}, score_threshold::Float64, nms_threshold::Float64; eta::Float64 = Float64(1), top_k::Int64 = Int64(0)) = dnn_NMSBoxes(bboxes, scores, score_threshold, nms_threshold, eta, top_k)

function dnn_NMSBoxesRotated(bboxes::Array{RotatedRect, 1}, scores::Array{Float32, 1}, score_threshold::Float64, nms_threshold::Float64, eta::Float64, top_k::Int64)
	return cpp_to_julia(jlopencv_cv_dnn_cv_dnn_NMSBoxes(julia_to_cpp(bboxes),julia_to_cpp(scores),julia_to_cpp(score_threshold),julia_to_cpp(nms_threshold),julia_to_cpp(eta),julia_to_cpp(top_k)))
end
dnn_NMSBoxesRotated(bboxes::Array{RotatedRect, 1}, scores::Array{Float32, 1}, score_threshold::Float64, nms_threshold::Float64; eta::Float64 = Float64(1), top_k::Int64 = Int64(0)) = dnn_NMSBoxesRotated(bboxes, scores, score_threshold, nms_threshold, eta, top_k)



include("cv_dnn_accessor_cxx_wrap.jl")
