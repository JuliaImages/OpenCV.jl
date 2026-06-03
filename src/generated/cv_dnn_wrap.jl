module dnn
import ..OpenCV


const empty = OpenCV.dnn_empty
const dump = OpenCV.dnn_dump
const dumpToFile = OpenCV.dnn_dumpToFile
const setInputShape = OpenCV.dnn_setInputShape
const forward = OpenCV.dnn_forward
const forwardAsync = OpenCV.dnn_forwardAsync
const setPreferableBackend = OpenCV.dnn_setPreferableBackend
const setPreferableTarget = OpenCV.dnn_setPreferableTarget
const setInput = OpenCV.dnn_setInput
const setParam = OpenCV.dnn_setParam
const getParam = OpenCV.dnn_getParam
const getFLOPS = OpenCV.dnn_getFLOPS
const getMemoryConsumption = OpenCV.dnn_getMemoryConsumption
const enableFusion = OpenCV.dnn_enableFusion
const getPerfProfile = OpenCV.dnn_getPerfProfile
const Net = OpenCV.dnn_Net
const setInputSize = OpenCV.dnn_setInputSize
const setInputMean = OpenCV.dnn_setInputMean
const setInputScale = OpenCV.dnn_setInputScale
const setInputCrop = OpenCV.dnn_setInputCrop
const setInputSwapRB = OpenCV.dnn_setInputSwapRB
const setInputParams = OpenCV.dnn_setInputParams
const predict = OpenCV.dnn_predict
const Model = OpenCV.dnn_Model
const classify = OpenCV.dnn_classify
const ClassificationModel = OpenCV.dnn_ClassificationModel
const estimate = OpenCV.dnn_estimate
const KeypointsModel = OpenCV.dnn_KeypointsModel
const segment = OpenCV.dnn_segment
const SegmentationModel = OpenCV.dnn_SegmentationModel
const detect = OpenCV.dnn_detect
const DetectionModel = OpenCV.dnn_DetectionModel
const Net_readFromModelOptimizer = OpenCV.dnn_Net_readFromModelOptimizer
const readNetFromDarknet = OpenCV.dnn_readNetFromDarknet
const readNetFromCaffe = OpenCV.dnn_readNetFromCaffe
const readNetFromTensorflow = OpenCV.dnn_readNetFromTensorflow
const readNetFromTorch = OpenCV.dnn_readNetFromTorch
const readNet = OpenCV.dnn_readNet
const readTorchBlob = OpenCV.dnn_readTorchBlob
const readNetFromModelOptimizer = OpenCV.dnn_readNetFromModelOptimizer
const readNetFromONNX = OpenCV.dnn_readNetFromONNX
const readTensorFromONNX = OpenCV.dnn_readTensorFromONNX
const blobFromImage = OpenCV.dnn_blobFromImage
const blobFromImages = OpenCV.dnn_blobFromImages
const imagesFromBlob = OpenCV.dnn_imagesFromBlob
const shrinkCaffeModel = OpenCV.dnn_shrinkCaffeModel
const writeTextGraph = OpenCV.dnn_writeTextGraph
const NMSBoxes = OpenCV.dnn_NMSBoxes
const NMSBoxesRotated = OpenCV.dnn_NMSBoxesRotated
    const DNN_BACKEND_CANN = OpenCV.cv_dnn_DNN_BACKEND_CANN
    const DNN_BACKEND_CUDA = OpenCV.cv_dnn_DNN_BACKEND_CUDA
    const DNN_BACKEND_DEFAULT = OpenCV.cv_dnn_DNN_BACKEND_DEFAULT
    const DNN_BACKEND_HALIDE = OpenCV.cv_dnn_DNN_BACKEND_HALIDE
    const DNN_BACKEND_INFERENCE_ENGINE = OpenCV.cv_dnn_DNN_BACKEND_INFERENCE_ENGINE
    const DNN_BACKEND_OPENCV = OpenCV.cv_dnn_DNN_BACKEND_OPENCV
    const DNN_BACKEND_TIMVX = OpenCV.cv_dnn_DNN_BACKEND_TIMVX
    const DNN_BACKEND_VKCOM = OpenCV.cv_dnn_DNN_BACKEND_VKCOM
    const DNN_BACKEND_WEBNN = OpenCV.cv_dnn_DNN_BACKEND_WEBNN
    const DNN_LAYOUT_NCDHW = OpenCV.cv_dnn_DNN_LAYOUT_NCDHW
    const DNN_LAYOUT_NCHW = OpenCV.cv_dnn_DNN_LAYOUT_NCHW
    const DNN_LAYOUT_ND = OpenCV.cv_dnn_DNN_LAYOUT_ND
    const DNN_LAYOUT_NDHWC = OpenCV.cv_dnn_DNN_LAYOUT_NDHWC
    const DNN_LAYOUT_NHWC = OpenCV.cv_dnn_DNN_LAYOUT_NHWC
    const DNN_LAYOUT_PLANAR = OpenCV.cv_dnn_DNN_LAYOUT_PLANAR
    const DNN_LAYOUT_UNKNOWN = OpenCV.cv_dnn_DNN_LAYOUT_UNKNOWN
    const DNN_PMODE_CROP_CENTER = OpenCV.cv_dnn_DNN_PMODE_CROP_CENTER
    const DNN_PMODE_LETTERBOX = OpenCV.cv_dnn_DNN_PMODE_LETTERBOX
    const DNN_PMODE_NULL = OpenCV.cv_dnn_DNN_PMODE_NULL
    const DNN_TARGET_CPU = OpenCV.cv_dnn_DNN_TARGET_CPU
    const DNN_TARGET_CPU_FP16 = OpenCV.cv_dnn_DNN_TARGET_CPU_FP16
    const DNN_TARGET_CUDA = OpenCV.cv_dnn_DNN_TARGET_CUDA
    const DNN_TARGET_CUDA_FP16 = OpenCV.cv_dnn_DNN_TARGET_CUDA_FP16
    const DNN_TARGET_FPGA = OpenCV.cv_dnn_DNN_TARGET_FPGA
    const DNN_TARGET_HDDL = OpenCV.cv_dnn_DNN_TARGET_HDDL
    const DNN_TARGET_MYRIAD = OpenCV.cv_dnn_DNN_TARGET_MYRIAD
    const DNN_TARGET_NPU = OpenCV.cv_dnn_DNN_TARGET_NPU
    const DNN_TARGET_OPENCL = OpenCV.cv_dnn_DNN_TARGET_OPENCL
    const DNN_TARGET_OPENCL_FP16 = OpenCV.cv_dnn_DNN_TARGET_OPENCL_FP16
    const DNN_TARGET_VULKAN = OpenCV.cv_dnn_DNN_TARGET_VULKAN
    const SoftNMSMethod_SOFTNMS_GAUSSIAN = OpenCV.cv_dnn_SoftNMSMethod_SOFTNMS_GAUSSIAN
    const SOFT_NMSMETHOD_SOFTNMS_GAUSSIAN = OpenCV.cv_dnn_SOFT_NMSMETHOD_SOFTNMS_GAUSSIAN;
    const SoftNMSMethod_SOFTNMS_LINEAR = OpenCV.cv_dnn_SoftNMSMethod_SOFTNMS_LINEAR
    const SOFT_NMSMETHOD_SOFTNMS_LINEAR = OpenCV.cv_dnn_SOFT_NMSMETHOD_SOFTNMS_LINEAR;



include("cv_dnn_accessor_wrap.jl")
end