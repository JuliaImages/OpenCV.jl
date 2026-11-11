
   const SortFlags = Int64 

   const CovarFlags = Int64 

   const ReduceTypes = Int64 

   const RotateFlags = Int64 

   const PCA_Flags = Int64 

   const SVD_Flags = Int64 

   const KmeansFlags = Int64 

   const Formatter_FormatType = Int64 

   const Param = Int64 

   const DecompTypes = Int64 

   const NormTypes = Int64 

   const CmpTypes = Int64 

   const GemmFlags = Int64 

   const DftFlags = Int64 

   const BorderTypes = Int64 

   const SolveLPResult = Int64 

   const FileStorage_Mode = Int64 

   const FileStorage_State = Int64 

   const TermCriteria_Type = Int64 

   const AlgorithmHint = Int64 

   const SpecialFilter = Int64 

   const MorphTypes = Int64 

   const MorphShapes = Int64 

   const InterpolationFlags = Int64 

   const WarpPolarMode = Int64 

   const InterpolationMasks = Int64 

   const DistanceTransformMasks = Int64 

   const ThresholdTypes = Int64 

   const AdaptiveThresholdTypes = Int64 

   const GrabCutClasses = Int64 

   const GrabCutModes = Int64 

   const DistanceTransformLabelTypes = Int64 

   const FloodFillFlags = Int64 

   const AlphaCompositeOperations = Int64 

   const ConnectedComponentsTypes = Int64 

   const ConnectedComponentsAlgorithmsTypes = Int64 

   const RetrievalModes = Int64 

   const ContourApproximationModes = Int64 

   const ShapeMatchModes = Int64 

   const HoughModes = Int64 

   const HistCompMethods = Int64 

   const LineSegmentDetectorModes = Int64 

   const ColorConversionCodes = Int64 

   const LineTypes = Int64 

   const HersheyFonts = Int64 

   const MarkerTypes = Int64 

   const UndistortTypes = Int64 

   const TemplateMatchModes = Int64 

   const ColormapTypes = Int64 

   const PutTextFlags = Int64 

   const ORB_ScoreType = Int64 

   const FastFeatureDetector_DetectorType = Int64 

   const DescriptorMatcher_MatcherType = Int64 

   const LightGlueType = Int64 

   const LightGlueNormalization = Int64 

   const DrawMatchesFlags = Int64 

   const ANNIndex_Distance = Int64 

   const ImreadModes = Int64 

   const ImwriteFlags = Int64 

   const ImwriteJPEGSamplingFactorParams = Int64 

   const ImwriteTiffCompressionFlags = Int64 

   const ImwriteTiffPredictorFlags = Int64 

   const ImwriteTiffResolutionUnitFlags = Int64 

   const ImwriteEXRTypeFlags = Int64 

   const ImwriteEXRCompressionFlags = Int64 

   const ImwritePNGFlags = Int64 

   const ImwritePNGFilterFlags = Int64 

   const ImwritePAMFlags = Int64 

   const ImwriteWEBPLosslessMode = Int64 

   const ImwriteHDRCompressionFlags = Int64 

   const ImwriteBMPCompressionFlags = Int64 

   const ImwriteGIFCompressionFlags = Int64 

   const ImageMetadataType = Int64 

   const VideoCaptureAPIs = Int64 

   const VideoCaptureProperties = Int64 

   const VideoWriterProperties = Int64 

   const VideoWriterPresets = Int64 

   const VideoAccelerationType = Int64 

   const VideoCaptureOBSensorDataType = Int64 

   const VideoCaptureOBSensorGenerators = Int64 

   const VideoCaptureOBSensorProperties = Int64 

   const SolvePnPMethod = Int64 

   const SamplingMethod = Int64 

   const LocalOptimMethod = Int64 

   const ScoreMethod = Int64 

   const NeighborSearchMethod = Int64 

   const PolishingMethod = Int64 

   const MatrixType = Int64 

   const VariableType = Int64 

   const RectanglesIntersectTypes = Int64 

   const DistanceTypes = Int64 

   const CameraModel = Int64 

   const HandEyeCalibrationMethod = Int64 

   const RobotWorldHandEyeCalibrationMethod = Int64 

   const WindowFlags = Int64 

   const WindowPropertyFlags = Int64 

   const MouseEventTypes = Int64 

   const MouseEventFlags = Int64 

   const QtFontWeights = Int64 

   const QtFontStyles = Int64 

   const QtButtonTypes = Int64 

   const QRCodeEncoder_EncodeMode = Int64 

   const QRCodeEncoder_CorrectionLevel = Int64 

   const QRCodeEncoder_ECIEncodings = Int64 

   const CirclesGridFinderParameters_GridType = Int64 

   const FaceRecognizerSF_DisType = Int64 

   const Stitcher_Status = Int64 

   const Stitcher_Mode = Int64 

   const SeamlessCloneFlags = Int64 

   const TrackerKCF_MODE = Int64 
function Base.getproperty(m::ReduceParams, s::Symbol)
    if s==:rtype
        return cpp_to_julia(jlopencv_ReduceParams_get_rtype(m))
    end
    if s==:axes
        return cpp_to_julia(jlopencv_ReduceParams_get_axes(m))
    end
    if s==:keepdims
        return cpp_to_julia(jlopencv_ReduceParams_get_keepdims(m))
    end
    if s==:dtype
        return cpp_to_julia(jlopencv_ReduceParams_get_dtype(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ReduceParams, s::Symbol, v)
    if s==:rtype
        jlopencv_ReduceParams_set_rtype(m, julia_to_cpp(v))
        return v
    end
    if s==:axes
        jlopencv_ReduceParams_set_axes(m, julia_to_cpp(v))
        return v
    end
    if s==:keepdims
        jlopencv_ReduceParams_set_keepdims(m, julia_to_cpp(v))
        return v
    end
    if s==:dtype
        jlopencv_ReduceParams_set_dtype(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function ReduceParams(rtype::Int64, axes::Array{Int32, 1}, keepdims::Bool, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_ReduceParams_cv_ReduceParams_ReduceParams(julia_to_cpp(rtype),julia_to_cpp(axes),julia_to_cpp(keepdims),julia_to_cpp(dtype)))
end
function Base.getproperty(m::Algorithm, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Algorithm, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::FileStorage, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FileStorage, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function open(cobj::FileStorage, filename::String, flags::Int64, encoding::String)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(flags),julia_to_cpp(encoding)))
end
open(cobj::FileStorage, filename::String, flags::Int64; encoding::String = ("")) = open(cobj, filename, flags, encoding)

function isOpened(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_isOpened(julia_to_cpp(cobj)))
end

function release(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_release(julia_to_cpp(cobj)))
end

function releaseAndGetString(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_releaseAndGetString(julia_to_cpp(cobj)))
end

function getFirstTopLevelNode(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_getFirstTopLevelNode(julia_to_cpp(cobj)))
end

function root(cobj::FileStorage, streamidx::Int64)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_root(julia_to_cpp(cobj),julia_to_cpp(streamidx)))
end
root(cobj::FileStorage; streamidx::Int64 = Int64(0)) = root(cobj, streamidx)

function write(cobj::FileStorage, name::String, val::Int64)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::Bool)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::String)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::Array{String, 1})
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function writeComment(cobj::FileStorage, comment::String, append::Bool)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_writeComment(julia_to_cpp(cobj),julia_to_cpp(comment),julia_to_cpp(append)))
end
writeComment(cobj::FileStorage, comment::String; append::Bool = (false)) = writeComment(cobj, comment, append)

function startWriteStruct(cobj::FileStorage, name::String, flags::Int64, typeName::String)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_startWriteStruct(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(flags),julia_to_cpp(typeName)))
end
startWriteStruct(cobj::FileStorage, name::String, flags::Int64; typeName::String = ("")) = startWriteStruct(cobj, name, flags, typeName)

function endWriteStruct(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_endWriteStruct(julia_to_cpp(cobj)))
end

function getFormat(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_getFormat(julia_to_cpp(cobj)))
end


function FileStorage(filename::String, flags::Int64, encoding::String)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_FileStorage(julia_to_cpp(filename),julia_to_cpp(flags),julia_to_cpp(encoding)))
end
FileStorage(filename::String, flags::Int64; encoding::String = ("")) = FileStorage(filename, flags, encoding)
function Base.getproperty(m::FileNode, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FileNode, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function keys(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_keys(julia_to_cpp(cobj)))
end

function type(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_type(julia_to_cpp(cobj)))
end

function empty(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_empty(julia_to_cpp(cobj)))
end

function isNone(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isNone(julia_to_cpp(cobj)))
end

function isSeq(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isSeq(julia_to_cpp(cobj)))
end

function isMap(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isMap(julia_to_cpp(cobj)))
end

function isInt(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isInt(julia_to_cpp(cobj)))
end

function isReal(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isReal(julia_to_cpp(cobj)))
end

function isString(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isString(julia_to_cpp(cobj)))
end

function isNamed(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isNamed(julia_to_cpp(cobj)))
end

function name(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_name(julia_to_cpp(cobj)))
end

function size(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_size(julia_to_cpp(cobj)))
end

function rawSize(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_rawSize(julia_to_cpp(cobj)))
end

function real(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_real(julia_to_cpp(cobj)))
end

function string(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_string(julia_to_cpp(cobj)))
end

function mat(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_mat(julia_to_cpp(cobj)))
end

function Base.getproperty(m::KeyPoint, s::Symbol)
    if s==:pt
        return cpp_to_julia(jlopencv_KeyPoint_get_pt(m))
    end
    if s==:size
        return cpp_to_julia(jlopencv_KeyPoint_get_size(m))
    end
    if s==:angle
        return cpp_to_julia(jlopencv_KeyPoint_get_angle(m))
    end
    if s==:response
        return cpp_to_julia(jlopencv_KeyPoint_get_response(m))
    end
    if s==:octave
        return cpp_to_julia(jlopencv_KeyPoint_get_octave(m))
    end
    if s==:class_id
        return cpp_to_julia(jlopencv_KeyPoint_get_class_id(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KeyPoint, s::Symbol, v)
    if s==:pt
        jlopencv_KeyPoint_set_pt(m, julia_to_cpp(v))
        return v
    end
    if s==:size
        jlopencv_KeyPoint_set_size(m, julia_to_cpp(v))
        return v
    end
    if s==:angle
        jlopencv_KeyPoint_set_angle(m, julia_to_cpp(v))
        return v
    end
    if s==:response
        jlopencv_KeyPoint_set_response(m, julia_to_cpp(v))
        return v
    end
    if s==:octave
        jlopencv_KeyPoint_set_octave(m, julia_to_cpp(v))
        return v
    end
    if s==:class_id
        jlopencv_KeyPoint_set_class_id(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end


function KeyPoint(x::Float64, y::Float64, size::Float64, angle::Float64, response::Float64, octave::Int64, class_id::Int64)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_cv_KeyPoint_KeyPoint(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(size),julia_to_cpp(angle),julia_to_cpp(response),julia_to_cpp(octave),julia_to_cpp(class_id)))
end
KeyPoint(x::Float64, y::Float64, size::Float64; angle::Float64 = Float64(-1), response::Float64 = Float64(0), octave::Int64 = Int64(0), class_id::Int64 = Int64(-1)) = KeyPoint(x, y, size, angle, response, octave, class_id)
function Base.getproperty(m::DMatch, s::Symbol)
    if s==:queryIdx
        return cpp_to_julia(jlopencv_DMatch_get_queryIdx(m))
    end
    if s==:trainIdx
        return cpp_to_julia(jlopencv_DMatch_get_trainIdx(m))
    end
    if s==:imgIdx
        return cpp_to_julia(jlopencv_DMatch_get_imgIdx(m))
    end
    if s==:distance
        return cpp_to_julia(jlopencv_DMatch_get_distance(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DMatch, s::Symbol, v)
    if s==:queryIdx
        jlopencv_DMatch_set_queryIdx(m, julia_to_cpp(v))
        return v
    end
    if s==:trainIdx
        jlopencv_DMatch_set_trainIdx(m, julia_to_cpp(v))
        return v
    end
    if s==:imgIdx
        jlopencv_DMatch_set_imgIdx(m, julia_to_cpp(v))
        return v
    end
    if s==:distance
        jlopencv_DMatch_set_distance(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end


function DMatch(_queryIdx::Int64, _trainIdx::Int64, _distance::Float64)
	return cpp_to_julia(jlopencv_cv_cv_DMatch_cv_DMatch_DMatch(julia_to_cpp(_queryIdx),julia_to_cpp(_trainIdx),julia_to_cpp(_distance)))
end

function DMatch(_queryIdx::Int64, _trainIdx::Int64, _imgIdx::Int64, _distance::Float64)
	return cpp_to_julia(jlopencv_cv_cv_DMatch_cv_DMatch_DMatch(julia_to_cpp(_queryIdx),julia_to_cpp(_trainIdx),julia_to_cpp(_imgIdx),julia_to_cpp(_distance)))
end
function Base.getproperty(m::Moments, s::Symbol)
    if s==:m00
        return cpp_to_julia(jlopencv_Moments_get_m00(m))
    end
    if s==:m10
        return cpp_to_julia(jlopencv_Moments_get_m10(m))
    end
    if s==:m01
        return cpp_to_julia(jlopencv_Moments_get_m01(m))
    end
    if s==:m20
        return cpp_to_julia(jlopencv_Moments_get_m20(m))
    end
    if s==:m11
        return cpp_to_julia(jlopencv_Moments_get_m11(m))
    end
    if s==:m02
        return cpp_to_julia(jlopencv_Moments_get_m02(m))
    end
    if s==:m30
        return cpp_to_julia(jlopencv_Moments_get_m30(m))
    end
    if s==:m21
        return cpp_to_julia(jlopencv_Moments_get_m21(m))
    end
    if s==:m12
        return cpp_to_julia(jlopencv_Moments_get_m12(m))
    end
    if s==:m03
        return cpp_to_julia(jlopencv_Moments_get_m03(m))
    end
    if s==:mu20
        return cpp_to_julia(jlopencv_Moments_get_mu20(m))
    end
    if s==:mu11
        return cpp_to_julia(jlopencv_Moments_get_mu11(m))
    end
    if s==:mu02
        return cpp_to_julia(jlopencv_Moments_get_mu02(m))
    end
    if s==:mu30
        return cpp_to_julia(jlopencv_Moments_get_mu30(m))
    end
    if s==:mu21
        return cpp_to_julia(jlopencv_Moments_get_mu21(m))
    end
    if s==:mu12
        return cpp_to_julia(jlopencv_Moments_get_mu12(m))
    end
    if s==:mu03
        return cpp_to_julia(jlopencv_Moments_get_mu03(m))
    end
    if s==:nu20
        return cpp_to_julia(jlopencv_Moments_get_nu20(m))
    end
    if s==:nu11
        return cpp_to_julia(jlopencv_Moments_get_nu11(m))
    end
    if s==:nu02
        return cpp_to_julia(jlopencv_Moments_get_nu02(m))
    end
    if s==:nu30
        return cpp_to_julia(jlopencv_Moments_get_nu30(m))
    end
    if s==:nu21
        return cpp_to_julia(jlopencv_Moments_get_nu21(m))
    end
    if s==:nu12
        return cpp_to_julia(jlopencv_Moments_get_nu12(m))
    end
    if s==:nu03
        return cpp_to_julia(jlopencv_Moments_get_nu03(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Moments, s::Symbol, v)
    if s==:m00
        jlopencv_Moments_set_m00(m, julia_to_cpp(v))
        return v
    end
    if s==:m10
        jlopencv_Moments_set_m10(m, julia_to_cpp(v))
        return v
    end
    if s==:m01
        jlopencv_Moments_set_m01(m, julia_to_cpp(v))
        return v
    end
    if s==:m20
        jlopencv_Moments_set_m20(m, julia_to_cpp(v))
        return v
    end
    if s==:m11
        jlopencv_Moments_set_m11(m, julia_to_cpp(v))
        return v
    end
    if s==:m02
        jlopencv_Moments_set_m02(m, julia_to_cpp(v))
        return v
    end
    if s==:m30
        jlopencv_Moments_set_m30(m, julia_to_cpp(v))
        return v
    end
    if s==:m21
        jlopencv_Moments_set_m21(m, julia_to_cpp(v))
        return v
    end
    if s==:m12
        jlopencv_Moments_set_m12(m, julia_to_cpp(v))
        return v
    end
    if s==:m03
        jlopencv_Moments_set_m03(m, julia_to_cpp(v))
        return v
    end
    if s==:mu20
        jlopencv_Moments_set_mu20(m, julia_to_cpp(v))
        return v
    end
    if s==:mu11
        jlopencv_Moments_set_mu11(m, julia_to_cpp(v))
        return v
    end
    if s==:mu02
        jlopencv_Moments_set_mu02(m, julia_to_cpp(v))
        return v
    end
    if s==:mu30
        jlopencv_Moments_set_mu30(m, julia_to_cpp(v))
        return v
    end
    if s==:mu21
        jlopencv_Moments_set_mu21(m, julia_to_cpp(v))
        return v
    end
    if s==:mu12
        jlopencv_Moments_set_mu12(m, julia_to_cpp(v))
        return v
    end
    if s==:mu03
        jlopencv_Moments_set_mu03(m, julia_to_cpp(v))
        return v
    end
    if s==:nu20
        jlopencv_Moments_set_nu20(m, julia_to_cpp(v))
        return v
    end
    if s==:nu11
        jlopencv_Moments_set_nu11(m, julia_to_cpp(v))
        return v
    end
    if s==:nu02
        jlopencv_Moments_set_nu02(m, julia_to_cpp(v))
        return v
    end
    if s==:nu30
        jlopencv_Moments_set_nu30(m, julia_to_cpp(v))
        return v
    end
    if s==:nu21
        jlopencv_Moments_set_nu21(m, julia_to_cpp(v))
        return v
    end
    if s==:nu12
        jlopencv_Moments_set_nu12(m, julia_to_cpp(v))
        return v
    end
    if s==:nu03
        jlopencv_Moments_set_nu03(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::TickMeter, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TickMeter, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{GeneralizedHough}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GeneralizedHough}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{GeneralizedHoughBallard}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GeneralizedHoughBallard}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{GeneralizedHoughGuil}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GeneralizedHoughGuil}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{CLAHE}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{CLAHE}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{LineSegmentDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{LineSegmentDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::Filter2DParams, s::Symbol)
    if s==:anchorX
        return cpp_to_julia(jlopencv_Filter2DParams_get_anchorX(m))
    end
    if s==:anchorY
        return cpp_to_julia(jlopencv_Filter2DParams_get_anchorY(m))
    end
    if s==:borderType
        return cpp_to_julia(jlopencv_Filter2DParams_get_borderType(m))
    end
    if s==:ddepth
        return cpp_to_julia(jlopencv_Filter2DParams_get_ddepth(m))
    end
    if s==:scale
        return cpp_to_julia(jlopencv_Filter2DParams_get_scale(m))
    end
    if s==:shift
        return cpp_to_julia(jlopencv_Filter2DParams_get_shift(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Filter2DParams, s::Symbol, v)
    if s==:anchorX
        jlopencv_Filter2DParams_set_anchorX(m, julia_to_cpp(v))
        return v
    end
    if s==:anchorY
        jlopencv_Filter2DParams_set_anchorY(m, julia_to_cpp(v))
        return v
    end
    if s==:borderType
        jlopencv_Filter2DParams_set_borderType(m, julia_to_cpp(v))
        return v
    end
    if s==:ddepth
        jlopencv_Filter2DParams_set_ddepth(m, julia_to_cpp(v))
        return v
    end
    if s==:scale
        jlopencv_Filter2DParams_set_scale(m, julia_to_cpp(v))
        return v
    end
    if s==:shift
        jlopencv_Filter2DParams_set_shift(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::FontFace, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FontFace, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function set(cobj::FontFace, fontPathOrName::String)
	return cpp_to_julia(jlopencv_cv_cv_FontFace_cv_FontFace_set(julia_to_cpp(cobj),julia_to_cpp(fontPathOrName)))
end

function getName(cobj::FontFace)
	return cpp_to_julia(jlopencv_cv_cv_FontFace_cv_FontFace_getName(julia_to_cpp(cobj)))
end

function setInstance(cobj::FontFace, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_FontFace_cv_FontFace_setInstance(julia_to_cpp(cobj),julia_to_cpp(params)))
end

function getInstance(cobj::FontFace)
	return cpp_to_julia(jlopencv_cv_cv_FontFace_cv_FontFace_getInstance(julia_to_cpp(cobj)))
end


function FontFace(fontPathOrName::String)
	return cpp_to_julia(jlopencv_cv_cv_FontFace_cv_FontFace_FontFace(julia_to_cpp(fontPathOrName)))
end
function Base.getproperty(m::cv_Ptr{Feature2D}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{Feature2D}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function detect(cobj::cv_Ptr{T}, image::InputArray, mask::InputArray) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask)))
end
detect(cobj::cv_Ptr{T}, image::InputArray; mask::InputArray = (CxxMat())) where {T <: Feature2D} = detect(cobj, image, mask)

function detect(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}, masks::AbstractVector{<:InputArray}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(masks)))
end
detect(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}; masks::AbstractVector{<:InputArray} = (cpp_to_julia(vectorRMatOP()))) where {T <: Feature2D} = detect(cobj, images, masks)

function compute(cobj::cv_Ptr{T}, image::InputArray, keypoints::Array{KeyPoint, 1}, descriptors::InputArray) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::cv_Ptr{T}, image::InputArray, keypoints::Array{KeyPoint, 1}; descriptors::InputArray = (CxxMat())) where {T <: Feature2D} = compute(cobj, image, keypoints, descriptors)

function compute(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}, keypoints::Array{Array{KeyPoint, 1}, 1}, descriptors::AbstractVector{<:InputArray}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}, keypoints::Array{Array{KeyPoint, 1}, 1}; descriptors::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) where {T <: Feature2D} = compute(cobj, images, keypoints, descriptors)

function detectAndCompute(cobj::cv_Ptr{T}, image::InputArray, mask::InputArray, descriptors::InputArray, useProvidedKeypoints::Bool) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detectAndCompute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(descriptors),julia_to_cpp(useProvidedKeypoints)))
end
detectAndCompute(cobj::cv_Ptr{T}, image::InputArray, mask::InputArray; descriptors::InputArray = (CxxMat()), useProvidedKeypoints::Bool = (false)) where {T <: Feature2D} = detectAndCompute(cobj, image, mask, descriptors, useProvidedKeypoints)

function descriptorSize(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_descriptorSize(julia_to_cpp(cobj)))
end

function descriptorType(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_descriptorType(julia_to_cpp(cobj)))
end

function defaultNorm(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_defaultNorm(julia_to_cpp(cobj)))
end

function write(cobj::cv_Ptr{T}, fileName::String) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_write(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end

function write(cobj::cv_Ptr{T}, fs::FileStorage, name::String) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end

function read(cobj::cv_Ptr{T}, fileName::String) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_read(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end

function read(cobj::cv_Ptr{T}, arg1::FileNode) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_read(julia_to_cpp(cobj),julia_to_cpp(arg1)))
end

function empty(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_empty(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{AffineFeature}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{AffineFeature}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setViewParams(cobj::cv_Ptr{T}, tilts::Array{Float32, 1}, rolls::Array{Float32, 1}) where {T <: AffineFeature}
	return cpp_to_julia(jlopencv_cv_cv_AffineFeature_cv_AffineFeature_setViewParams(julia_to_cpp(cobj),julia_to_cpp(tilts),julia_to_cpp(rolls)))
end

function getViewParams(cobj::cv_Ptr{T}, tilts::Array{Float32, 1}, rolls::Array{Float32, 1}) where {T <: AffineFeature}
	return cpp_to_julia(jlopencv_cv_cv_AffineFeature_cv_AffineFeature_getViewParams(julia_to_cpp(cobj),julia_to_cpp(tilts),julia_to_cpp(rolls)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: AffineFeature}
	return cpp_to_julia(jlopencv_cv_cv_AffineFeature_cv_AffineFeature_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{SIFT}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SIFT}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_getDefaultName(julia_to_cpp(cobj)))
end

function setNFeatures(cobj::cv_Ptr{T}, maxFeatures::Int64) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_setNFeatures(julia_to_cpp(cobj),julia_to_cpp(maxFeatures)))
end

function getNFeatures(cobj::cv_Ptr{T}) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_getNFeatures(julia_to_cpp(cobj)))
end

function setNOctaveLayers(cobj::cv_Ptr{T}, nOctaveLayers::Int64) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_setNOctaveLayers(julia_to_cpp(cobj),julia_to_cpp(nOctaveLayers)))
end

function getNOctaveLayers(cobj::cv_Ptr{T}) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_getNOctaveLayers(julia_to_cpp(cobj)))
end

function setContrastThreshold(cobj::cv_Ptr{T}, contrastThreshold::Float64) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_setContrastThreshold(julia_to_cpp(cobj),julia_to_cpp(contrastThreshold)))
end

function getContrastThreshold(cobj::cv_Ptr{T}) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_getContrastThreshold(julia_to_cpp(cobj)))
end

function setEdgeThreshold(cobj::cv_Ptr{T}, edgeThreshold::Float64) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_setEdgeThreshold(julia_to_cpp(cobj),julia_to_cpp(edgeThreshold)))
end

function getEdgeThreshold(cobj::cv_Ptr{T}) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_getEdgeThreshold(julia_to_cpp(cobj)))
end

function setSigma(cobj::cv_Ptr{T}, sigma::Float64) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_setSigma(julia_to_cpp(cobj),julia_to_cpp(sigma)))
end

function getSigma(cobj::cv_Ptr{T}) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_getSigma(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{ORB}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{ORB}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setMaxFeatures(cobj::cv_Ptr{T}, maxFeatures::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setMaxFeatures(julia_to_cpp(cobj),julia_to_cpp(maxFeatures)))
end

function getMaxFeatures(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getMaxFeatures(julia_to_cpp(cobj)))
end

function setScaleFactor(cobj::cv_Ptr{T}, scaleFactor::Float64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setScaleFactor(julia_to_cpp(cobj),julia_to_cpp(scaleFactor)))
end

function getScaleFactor(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getScaleFactor(julia_to_cpp(cobj)))
end

function setNLevels(cobj::cv_Ptr{T}, nlevels::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setNLevels(julia_to_cpp(cobj),julia_to_cpp(nlevels)))
end

function getNLevels(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getNLevels(julia_to_cpp(cobj)))
end

function setEdgeThreshold(cobj::cv_Ptr{T}, edgeThreshold::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setEdgeThreshold(julia_to_cpp(cobj),julia_to_cpp(edgeThreshold)))
end

function getEdgeThreshold(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getEdgeThreshold(julia_to_cpp(cobj)))
end

function setFirstLevel(cobj::cv_Ptr{T}, firstLevel::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setFirstLevel(julia_to_cpp(cobj),julia_to_cpp(firstLevel)))
end

function getFirstLevel(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getFirstLevel(julia_to_cpp(cobj)))
end

function setWTA_K(cobj::cv_Ptr{T}, wta_k::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setWTA_K(julia_to_cpp(cobj),julia_to_cpp(wta_k)))
end

function getWTA_K(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getWTA_K(julia_to_cpp(cobj)))
end

function setScoreType(cobj::cv_Ptr{T}, scoreType::ORB_ScoreType) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setScoreType(julia_to_cpp(cobj),julia_to_cpp(scoreType)))
end

function getScoreType(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getScoreType(julia_to_cpp(cobj)))
end

function setPatchSize(cobj::cv_Ptr{T}, patchSize::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setPatchSize(julia_to_cpp(cobj),julia_to_cpp(patchSize)))
end

function getPatchSize(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getPatchSize(julia_to_cpp(cobj)))
end

function setFastThreshold(cobj::cv_Ptr{T}, fastThreshold::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setFastThreshold(julia_to_cpp(cobj),julia_to_cpp(fastThreshold)))
end

function getFastThreshold(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getFastThreshold(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{MSER}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{MSER}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function detectRegions(cobj::cv_Ptr{T}, image::InputArray) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_detectRegions(julia_to_cpp(cobj),julia_to_cpp(image)))
end

function setDelta(cobj::cv_Ptr{T}, delta::Int64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setDelta(julia_to_cpp(cobj),julia_to_cpp(delta)))
end

function getDelta(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getDelta(julia_to_cpp(cobj)))
end

function setMinArea(cobj::cv_Ptr{T}, minArea::Int64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMinArea(julia_to_cpp(cobj),julia_to_cpp(minArea)))
end

function getMinArea(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMinArea(julia_to_cpp(cobj)))
end

function setMaxArea(cobj::cv_Ptr{T}, maxArea::Int64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMaxArea(julia_to_cpp(cobj),julia_to_cpp(maxArea)))
end

function getMaxArea(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMaxArea(julia_to_cpp(cobj)))
end

function setMaxVariation(cobj::cv_Ptr{T}, maxVariation::Float64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMaxVariation(julia_to_cpp(cobj),julia_to_cpp(maxVariation)))
end

function getMaxVariation(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMaxVariation(julia_to_cpp(cobj)))
end

function setMinDiversity(cobj::cv_Ptr{T}, minDiversity::Float64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMinDiversity(julia_to_cpp(cobj),julia_to_cpp(minDiversity)))
end

function getMinDiversity(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMinDiversity(julia_to_cpp(cobj)))
end

function setMaxEvolution(cobj::cv_Ptr{T}, maxEvolution::Int64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMaxEvolution(julia_to_cpp(cobj),julia_to_cpp(maxEvolution)))
end

function getMaxEvolution(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMaxEvolution(julia_to_cpp(cobj)))
end

function setAreaThreshold(cobj::cv_Ptr{T}, areaThreshold::Float64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setAreaThreshold(julia_to_cpp(cobj),julia_to_cpp(areaThreshold)))
end

function getAreaThreshold(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getAreaThreshold(julia_to_cpp(cobj)))
end

function setMinMargin(cobj::cv_Ptr{T}, min_margin::Float64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMinMargin(julia_to_cpp(cobj),julia_to_cpp(min_margin)))
end

function getMinMargin(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMinMargin(julia_to_cpp(cobj)))
end

function setEdgeBlurSize(cobj::cv_Ptr{T}, edge_blur_size::Int64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setEdgeBlurSize(julia_to_cpp(cobj),julia_to_cpp(edge_blur_size)))
end

function getEdgeBlurSize(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getEdgeBlurSize(julia_to_cpp(cobj)))
end

function setPass2Only(cobj::cv_Ptr{T}, f::Bool) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setPass2Only(julia_to_cpp(cobj),julia_to_cpp(f)))
end

function getPass2Only(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getPass2Only(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{FastFeatureDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{FastFeatureDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setThreshold(cobj::cv_Ptr{T}, threshold::Int64) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getThreshold(cobj::cv_Ptr{T}) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getThreshold(julia_to_cpp(cobj)))
end

function setNonmaxSuppression(cobj::cv_Ptr{T}, f::Bool) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_setNonmaxSuppression(julia_to_cpp(cobj),julia_to_cpp(f)))
end

function getNonmaxSuppression(cobj::cv_Ptr{T}) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getNonmaxSuppression(julia_to_cpp(cobj)))
end

function setType(cobj::cv_Ptr{T}, type::FastFeatureDetector_DetectorType) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_setType(julia_to_cpp(cobj),julia_to_cpp(type)))
end

function getType(cobj::cv_Ptr{T}) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getType(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{GFTTDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GFTTDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setMaxFeatures(cobj::cv_Ptr{T}, maxFeatures::Int64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setMaxFeatures(julia_to_cpp(cobj),julia_to_cpp(maxFeatures)))
end

function getMaxFeatures(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getMaxFeatures(julia_to_cpp(cobj)))
end

function setQualityLevel(cobj::cv_Ptr{T}, qlevel::Float64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setQualityLevel(julia_to_cpp(cobj),julia_to_cpp(qlevel)))
end

function getQualityLevel(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getQualityLevel(julia_to_cpp(cobj)))
end

function setMinDistance(cobj::cv_Ptr{T}, minDistance::Float64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setMinDistance(julia_to_cpp(cobj),julia_to_cpp(minDistance)))
end

function getMinDistance(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getMinDistance(julia_to_cpp(cobj)))
end

function setBlockSize(cobj::cv_Ptr{T}, blockSize::Int64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end

function getBlockSize(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getBlockSize(julia_to_cpp(cobj)))
end

function setGradientSize(cobj::cv_Ptr{T}, gradientSize_::Int64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setGradientSize(julia_to_cpp(cobj),julia_to_cpp(gradientSize_)))
end

function getGradientSize(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getGradientSize(julia_to_cpp(cobj)))
end

function setHarrisDetector(cobj::cv_Ptr{T}, val::Bool) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setHarrisDetector(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getHarrisDetector(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getHarrisDetector(julia_to_cpp(cobj)))
end

function setK(cobj::cv_Ptr{T}, k::Float64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setK(julia_to_cpp(cobj),julia_to_cpp(k)))
end

function getK(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getK(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{DISK}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{DISK}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setMaxKeypoints(cobj::cv_Ptr{T}, maxKeypoints::Int64) where {T <: DISK}
	return cpp_to_julia(jlopencv_cv_cv_DISK_cv_DISK_setMaxKeypoints(julia_to_cpp(cobj),julia_to_cpp(maxKeypoints)))
end

function getMaxKeypoints(cobj::cv_Ptr{T}) where {T <: DISK}
	return cpp_to_julia(jlopencv_cv_cv_DISK_cv_DISK_getMaxKeypoints(julia_to_cpp(cobj)))
end

function setScoreThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: DISK}
	return cpp_to_julia(jlopencv_cv_cv_DISK_cv_DISK_setScoreThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getScoreThreshold(cobj::cv_Ptr{T}) where {T <: DISK}
	return cpp_to_julia(jlopencv_cv_cv_DISK_cv_DISK_getScoreThreshold(julia_to_cpp(cobj)))
end

function setImageSize(cobj::cv_Ptr{T}, size::Size{Int32}) where {T <: DISK}
	return cpp_to_julia(jlopencv_cv_cv_DISK_cv_DISK_setImageSize(julia_to_cpp(cobj),julia_to_cpp(size)))
end

function getImageSize(cobj::cv_Ptr{T}) where {T <: DISK}
	return cpp_to_julia(jlopencv_cv_cv_DISK_cv_DISK_getImageSize(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: DISK}
	return cpp_to_julia(jlopencv_cv_cv_DISK_cv_DISK_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{XFeat}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{XFeat}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setMaxKeypoints(cobj::cv_Ptr{T}, maxKeypoints::Int64) where {T <: XFeat}
	return cpp_to_julia(jlopencv_cv_cv_XFeat_cv_XFeat_setMaxKeypoints(julia_to_cpp(cobj),julia_to_cpp(maxKeypoints)))
end

function getMaxKeypoints(cobj::cv_Ptr{T}) where {T <: XFeat}
	return cpp_to_julia(jlopencv_cv_cv_XFeat_cv_XFeat_getMaxKeypoints(julia_to_cpp(cobj)))
end

function setScoreThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: XFeat}
	return cpp_to_julia(jlopencv_cv_cv_XFeat_cv_XFeat_setScoreThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getScoreThreshold(cobj::cv_Ptr{T}) where {T <: XFeat}
	return cpp_to_julia(jlopencv_cv_cv_XFeat_cv_XFeat_getScoreThreshold(julia_to_cpp(cobj)))
end

function setInputSize(cobj::cv_Ptr{T}, inputSize::Size{Int32}) where {T <: XFeat}
	return cpp_to_julia(jlopencv_cv_cv_XFeat_cv_XFeat_setInputSize(julia_to_cpp(cobj),julia_to_cpp(inputSize)))
end

function getInputSize(cobj::cv_Ptr{T}) where {T <: XFeat}
	return cpp_to_julia(jlopencv_cv_cv_XFeat_cv_XFeat_getInputSize(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: XFeat}
	return cpp_to_julia(jlopencv_cv_cv_XFeat_cv_XFeat_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{SimpleBlobDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SimpleBlobDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setParams(cobj::cv_Ptr{T}, params::SimpleBlobDetector_Params) where {T <: SimpleBlobDetector}
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_cv_SimpleBlobDetector_setParams(julia_to_cpp(cobj),julia_to_cpp(params)))
end

function getParams(cobj::cv_Ptr{T}) where {T <: SimpleBlobDetector}
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_cv_SimpleBlobDetector_getParams(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: SimpleBlobDetector}
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_cv_SimpleBlobDetector_getDefaultName(julia_to_cpp(cobj)))
end

function getBlobContours(cobj::cv_Ptr{T}) where {T <: SimpleBlobDetector}
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_cv_SimpleBlobDetector_getBlobContours(julia_to_cpp(cobj)))
end
function Base.getproperty(m::SimpleBlobDetector_Params, s::Symbol)
    if s==:thresholdStep
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_thresholdStep(m))
    end
    if s==:minThreshold
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minThreshold(m))
    end
    if s==:maxThreshold
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxThreshold(m))
    end
    if s==:minRepeatability
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minRepeatability(m))
    end
    if s==:minDistBetweenBlobs
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minDistBetweenBlobs(m))
    end
    if s==:filterByColor
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByColor(m))
    end
    if s==:blobColor
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_blobColor(m))
    end
    if s==:filterByArea
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByArea(m))
    end
    if s==:minArea
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minArea(m))
    end
    if s==:maxArea
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxArea(m))
    end
    if s==:filterByCircularity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByCircularity(m))
    end
    if s==:minCircularity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minCircularity(m))
    end
    if s==:maxCircularity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxCircularity(m))
    end
    if s==:filterByInertia
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByInertia(m))
    end
    if s==:minInertiaRatio
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minInertiaRatio(m))
    end
    if s==:maxInertiaRatio
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxInertiaRatio(m))
    end
    if s==:filterByConvexity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByConvexity(m))
    end
    if s==:minConvexity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minConvexity(m))
    end
    if s==:maxConvexity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxConvexity(m))
    end
    if s==:collectContours
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_collectContours(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SimpleBlobDetector_Params, s::Symbol, v)
    if s==:thresholdStep
        jlopencv_SimpleBlobDetector_Params_set_thresholdStep(m, julia_to_cpp(v))
        return v
    end
    if s==:minThreshold
        jlopencv_SimpleBlobDetector_Params_set_minThreshold(m, julia_to_cpp(v))
        return v
    end
    if s==:maxThreshold
        jlopencv_SimpleBlobDetector_Params_set_maxThreshold(m, julia_to_cpp(v))
        return v
    end
    if s==:minRepeatability
        jlopencv_SimpleBlobDetector_Params_set_minRepeatability(m, julia_to_cpp(v))
        return v
    end
    if s==:minDistBetweenBlobs
        jlopencv_SimpleBlobDetector_Params_set_minDistBetweenBlobs(m, julia_to_cpp(v))
        return v
    end
    if s==:filterByColor
        jlopencv_SimpleBlobDetector_Params_set_filterByColor(m, julia_to_cpp(v))
        return v
    end
    if s==:blobColor
        jlopencv_SimpleBlobDetector_Params_set_blobColor(m, julia_to_cpp(v))
        return v
    end
    if s==:filterByArea
        jlopencv_SimpleBlobDetector_Params_set_filterByArea(m, julia_to_cpp(v))
        return v
    end
    if s==:minArea
        jlopencv_SimpleBlobDetector_Params_set_minArea(m, julia_to_cpp(v))
        return v
    end
    if s==:maxArea
        jlopencv_SimpleBlobDetector_Params_set_maxArea(m, julia_to_cpp(v))
        return v
    end
    if s==:filterByCircularity
        jlopencv_SimpleBlobDetector_Params_set_filterByCircularity(m, julia_to_cpp(v))
        return v
    end
    if s==:minCircularity
        jlopencv_SimpleBlobDetector_Params_set_minCircularity(m, julia_to_cpp(v))
        return v
    end
    if s==:maxCircularity
        jlopencv_SimpleBlobDetector_Params_set_maxCircularity(m, julia_to_cpp(v))
        return v
    end
    if s==:filterByInertia
        jlopencv_SimpleBlobDetector_Params_set_filterByInertia(m, julia_to_cpp(v))
        return v
    end
    if s==:minInertiaRatio
        jlopencv_SimpleBlobDetector_Params_set_minInertiaRatio(m, julia_to_cpp(v))
        return v
    end
    if s==:maxInertiaRatio
        jlopencv_SimpleBlobDetector_Params_set_maxInertiaRatio(m, julia_to_cpp(v))
        return v
    end
    if s==:filterByConvexity
        jlopencv_SimpleBlobDetector_Params_set_filterByConvexity(m, julia_to_cpp(v))
        return v
    end
    if s==:minConvexity
        jlopencv_SimpleBlobDetector_Params_set_minConvexity(m, julia_to_cpp(v))
        return v
    end
    if s==:maxConvexity
        jlopencv_SimpleBlobDetector_Params_set_maxConvexity(m, julia_to_cpp(v))
        return v
    end
    if s==:collectContours
        jlopencv_SimpleBlobDetector_Params_set_collectContours(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::cv_Ptr{ALIKED}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{ALIKED}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::ALIKED_Params, s::Symbol)
    if s==:inputSize
        return cpp_to_julia(jlopencv_ALIKED_Params_get_inputSize(m))
    end
    if s==:normalizeDescriptors
        return cpp_to_julia(jlopencv_ALIKED_Params_get_normalizeDescriptors(m))
    end
    if s==:engine
        return cpp_to_julia(jlopencv_ALIKED_Params_get_engine(m))
    end
    if s==:backend
        return cpp_to_julia(jlopencv_ALIKED_Params_get_backend(m))
    end
    if s==:target
        return cpp_to_julia(jlopencv_ALIKED_Params_get_target(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ALIKED_Params, s::Symbol, v)
    if s==:inputSize
        jlopencv_ALIKED_Params_set_inputSize(m, julia_to_cpp(v))
        return v
    end
    if s==:normalizeDescriptors
        jlopencv_ALIKED_Params_set_normalizeDescriptors(m, julia_to_cpp(v))
        return v
    end
    if s==:engine
        jlopencv_ALIKED_Params_set_engine(m, julia_to_cpp(v))
        return v
    end
    if s==:backend
        jlopencv_ALIKED_Params_set_backend(m, julia_to_cpp(v))
        return v
    end
    if s==:target
        jlopencv_ALIKED_Params_set_target(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::cv_Ptr{DescriptorMatcher}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{DescriptorMatcher}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function add(cobj::cv_Ptr{T}, descriptors::AbstractVector{<:InputArray}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end

function getTrainDescriptors(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_getTrainDescriptors(julia_to_cpp(cobj)))
end

function clear(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_clear(julia_to_cpp(cobj)))
end

function empty(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_empty(julia_to_cpp(cobj)))
end

function isMaskSupported(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_isMaskSupported(julia_to_cpp(cobj)))
end

function setImagePairInfo(cobj::cv_Ptr{T}, queryKpts::Array{KeyPoint, 1}, trainKpts::Array{KeyPoint, 1}, queryImageSize::Size{Int32}, trainImageSize::Size{Int32}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_setImagePairInfo(julia_to_cpp(cobj),julia_to_cpp(queryKpts),julia_to_cpp(trainKpts),julia_to_cpp(queryImageSize),julia_to_cpp(trainImageSize)))
end
setImagePairInfo(cobj::cv_Ptr{T}, queryKpts::Array{KeyPoint, 1}, trainKpts::Array{KeyPoint, 1}; queryImageSize::Size{Int32} = (cpp_to_julia(SizeOP())), trainImageSize::Size{Int32} = (cpp_to_julia(SizeOP()))) where {T <: DescriptorMatcher} = setImagePairInfo(cobj, queryKpts, trainKpts, queryImageSize, trainImageSize)

function train(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_train(julia_to_cpp(cobj)))
end

function match(cobj::cv_Ptr{T}, queryDescriptors::InputArray, trainDescriptors::InputArray, mask::InputArray) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(mask)))
end
match(cobj::cv_Ptr{T}, queryDescriptors::InputArray, trainDescriptors::InputArray; mask::InputArray = (CxxMat())) where {T <: DescriptorMatcher} = match(cobj, queryDescriptors, trainDescriptors, mask)

function match(cobj::cv_Ptr{T}, queryDescriptors::InputArray, masks::AbstractVector{<:InputArray}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(masks)))
end
match(cobj::cv_Ptr{T}, queryDescriptors::InputArray; masks::AbstractVector{<:InputArray} = (cpp_to_julia(vectorRMatOP()))) where {T <: DescriptorMatcher} = match(cobj, queryDescriptors, masks)

function knnMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, trainDescriptors::InputArray, k::Int64, mask::InputArray, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(k),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
knnMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, trainDescriptors::InputArray, k::Int64; mask::InputArray = (CxxMat()), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = knnMatch(cobj, queryDescriptors, trainDescriptors, k, mask, compactResult)

function knnMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, k::Int64, masks::AbstractVector{<:InputArray}, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(k),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
knnMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, k::Int64; masks::AbstractVector{<:InputArray} = (cpp_to_julia(vectorRMatOP())), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = knnMatch(cobj, queryDescriptors, k, masks, compactResult)

function radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, trainDescriptors::InputArray, maxDistance::Float64, mask::InputArray, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, trainDescriptors::InputArray, maxDistance::Float64; mask::InputArray = (CxxMat()), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = radiusMatch(cobj, queryDescriptors, trainDescriptors, maxDistance, mask, compactResult)

function radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, maxDistance::Float64, masks::AbstractVector{<:InputArray}, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, maxDistance::Float64; masks::AbstractVector{<:InputArray} = (cpp_to_julia(vectorRMatOP())), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = radiusMatch(cobj, queryDescriptors, maxDistance, masks, compactResult)

function write(cobj::cv_Ptr{T}, fileName::String) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_write(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end

function write(cobj::cv_Ptr{T}, fs::FileStorage, name::String) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end

function read(cobj::cv_Ptr{T}, fileName::String) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_read(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end

function read(cobj::cv_Ptr{T}, arg1::FileNode) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_read(julia_to_cpp(cobj),julia_to_cpp(arg1)))
end

function clone(cobj::cv_Ptr{T}, emptyTrainData::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_clone(julia_to_cpp(cobj),julia_to_cpp(emptyTrainData)))
end
clone(cobj::cv_Ptr{T}; emptyTrainData::Bool = (false)) where {T <: DescriptorMatcher} = clone(cobj, emptyTrainData)
function Base.getproperty(m::cv_Ptr{BFMatcher}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{BFMatcher}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{FlannBasedMatcher}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{FlannBasedMatcher}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{LightGlueMatcher}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{LightGlueMatcher}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setPairInfo(cobj::cv_Ptr{T}, queryKpts::InputArray, trainKpts::InputArray, queryImageSize::Size{Int32}, trainImageSize::Size{Int32}) where {T <: LightGlueMatcher}
	return cpp_to_julia(jlopencv_cv_cv_LightGlueMatcher_cv_LightGlueMatcher_setPairInfo(julia_to_cpp(cobj),julia_to_cpp(queryKpts),julia_to_cpp(trainKpts),julia_to_cpp(queryImageSize),julia_to_cpp(trainImageSize)))
end
setPairInfo(cobj::cv_Ptr{T}, queryKpts::InputArray, trainKpts::InputArray; queryImageSize::Size{Int32} = (cpp_to_julia(SizeOP())), trainImageSize::Size{Int32} = (cpp_to_julia(SizeOP()))) where {T <: LightGlueMatcher} = setPairInfo(cobj, queryKpts, trainKpts, queryImageSize, trainImageSize)

function clearPairInfo(cobj::cv_Ptr{T}) where {T <: LightGlueMatcher}
	return cpp_to_julia(jlopencv_cv_cv_LightGlueMatcher_cv_LightGlueMatcher_clearPairInfo(julia_to_cpp(cobj)))
end

function setKeypointNormalization(cobj::cv_Ptr{T}, normalization::Int64) where {T <: LightGlueMatcher}
	return cpp_to_julia(jlopencv_cv_cv_LightGlueMatcher_cv_LightGlueMatcher_setKeypointNormalization(julia_to_cpp(cobj),julia_to_cpp(normalization)))
end

function getKeypointNormalization(cobj::cv_Ptr{T}) where {T <: LightGlueMatcher}
	return cpp_to_julia(jlopencv_cv_cv_LightGlueMatcher_cv_LightGlueMatcher_getKeypointNormalization(julia_to_cpp(cobj)))
end

function setImagePairInfo(cobj::cv_Ptr{T}, queryKpts::Array{KeyPoint, 1}, trainKpts::Array{KeyPoint, 1}, queryImageSize::Size{Int32}, trainImageSize::Size{Int32}) where {T <: LightGlueMatcher}
	return cpp_to_julia(jlopencv_cv_cv_LightGlueMatcher_cv_LightGlueMatcher_setImagePairInfo(julia_to_cpp(cobj),julia_to_cpp(queryKpts),julia_to_cpp(trainKpts),julia_to_cpp(queryImageSize),julia_to_cpp(trainImageSize)))
end
setImagePairInfo(cobj::cv_Ptr{T}, queryKpts::Array{KeyPoint, 1}, trainKpts::Array{KeyPoint, 1}; queryImageSize::Size{Int32} = (cpp_to_julia(SizeOP())), trainImageSize::Size{Int32} = (cpp_to_julia(SizeOP()))) where {T <: LightGlueMatcher} = setImagePairInfo(cobj, queryKpts, trainKpts, queryImageSize, trainImageSize)
function Base.getproperty(m::cv_Ptr{ANNIndex}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{ANNIndex}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function addItems(cobj::cv_Ptr{T}, features::InputArray) where {T <: ANNIndex}
	return cpp_to_julia(jlopencv_cv_cv_ANNIndex_cv_ANNIndex_addItems(julia_to_cpp(cobj),julia_to_cpp(features)))
end

function build(cobj::cv_Ptr{T}, trees::Int64) where {T <: ANNIndex}
	return cpp_to_julia(jlopencv_cv_cv_ANNIndex_cv_ANNIndex_build(julia_to_cpp(cobj),julia_to_cpp(trees)))
end
build(cobj::cv_Ptr{T}; trees::Int64 = Int64(-1)) where {T <: ANNIndex} = build(cobj, trees)

function knnSearch(cobj::cv_Ptr{T}, query::InputArray, knn::Int64, indices::InputArray, dists::InputArray, search_k::Int64) where {T <: ANNIndex}
	return cpp_to_julia(jlopencv_cv_cv_ANNIndex_cv_ANNIndex_knnSearch(julia_to_cpp(cobj),julia_to_cpp(query),julia_to_cpp(knn),julia_to_cpp(indices),julia_to_cpp(dists),julia_to_cpp(search_k)))
end
knnSearch(cobj::cv_Ptr{T}, query::InputArray, knn::Int64; indices::InputArray = (CxxMat()), dists::InputArray = (CxxMat()), search_k::Int64 = Int64(-1)) where {T <: ANNIndex} = knnSearch(cobj, query, knn, indices, dists, search_k)

function save(cobj::cv_Ptr{T}, filename::String, prefault::Bool) where {T <: ANNIndex}
	return cpp_to_julia(jlopencv_cv_cv_ANNIndex_cv_ANNIndex_save(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(prefault)))
end
save(cobj::cv_Ptr{T}, filename::String; prefault::Bool = (false)) where {T <: ANNIndex} = save(cobj, filename, prefault)

function load(cobj::cv_Ptr{T}, filename::String, prefault::Bool) where {T <: ANNIndex}
	return cpp_to_julia(jlopencv_cv_cv_ANNIndex_cv_ANNIndex_load(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(prefault)))
end
load(cobj::cv_Ptr{T}, filename::String; prefault::Bool = (false)) where {T <: ANNIndex} = load(cobj, filename, prefault)

function getTreeNumber(cobj::cv_Ptr{T}) where {T <: ANNIndex}
	return cpp_to_julia(jlopencv_cv_cv_ANNIndex_cv_ANNIndex_getTreeNumber(julia_to_cpp(cobj)))
end

function getItemNumber(cobj::cv_Ptr{T}) where {T <: ANNIndex}
	return cpp_to_julia(jlopencv_cv_cv_ANNIndex_cv_ANNIndex_getItemNumber(julia_to_cpp(cobj)))
end

function setOnDiskBuild(cobj::cv_Ptr{T}, filename::String) where {T <: ANNIndex}
	return cpp_to_julia(jlopencv_cv_cv_ANNIndex_cv_ANNIndex_setOnDiskBuild(julia_to_cpp(cobj),julia_to_cpp(filename)))
end

function setSeed(cobj::cv_Ptr{T}, seed::Int64) where {T <: ANNIndex}
	return cpp_to_julia(jlopencv_cv_cv_ANNIndex_cv_ANNIndex_setSeed(julia_to_cpp(cobj),julia_to_cpp(seed)))
end
function Base.getproperty(m::Animation, s::Symbol)
    if s==:loop_count
        return cpp_to_julia(jlopencv_Animation_get_loop_count(m))
    end
    if s==:bgcolor
        return cpp_to_julia(jlopencv_Animation_get_bgcolor(m))
    end
    if s==:durations
        return cpp_to_julia(jlopencv_Animation_get_durations(m))
    end
    if s==:frames
        return cpp_to_julia(jlopencv_Animation_get_frames(m))
    end
    if s==:still_image
        return cpp_to_julia(jlopencv_Animation_get_still_image(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Animation, s::Symbol, v)
    if s==:loop_count
        jlopencv_Animation_set_loop_count(m, julia_to_cpp(v))
        return v
    end
    if s==:bgcolor
        jlopencv_Animation_set_bgcolor(m, julia_to_cpp(v))
        return v
    end
    if s==:durations
        jlopencv_Animation_set_durations(m, julia_to_cpp(v))
        return v
    end
    if s==:frames
        jlopencv_Animation_set_frames(m, julia_to_cpp(v))
        return v
    end
    if s==:still_image
        jlopencv_Animation_set_still_image(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::VideoDeviceInfo, s::Symbol)
    if s==:cam_idx
        return cpp_to_julia(jlopencv_VideoDeviceInfo_get_cam_idx(m))
    end
    if s==:cam_name
        return cpp_to_julia(jlopencv_VideoDeviceInfo_get_cam_name(m))
    end
    if s==:backend
        return cpp_to_julia(jlopencv_VideoDeviceInfo_get_backend(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoDeviceInfo, s::Symbol, v)
    if s==:cam_idx
        jlopencv_VideoDeviceInfo_set_cam_idx(m, julia_to_cpp(v))
        return v
    end
    if s==:cam_name
        jlopencv_VideoDeviceInfo_set_cam_name(m, julia_to_cpp(v))
        return v
    end
    if s==:backend
        jlopencv_VideoDeviceInfo_set_backend(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::IStreamReader, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::IStreamReader, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::VideoCapture, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoCapture, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function open(cobj::VideoCapture, filename::String, apiPreference::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference)))
end
open(cobj::VideoCapture, filename::String; apiPreference::Int64 = Int64(cv_CAP_ANY)) = open(cobj, filename, apiPreference)

function open(cobj::VideoCapture, filename::String, apiPreference::Int64, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(params)))
end

function open(cobj::VideoCapture, index::Int64, apiPreference::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(index),julia_to_cpp(apiPreference)))
end
open(cobj::VideoCapture, index::Int64; apiPreference::Int64 = Int64(cv_CAP_ANY)) = open(cobj, index, apiPreference)

function open(cobj::VideoCapture, index::Int64, apiPreference::Int64, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(index),julia_to_cpp(apiPreference),julia_to_cpp(params)))
end

function open(cobj::VideoCapture, source::cv_Ptr{<:IStreamReader}, apiPreference::Int64, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(source),julia_to_cpp(apiPreference),julia_to_cpp(params)))
end

function isOpened(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_isOpened(julia_to_cpp(cobj)))
end

function release(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_release(julia_to_cpp(cobj)))
end

function grab(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_grab(julia_to_cpp(cobj)))
end

function retrieve(cobj::VideoCapture, image::InputArray, flag::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_retrieve(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(flag)))
end
retrieve(cobj::VideoCapture; image::InputArray = (CxxMat()), flag::Int64 = Int64(0)) = retrieve(cobj, image, flag)

function read(cobj::VideoCapture, image::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_read(julia_to_cpp(cobj),julia_to_cpp(image)))
end
read(cobj::VideoCapture; image::InputArray = (CxxMat())) = read(cobj, image)

function set(cobj::VideoCapture, propId::Int64, value::Float64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_set(julia_to_cpp(cobj),julia_to_cpp(propId),julia_to_cpp(value)))
end

function get(cobj::VideoCapture, propId::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_get(julia_to_cpp(cobj),julia_to_cpp(propId)))
end

function getBackendName(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_getBackendName(julia_to_cpp(cobj)))
end

function setExceptionMode(cobj::VideoCapture, enable::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_setExceptionMode(julia_to_cpp(cobj),julia_to_cpp(enable)))
end

function getExceptionMode(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_getExceptionMode(julia_to_cpp(cobj)))
end


function VideoCapture(filename::String, apiPreference::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(filename),julia_to_cpp(apiPreference)))
end
VideoCapture(filename::String; apiPreference::Int64 = Int64(cv_CAP_ANY)) = VideoCapture(filename, apiPreference)

function VideoCapture(filename::String, apiPreference::Int64, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(params)))
end

function VideoCapture(index::Int64, apiPreference::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(index),julia_to_cpp(apiPreference)))
end
VideoCapture(index::Int64; apiPreference::Int64 = Int64(cv_CAP_ANY)) = VideoCapture(index, apiPreference)

function VideoCapture(index::Int64, apiPreference::Int64, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(index),julia_to_cpp(apiPreference),julia_to_cpp(params)))
end

function VideoCapture(source::cv_Ptr{<:IStreamReader}, apiPreference::Int64, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(source),julia_to_cpp(apiPreference),julia_to_cpp(params)))
end
function Base.getproperty(m::VideoWriter, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoWriter, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function open(cobj::VideoWriter, filename::String, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
open(cobj::VideoWriter, filename::String, fourcc::Int64, fps::Float64, frameSize::Size{Int32}; isColor::Bool = (true)) = open(cobj, filename, fourcc, fps, frameSize, isColor)

function open(cobj::VideoWriter, filename::String, apiPreference::Int64, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
open(cobj::VideoWriter, filename::String, apiPreference::Int64, fourcc::Int64, fps::Float64, frameSize::Size{Int32}; isColor::Bool = (true)) = open(cobj, filename, apiPreference, fourcc, fps, frameSize, isColor)

function open(cobj::VideoWriter, filename::String, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(params)))
end

function open(cobj::VideoWriter, filename::String, apiPreference::Int64, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(params)))
end

function isOpened(cobj::VideoWriter)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_isOpened(julia_to_cpp(cobj)))
end

function release(cobj::VideoWriter)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_release(julia_to_cpp(cobj)))
end

function write(cobj::VideoWriter, image::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_write(julia_to_cpp(cobj),julia_to_cpp(image)))
end

function set(cobj::VideoWriter, propId::Int64, value::Float64)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_set(julia_to_cpp(cobj),julia_to_cpp(propId),julia_to_cpp(value)))
end

function get(cobj::VideoWriter, propId::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_get(julia_to_cpp(cobj),julia_to_cpp(propId)))
end

function getBackendName(cobj::VideoWriter)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_getBackendName(julia_to_cpp(cobj)))
end


function VideoWriter(filename::String, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
VideoWriter(filename::String, fourcc::Int64, fps::Float64, frameSize::Size{Int32}; isColor::Bool = (true)) = VideoWriter(filename, fourcc, fps, frameSize, isColor)

function VideoWriter(filename::String, apiPreference::Int64, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
VideoWriter(filename::String, apiPreference::Int64, fourcc::Int64, fps::Float64, frameSize::Size{Int32}; isColor::Bool = (true)) = VideoWriter(filename, apiPreference, fourcc, fps, frameSize, isColor)

function VideoWriter(filename::String, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(params)))
end

function VideoWriter(filename::String, apiPreference::Int64, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(params)))
end
function Base.getproperty(m::UsacParams, s::Symbol)
    if s==:confidence
        return cpp_to_julia(jlopencv_UsacParams_get_confidence(m))
    end
    if s==:isParallel
        return cpp_to_julia(jlopencv_UsacParams_get_isParallel(m))
    end
    if s==:loIterations
        return cpp_to_julia(jlopencv_UsacParams_get_loIterations(m))
    end
    if s==:loMethod
        return cpp_to_julia(jlopencv_UsacParams_get_loMethod(m))
    end
    if s==:loSampleSize
        return cpp_to_julia(jlopencv_UsacParams_get_loSampleSize(m))
    end
    if s==:maxIterations
        return cpp_to_julia(jlopencv_UsacParams_get_maxIterations(m))
    end
    if s==:neighborsSearch
        return cpp_to_julia(jlopencv_UsacParams_get_neighborsSearch(m))
    end
    if s==:randomGeneratorState
        return cpp_to_julia(jlopencv_UsacParams_get_randomGeneratorState(m))
    end
    if s==:sampler
        return cpp_to_julia(jlopencv_UsacParams_get_sampler(m))
    end
    if s==:score
        return cpp_to_julia(jlopencv_UsacParams_get_score(m))
    end
    if s==:threshold
        return cpp_to_julia(jlopencv_UsacParams_get_threshold(m))
    end
    if s==:final_polisher
        return cpp_to_julia(jlopencv_UsacParams_get_final_polisher(m))
    end
    if s==:final_polisher_iterations
        return cpp_to_julia(jlopencv_UsacParams_get_final_polisher_iterations(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::UsacParams, s::Symbol, v)
    if s==:confidence
        jlopencv_UsacParams_set_confidence(m, julia_to_cpp(v))
        return v
    end
    if s==:isParallel
        jlopencv_UsacParams_set_isParallel(m, julia_to_cpp(v))
        return v
    end
    if s==:loIterations
        jlopencv_UsacParams_set_loIterations(m, julia_to_cpp(v))
        return v
    end
    if s==:loMethod
        jlopencv_UsacParams_set_loMethod(m, julia_to_cpp(v))
        return v
    end
    if s==:loSampleSize
        jlopencv_UsacParams_set_loSampleSize(m, julia_to_cpp(v))
        return v
    end
    if s==:maxIterations
        jlopencv_UsacParams_set_maxIterations(m, julia_to_cpp(v))
        return v
    end
    if s==:neighborsSearch
        jlopencv_UsacParams_set_neighborsSearch(m, julia_to_cpp(v))
        return v
    end
    if s==:randomGeneratorState
        jlopencv_UsacParams_set_randomGeneratorState(m, julia_to_cpp(v))
        return v
    end
    if s==:sampler
        jlopencv_UsacParams_set_sampler(m, julia_to_cpp(v))
        return v
    end
    if s==:score
        jlopencv_UsacParams_set_score(m, julia_to_cpp(v))
        return v
    end
    if s==:threshold
        jlopencv_UsacParams_set_threshold(m, julia_to_cpp(v))
        return v
    end
    if s==:final_polisher
        jlopencv_UsacParams_set_final_polisher(m, julia_to_cpp(v))
        return v
    end
    if s==:final_polisher_iterations
        jlopencv_UsacParams_set_final_polisher_iterations(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::Subdiv2D, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Subdiv2D, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function initDelaunay(cobj::Subdiv2D, rect::Rect{Int32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_initDelaunay(julia_to_cpp(cobj),julia_to_cpp(rect)))
end

function initDelaunay(cobj::Subdiv2D, rect::Rect{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_initDelaunay(julia_to_cpp(cobj),julia_to_cpp(rect)))
end

function insert(cobj::Subdiv2D, pt::Point{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_insert(julia_to_cpp(cobj),julia_to_cpp(pt)))
end

function insert(cobj::Subdiv2D, ptvec::Array{Point{Float32}, 1})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_insert(julia_to_cpp(cobj),julia_to_cpp(ptvec)))
end

function locate(cobj::Subdiv2D, pt::Point{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_locate(julia_to_cpp(cobj),julia_to_cpp(pt)))
end

function findNearest(cobj::Subdiv2D, pt::Point{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_findNearest(julia_to_cpp(cobj),julia_to_cpp(pt)))
end

function getEdgeList(cobj::Subdiv2D)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getEdgeList(julia_to_cpp(cobj)))
end

function getLeadingEdgeList(cobj::Subdiv2D)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getLeadingEdgeList(julia_to_cpp(cobj)))
end

function getTriangleList(cobj::Subdiv2D)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getTriangleList(julia_to_cpp(cobj)))
end

function getVoronoiFacetList(cobj::Subdiv2D, idx::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getVoronoiFacetList(julia_to_cpp(cobj),julia_to_cpp(idx)))
end

function getVertex(cobj::Subdiv2D, vertex::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getVertex(julia_to_cpp(cobj),julia_to_cpp(vertex)))
end

function getEdge(cobj::Subdiv2D, edge::Int64, nextEdgeType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getEdge(julia_to_cpp(cobj),julia_to_cpp(edge),julia_to_cpp(nextEdgeType)))
end

function nextEdge(cobj::Subdiv2D, edge::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_nextEdge(julia_to_cpp(cobj),julia_to_cpp(edge)))
end

function rotateEdge(cobj::Subdiv2D, edge::Int64, rotate::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_rotateEdge(julia_to_cpp(cobj),julia_to_cpp(edge),julia_to_cpp(rotate)))
end

function symEdge(cobj::Subdiv2D, edge::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_symEdge(julia_to_cpp(cobj),julia_to_cpp(edge)))
end

function edgeOrg(cobj::Subdiv2D, edge::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_edgeOrg(julia_to_cpp(cobj),julia_to_cpp(edge)))
end

function edgeDst(cobj::Subdiv2D, edge::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_edgeDst(julia_to_cpp(cobj),julia_to_cpp(edge)))
end


function Subdiv2D(rect::Rect{Int32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_Subdiv2D(julia_to_cpp(rect)))
end

function Subdiv2D(rect2f::Rect{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_Subdiv2D(julia_to_cpp(rect2f)))
end
function Base.getproperty(m::cv_Ptr{StereoMatcher}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{StereoMatcher}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function compute(cobj::cv_Ptr{T}, left::InputArray, right::InputArray, disparity::InputArray) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_compute(julia_to_cpp(cobj),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(disparity)))
end
compute(cobj::cv_Ptr{T}, left::InputArray, right::InputArray; disparity::InputArray = (CxxMat())) where {T <: StereoMatcher} = compute(cobj, left, right, disparity)

function getMinDisparity(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getMinDisparity(julia_to_cpp(cobj)))
end

function setMinDisparity(cobj::cv_Ptr{T}, minDisparity::Int64) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setMinDisparity(julia_to_cpp(cobj),julia_to_cpp(minDisparity)))
end

function getNumDisparities(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getNumDisparities(julia_to_cpp(cobj)))
end

function setNumDisparities(cobj::cv_Ptr{T}, numDisparities::Int64) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setNumDisparities(julia_to_cpp(cobj),julia_to_cpp(numDisparities)))
end

function getBlockSize(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getBlockSize(julia_to_cpp(cobj)))
end

function setBlockSize(cobj::cv_Ptr{T}, blockSize::Int64) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end

function getSpeckleWindowSize(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getSpeckleWindowSize(julia_to_cpp(cobj)))
end

function setSpeckleWindowSize(cobj::cv_Ptr{T}, speckleWindowSize::Int64) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setSpeckleWindowSize(julia_to_cpp(cobj),julia_to_cpp(speckleWindowSize)))
end

function getSpeckleRange(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getSpeckleRange(julia_to_cpp(cobj)))
end

function setSpeckleRange(cobj::cv_Ptr{T}, speckleRange::Int64) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setSpeckleRange(julia_to_cpp(cobj),julia_to_cpp(speckleRange)))
end

function getDisp12MaxDiff(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getDisp12MaxDiff(julia_to_cpp(cobj)))
end

function setDisp12MaxDiff(cobj::cv_Ptr{T}, disp12MaxDiff::Int64) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setDisp12MaxDiff(julia_to_cpp(cobj),julia_to_cpp(disp12MaxDiff)))
end
function Base.getproperty(m::cv_Ptr{StereoBM}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{StereoBM}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getPreFilterType(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getPreFilterType(julia_to_cpp(cobj)))
end

function setPreFilterType(cobj::cv_Ptr{T}, preFilterType::Int64) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setPreFilterType(julia_to_cpp(cobj),julia_to_cpp(preFilterType)))
end

function getPreFilterSize(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getPreFilterSize(julia_to_cpp(cobj)))
end

function setPreFilterSize(cobj::cv_Ptr{T}, preFilterSize::Int64) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setPreFilterSize(julia_to_cpp(cobj),julia_to_cpp(preFilterSize)))
end

function getPreFilterCap(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getPreFilterCap(julia_to_cpp(cobj)))
end

function setPreFilterCap(cobj::cv_Ptr{T}, preFilterCap::Int64) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setPreFilterCap(julia_to_cpp(cobj),julia_to_cpp(preFilterCap)))
end

function getTextureThreshold(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getTextureThreshold(julia_to_cpp(cobj)))
end

function setTextureThreshold(cobj::cv_Ptr{T}, textureThreshold::Int64) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setTextureThreshold(julia_to_cpp(cobj),julia_to_cpp(textureThreshold)))
end

function getUniquenessRatio(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getUniquenessRatio(julia_to_cpp(cobj)))
end

function setUniquenessRatio(cobj::cv_Ptr{T}, uniquenessRatio::Int64) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setUniquenessRatio(julia_to_cpp(cobj),julia_to_cpp(uniquenessRatio)))
end

function getSmallerBlockSize(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getSmallerBlockSize(julia_to_cpp(cobj)))
end

function setSmallerBlockSize(cobj::cv_Ptr{T}, blockSize::Int64) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setSmallerBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end

function getROI1(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getROI1(julia_to_cpp(cobj)))
end

function setROI1(cobj::cv_Ptr{T}, roi1::Rect{Int32}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setROI1(julia_to_cpp(cobj),julia_to_cpp(roi1)))
end

function getROI2(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getROI2(julia_to_cpp(cobj)))
end

function setROI2(cobj::cv_Ptr{T}, roi2::Rect{Int32}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setROI2(julia_to_cpp(cobj),julia_to_cpp(roi2)))
end
function Base.getproperty(m::cv_Ptr{StereoSGBM}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{StereoSGBM}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getPreFilterCap(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getPreFilterCap(julia_to_cpp(cobj)))
end

function setPreFilterCap(cobj::cv_Ptr{T}, preFilterCap::Int64) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setPreFilterCap(julia_to_cpp(cobj),julia_to_cpp(preFilterCap)))
end

function getUniquenessRatio(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getUniquenessRatio(julia_to_cpp(cobj)))
end

function setUniquenessRatio(cobj::cv_Ptr{T}, uniquenessRatio::Int64) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setUniquenessRatio(julia_to_cpp(cobj),julia_to_cpp(uniquenessRatio)))
end

function getP1(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getP1(julia_to_cpp(cobj)))
end

function setP1(cobj::cv_Ptr{T}, P1::Int64) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setP1(julia_to_cpp(cobj),julia_to_cpp(P1)))
end

function getP2(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getP2(julia_to_cpp(cobj)))
end

function setP2(cobj::cv_Ptr{T}, P2::Int64) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setP2(julia_to_cpp(cobj),julia_to_cpp(P2)))
end

function getMode(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getMode(julia_to_cpp(cobj)))
end

function setMode(cobj::cv_Ptr{T}, mode::Int64) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setMode(julia_to_cpp(cobj),julia_to_cpp(mode)))
end
function Base.getproperty(m::cv_Ptr{QRCodeEncoder}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{QRCodeEncoder}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function encode(cobj::cv_Ptr{T}, encoded_info::String, qrcode::InputArray) where {T <: QRCodeEncoder}
	return cpp_to_julia(jlopencv_cv_cv_QRCodeEncoder_cv_QRCodeEncoder_encode(julia_to_cpp(cobj),julia_to_cpp(encoded_info),julia_to_cpp(qrcode)))
end
encode(cobj::cv_Ptr{T}, encoded_info::String; qrcode::InputArray = (CxxMat())) where {T <: QRCodeEncoder} = encode(cobj, encoded_info, qrcode)

function encodeStructuredAppend(cobj::cv_Ptr{T}, encoded_info::String, qrcodes::AbstractVector{<:InputArray}) where {T <: QRCodeEncoder}
	return cpp_to_julia(jlopencv_cv_cv_QRCodeEncoder_cv_QRCodeEncoder_encodeStructuredAppend(julia_to_cpp(cobj),julia_to_cpp(encoded_info),julia_to_cpp(qrcodes)))
end
encodeStructuredAppend(cobj::cv_Ptr{T}, encoded_info::String; qrcodes::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) where {T <: QRCodeEncoder} = encodeStructuredAppend(cobj, encoded_info, qrcodes)
function Base.getproperty(m::QRCodeEncoder_Params, s::Symbol)
    if s==:version
        return cpp_to_julia(jlopencv_QRCodeEncoder_Params_get_version(m))
    end
    if s==:correction_level
        return cpp_to_julia(jlopencv_QRCodeEncoder_Params_get_correction_level(m))
    end
    if s==:mode
        return cpp_to_julia(jlopencv_QRCodeEncoder_Params_get_mode(m))
    end
    if s==:structure_number
        return cpp_to_julia(jlopencv_QRCodeEncoder_Params_get_structure_number(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::QRCodeEncoder_Params, s::Symbol, v)
    if s==:version
        jlopencv_QRCodeEncoder_Params_set_version(m, julia_to_cpp(v))
        return v
    end
    if s==:correction_level
        jlopencv_QRCodeEncoder_Params_set_correction_level(m, julia_to_cpp(v))
        return v
    end
    if s==:mode
        jlopencv_QRCodeEncoder_Params_set_mode(m, julia_to_cpp(v))
        return v
    end
    if s==:structure_number
        jlopencv_QRCodeEncoder_Params_set_structure_number(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::QRCodeDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::QRCodeDetector, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setEpsX(cobj::QRCodeDetector, epsX::Float64)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_setEpsX(julia_to_cpp(cobj),julia_to_cpp(epsX)))
end

function setEpsY(cobj::QRCodeDetector, epsY::Float64)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_setEpsY(julia_to_cpp(cobj),julia_to_cpp(epsY)))
end

function setUseAlignmentMarkers(cobj::QRCodeDetector, useAlignmentMarkers::Bool)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_setUseAlignmentMarkers(julia_to_cpp(cobj),julia_to_cpp(useAlignmentMarkers)))
end

function decodeCurved(cobj::QRCodeDetector, img::InputArray, points::InputArray, straight_qrcode::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_decodeCurved(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
decodeCurved(cobj::QRCodeDetector, img::InputArray, points::InputArray; straight_qrcode::InputArray = (CxxMat())) = decodeCurved(cobj, img, points, straight_qrcode)

function detectAndDecodeCurved(cobj::QRCodeDetector, img::InputArray, points::InputArray, straight_qrcode::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_detectAndDecodeCurved(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_qrcode)))
end
detectAndDecodeCurved(cobj::QRCodeDetector, img::InputArray; points::InputArray = (CxxMat()), straight_qrcode::InputArray = (CxxMat())) = detectAndDecodeCurved(cobj, img, points, straight_qrcode)

function getEncoding(cobj::QRCodeDetector, codeIdx::Int64)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetector_cv_QRCodeDetector_getEncoding(julia_to_cpp(cobj),julia_to_cpp(codeIdx)))
end
getEncoding(cobj::QRCodeDetector; codeIdx::Int64 = Int64(0)) = getEncoding(cobj, codeIdx)

function Base.getproperty(m::QRCodeDetectorAruco, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::QRCodeDetectorAruco, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getDetectorParameters(cobj::QRCodeDetectorAruco)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetectorAruco_cv_QRCodeDetectorAruco_getDetectorParameters(julia_to_cpp(cobj)))
end

function setDetectorParameters(cobj::QRCodeDetectorAruco, params::QRCodeDetectorAruco_Params)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetectorAruco_cv_QRCodeDetectorAruco_setDetectorParameters(julia_to_cpp(cobj),julia_to_cpp(params)))
end

function getArucoParameters(cobj::QRCodeDetectorAruco)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetectorAruco_cv_QRCodeDetectorAruco_getArucoParameters(julia_to_cpp(cobj)))
end

function setArucoParameters(cobj::QRCodeDetectorAruco, params::DetectorParameters)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetectorAruco_cv_QRCodeDetectorAruco_setArucoParameters(julia_to_cpp(cobj),julia_to_cpp(params)))
end


function QRCodeDetectorAruco(params::QRCodeDetectorAruco_Params)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeDetectorAruco_cv_QRCodeDetectorAruco_QRCodeDetectorAruco(julia_to_cpp(params)))
end
function Base.getproperty(m::QRCodeDetectorAruco_Params, s::Symbol)
    if s==:minModuleSizeInPyramid
        return cpp_to_julia(jlopencv_QRCodeDetectorAruco_Params_get_minModuleSizeInPyramid(m))
    end
    if s==:maxRotation
        return cpp_to_julia(jlopencv_QRCodeDetectorAruco_Params_get_maxRotation(m))
    end
    if s==:maxModuleSizeMismatch
        return cpp_to_julia(jlopencv_QRCodeDetectorAruco_Params_get_maxModuleSizeMismatch(m))
    end
    if s==:maxTimingPatternMismatch
        return cpp_to_julia(jlopencv_QRCodeDetectorAruco_Params_get_maxTimingPatternMismatch(m))
    end
    if s==:maxPenalties
        return cpp_to_julia(jlopencv_QRCodeDetectorAruco_Params_get_maxPenalties(m))
    end
    if s==:maxColorsMismatch
        return cpp_to_julia(jlopencv_QRCodeDetectorAruco_Params_get_maxColorsMismatch(m))
    end
    if s==:scaleTimingPatternScore
        return cpp_to_julia(jlopencv_QRCodeDetectorAruco_Params_get_scaleTimingPatternScore(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::QRCodeDetectorAruco_Params, s::Symbol, v)
    if s==:minModuleSizeInPyramid
        jlopencv_QRCodeDetectorAruco_Params_set_minModuleSizeInPyramid(m, julia_to_cpp(v))
        return v
    end
    if s==:maxRotation
        jlopencv_QRCodeDetectorAruco_Params_set_maxRotation(m, julia_to_cpp(v))
        return v
    end
    if s==:maxModuleSizeMismatch
        jlopencv_QRCodeDetectorAruco_Params_set_maxModuleSizeMismatch(m, julia_to_cpp(v))
        return v
    end
    if s==:maxTimingPatternMismatch
        jlopencv_QRCodeDetectorAruco_Params_set_maxTimingPatternMismatch(m, julia_to_cpp(v))
        return v
    end
    if s==:maxPenalties
        jlopencv_QRCodeDetectorAruco_Params_set_maxPenalties(m, julia_to_cpp(v))
        return v
    end
    if s==:maxColorsMismatch
        jlopencv_QRCodeDetectorAruco_Params_set_maxColorsMismatch(m, julia_to_cpp(v))
        return v
    end
    if s==:scaleTimingPatternScore
        jlopencv_QRCodeDetectorAruco_Params_set_scaleTimingPatternScore(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::CirclesGridFinderParameters, s::Symbol)
    if s==:densityNeighborhoodSize
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_densityNeighborhoodSize(m))
    end
    if s==:minDensity
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minDensity(m))
    end
    if s==:kmeansAttempts
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_kmeansAttempts(m))
    end
    if s==:minDistanceToAddKeypoint
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minDistanceToAddKeypoint(m))
    end
    if s==:keypointScale
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_keypointScale(m))
    end
    if s==:minGraphConfidence
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minGraphConfidence(m))
    end
    if s==:vertexGain
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_vertexGain(m))
    end
    if s==:vertexPenalty
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_vertexPenalty(m))
    end
    if s==:existingVertexGain
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_existingVertexGain(m))
    end
    if s==:edgeGain
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_edgeGain(m))
    end
    if s==:edgePenalty
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_edgePenalty(m))
    end
    if s==:convexHullFactor
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_convexHullFactor(m))
    end
    if s==:minRNGEdgeSwitchDist
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minRNGEdgeSwitchDist(m))
    end
    if s==:gridType
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_gridType(m))
    end
    if s==:squareSize
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_squareSize(m))
    end
    if s==:maxRectifiedDistance
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_maxRectifiedDistance(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::CirclesGridFinderParameters, s::Symbol, v)
    if s==:densityNeighborhoodSize
        jlopencv_CirclesGridFinderParameters_set_densityNeighborhoodSize(m, julia_to_cpp(v))
        return v
    end
    if s==:minDensity
        jlopencv_CirclesGridFinderParameters_set_minDensity(m, julia_to_cpp(v))
        return v
    end
    if s==:kmeansAttempts
        jlopencv_CirclesGridFinderParameters_set_kmeansAttempts(m, julia_to_cpp(v))
        return v
    end
    if s==:minDistanceToAddKeypoint
        jlopencv_CirclesGridFinderParameters_set_minDistanceToAddKeypoint(m, julia_to_cpp(v))
        return v
    end
    if s==:keypointScale
        jlopencv_CirclesGridFinderParameters_set_keypointScale(m, julia_to_cpp(v))
        return v
    end
    if s==:minGraphConfidence
        jlopencv_CirclesGridFinderParameters_set_minGraphConfidence(m, julia_to_cpp(v))
        return v
    end
    if s==:vertexGain
        jlopencv_CirclesGridFinderParameters_set_vertexGain(m, julia_to_cpp(v))
        return v
    end
    if s==:vertexPenalty
        jlopencv_CirclesGridFinderParameters_set_vertexPenalty(m, julia_to_cpp(v))
        return v
    end
    if s==:existingVertexGain
        jlopencv_CirclesGridFinderParameters_set_existingVertexGain(m, julia_to_cpp(v))
        return v
    end
    if s==:edgeGain
        jlopencv_CirclesGridFinderParameters_set_edgeGain(m, julia_to_cpp(v))
        return v
    end
    if s==:edgePenalty
        jlopencv_CirclesGridFinderParameters_set_edgePenalty(m, julia_to_cpp(v))
        return v
    end
    if s==:convexHullFactor
        jlopencv_CirclesGridFinderParameters_set_convexHullFactor(m, julia_to_cpp(v))
        return v
    end
    if s==:minRNGEdgeSwitchDist
        jlopencv_CirclesGridFinderParameters_set_minRNGEdgeSwitchDist(m, julia_to_cpp(v))
        return v
    end
    if s==:gridType
        jlopencv_CirclesGridFinderParameters_set_gridType(m, julia_to_cpp(v))
        return v
    end
    if s==:squareSize
        jlopencv_CirclesGridFinderParameters_set_squareSize(m, julia_to_cpp(v))
        return v
    end
    if s==:maxRectifiedDistance
        jlopencv_CirclesGridFinderParameters_set_maxRectifiedDistance(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::GraphicalCodeDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GraphicalCodeDetector, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function detect(cobj::GraphicalCodeDetector, img::InputArray, points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_GraphicalCodeDetector_cv_GraphicalCodeDetector_detect(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detect(cobj::GraphicalCodeDetector, img::InputArray; points::InputArray = (CxxMat())) = detect(cobj, img, points)

function decode(cobj::GraphicalCodeDetector, img::InputArray, points::InputArray, straight_code::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_GraphicalCodeDetector_cv_GraphicalCodeDetector_decode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_code)))
end
decode(cobj::GraphicalCodeDetector, img::InputArray, points::InputArray; straight_code::InputArray = (CxxMat())) = decode(cobj, img, points, straight_code)

function detectAndDecode(cobj::GraphicalCodeDetector, img::InputArray, points::InputArray, straight_code::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_GraphicalCodeDetector_cv_GraphicalCodeDetector_detectAndDecode(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_code)))
end
detectAndDecode(cobj::GraphicalCodeDetector, img::InputArray; points::InputArray = (CxxMat()), straight_code::InputArray = (CxxMat())) = detectAndDecode(cobj, img, points, straight_code)

function detectMulti(cobj::GraphicalCodeDetector, img::InputArray, points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_GraphicalCodeDetector_cv_GraphicalCodeDetector_detectMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
detectMulti(cobj::GraphicalCodeDetector, img::InputArray; points::InputArray = (CxxMat())) = detectMulti(cobj, img, points)

function decodeMulti(cobj::GraphicalCodeDetector, img::InputArray, points::InputArray, straight_code::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_cv_GraphicalCodeDetector_cv_GraphicalCodeDetector_decodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_code)))
end
decodeMulti(cobj::GraphicalCodeDetector, img::InputArray, points::InputArray; straight_code::AbstractVector{<:InputArray} = (cpp_to_julia(vectorRMatOP()))) = decodeMulti(cobj, img, points, straight_code)

function detectAndDecodeMulti(cobj::GraphicalCodeDetector, img::InputArray, points::InputArray, straight_code::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_cv_GraphicalCodeDetector_cv_GraphicalCodeDetector_detectAndDecodeMulti(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(straight_code)))
end
detectAndDecodeMulti(cobj::GraphicalCodeDetector, img::InputArray; points::InputArray = (CxxMat()), straight_code::AbstractVector{<:InputArray} = (cpp_to_julia(vectorRMatOP()))) = detectAndDecodeMulti(cobj, img, points, straight_code)
function Base.getproperty(m::cv_Ptr{FaceDetectorYN}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{FaceDetectorYN}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setInputSize(cobj::cv_Ptr{T}, input_size::Size{Int32}) where {T <: FaceDetectorYN}
	return cpp_to_julia(jlopencv_cv_cv_FaceDetectorYN_cv_FaceDetectorYN_setInputSize(julia_to_cpp(cobj),julia_to_cpp(input_size)))
end

function getInputSize(cobj::cv_Ptr{T}) where {T <: FaceDetectorYN}
	return cpp_to_julia(jlopencv_cv_cv_FaceDetectorYN_cv_FaceDetectorYN_getInputSize(julia_to_cpp(cobj)))
end

function setScoreThreshold(cobj::cv_Ptr{T}, score_threshold::Float64) where {T <: FaceDetectorYN}
	return cpp_to_julia(jlopencv_cv_cv_FaceDetectorYN_cv_FaceDetectorYN_setScoreThreshold(julia_to_cpp(cobj),julia_to_cpp(score_threshold)))
end

function getScoreThreshold(cobj::cv_Ptr{T}) where {T <: FaceDetectorYN}
	return cpp_to_julia(jlopencv_cv_cv_FaceDetectorYN_cv_FaceDetectorYN_getScoreThreshold(julia_to_cpp(cobj)))
end

function setNMSThreshold(cobj::cv_Ptr{T}, nms_threshold::Float64) where {T <: FaceDetectorYN}
	return cpp_to_julia(jlopencv_cv_cv_FaceDetectorYN_cv_FaceDetectorYN_setNMSThreshold(julia_to_cpp(cobj),julia_to_cpp(nms_threshold)))
end

function getNMSThreshold(cobj::cv_Ptr{T}) where {T <: FaceDetectorYN}
	return cpp_to_julia(jlopencv_cv_cv_FaceDetectorYN_cv_FaceDetectorYN_getNMSThreshold(julia_to_cpp(cobj)))
end

function setTopK(cobj::cv_Ptr{T}, top_k::Int64) where {T <: FaceDetectorYN}
	return cpp_to_julia(jlopencv_cv_cv_FaceDetectorYN_cv_FaceDetectorYN_setTopK(julia_to_cpp(cobj),julia_to_cpp(top_k)))
end

function getTopK(cobj::cv_Ptr{T}) where {T <: FaceDetectorYN}
	return cpp_to_julia(jlopencv_cv_cv_FaceDetectorYN_cv_FaceDetectorYN_getTopK(julia_to_cpp(cobj)))
end

function detect(cobj::cv_Ptr{T}, image::InputArray, faces::InputArray) where {T <: FaceDetectorYN}
	return cpp_to_julia(jlopencv_cv_cv_FaceDetectorYN_cv_FaceDetectorYN_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(faces)))
end
detect(cobj::cv_Ptr{T}, image::InputArray; faces::InputArray = (CxxMat())) where {T <: FaceDetectorYN} = detect(cobj, image, faces)
function Base.getproperty(m::cv_Ptr{FaceRecognizerSF}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{FaceRecognizerSF}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function alignCrop(cobj::cv_Ptr{T}, src_img::InputArray, face_box::InputArray, aligned_img::InputArray) where {T <: FaceRecognizerSF}
	return cpp_to_julia(jlopencv_cv_cv_FaceRecognizerSF_cv_FaceRecognizerSF_alignCrop(julia_to_cpp(cobj),julia_to_cpp(src_img),julia_to_cpp(face_box),julia_to_cpp(aligned_img)))
end
alignCrop(cobj::cv_Ptr{T}, src_img::InputArray, face_box::InputArray; aligned_img::InputArray = (CxxMat())) where {T <: FaceRecognizerSF} = alignCrop(cobj, src_img, face_box, aligned_img)

function feature(cobj::cv_Ptr{T}, aligned_img::InputArray, face_feature::InputArray) where {T <: FaceRecognizerSF}
	return cpp_to_julia(jlopencv_cv_cv_FaceRecognizerSF_cv_FaceRecognizerSF_feature(julia_to_cpp(cobj),julia_to_cpp(aligned_img),julia_to_cpp(face_feature)))
end
feature(cobj::cv_Ptr{T}, aligned_img::InputArray; face_feature::InputArray = (CxxMat())) where {T <: FaceRecognizerSF} = feature(cobj, aligned_img, face_feature)

function match(cobj::cv_Ptr{T}, face_feature1::InputArray, face_feature2::InputArray, dis_type::Int64) where {T <: FaceRecognizerSF}
	return cpp_to_julia(jlopencv_cv_cv_FaceRecognizerSF_cv_FaceRecognizerSF_match(julia_to_cpp(cobj),julia_to_cpp(face_feature1),julia_to_cpp(face_feature2),julia_to_cpp(dis_type)))
end
match(cobj::cv_Ptr{T}, face_feature1::InputArray, face_feature2::InputArray; dis_type::Int64 = Int64(cpp_to_julia(FaceRecognizerSFggFRRCOSINE()))) where {T <: FaceRecognizerSF} = match(cobj, face_feature1, face_feature2, dis_type)
function Base.getproperty(m::cv_Ptr{Stitcher}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{Stitcher}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function registrationResol(cobj::cv_Ptr{T}) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_registrationResol(julia_to_cpp(cobj)))
end

function setRegistrationResol(cobj::cv_Ptr{T}, resol_mpx::Float64) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_setRegistrationResol(julia_to_cpp(cobj),julia_to_cpp(resol_mpx)))
end

function seamEstimationResol(cobj::cv_Ptr{T}) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_seamEstimationResol(julia_to_cpp(cobj)))
end

function setSeamEstimationResol(cobj::cv_Ptr{T}, resol_mpx::Float64) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_setSeamEstimationResol(julia_to_cpp(cobj),julia_to_cpp(resol_mpx)))
end

function compositingResol(cobj::cv_Ptr{T}) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_compositingResol(julia_to_cpp(cobj)))
end

function setCompositingResol(cobj::cv_Ptr{T}, resol_mpx::Float64) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_setCompositingResol(julia_to_cpp(cobj),julia_to_cpp(resol_mpx)))
end

function panoConfidenceThresh(cobj::cv_Ptr{T}) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_panoConfidenceThresh(julia_to_cpp(cobj)))
end

function setPanoConfidenceThresh(cobj::cv_Ptr{T}, conf_thresh::Float64) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_setPanoConfidenceThresh(julia_to_cpp(cobj),julia_to_cpp(conf_thresh)))
end

function waveCorrection(cobj::cv_Ptr{T}) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_waveCorrection(julia_to_cpp(cobj)))
end

function setWaveCorrection(cobj::cv_Ptr{T}, flag::Bool) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_setWaveCorrection(julia_to_cpp(cobj),julia_to_cpp(flag)))
end

function interpolationFlags(cobj::cv_Ptr{T}) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_interpolationFlags(julia_to_cpp(cobj)))
end

function setInterpolationFlags(cobj::cv_Ptr{T}, interp_flags::InterpolationFlags) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_setInterpolationFlags(julia_to_cpp(cobj),julia_to_cpp(interp_flags)))
end

function estimateTransform(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}, masks::AbstractVector{<:InputArray}) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_estimateTransform(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(masks)))
end
estimateTransform(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}; masks::AbstractVector{<:InputArray} = (cpp_to_julia(vectorRMatOP()))) where {T <: Stitcher} = estimateTransform(cobj, images, masks)

function composePanorama(cobj::cv_Ptr{T}, pano::InputArray) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_composePanorama(julia_to_cpp(cobj),julia_to_cpp(pano)))
end
composePanorama(cobj::cv_Ptr{T}; pano::InputArray = (CxxMat())) where {T <: Stitcher} = composePanorama(cobj, pano)

function composePanorama(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}, pano::InputArray) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_composePanorama(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(pano)))
end
composePanorama(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}; pano::InputArray = (CxxMat())) where {T <: Stitcher} = composePanorama(cobj, images, pano)

function stitch(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}, pano::InputArray) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_stitch(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(pano)))
end
stitch(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}; pano::InputArray = (CxxMat())) where {T <: Stitcher} = stitch(cobj, images, pano)

function stitch(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}, masks::AbstractVector{<:InputArray}, pano::InputArray) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_stitch(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(masks),julia_to_cpp(pano)))
end
stitch(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}, masks::AbstractVector{<:InputArray}; pano::InputArray = (CxxMat())) where {T <: Stitcher} = stitch(cobj, images, masks, pano)

function component(cobj::cv_Ptr{T}) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_component(julia_to_cpp(cobj)))
end

function workScale(cobj::cv_Ptr{T}) where {T <: Stitcher}
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_cv_Stitcher_workScale(julia_to_cpp(cobj)))
end
function Base.getproperty(m::ECCParameters, s::Symbol)
    if s==:motionType
        return cpp_to_julia(jlopencv_ECCParameters_get_motionType(m))
    end
    if s==:criteria
        return cpp_to_julia(jlopencv_ECCParameters_get_criteria(m))
    end
    if s==:itersPerLevel
        return cpp_to_julia(jlopencv_ECCParameters_get_itersPerLevel(m))
    end
    if s==:gaussFiltSize
        return cpp_to_julia(jlopencv_ECCParameters_get_gaussFiltSize(m))
    end
    if s==:nlevels
        return cpp_to_julia(jlopencv_ECCParameters_get_nlevels(m))
    end
    if s==:interpolation
        return cpp_to_julia(jlopencv_ECCParameters_get_interpolation(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ECCParameters, s::Symbol, v)
    if s==:motionType
        jlopencv_ECCParameters_set_motionType(m, julia_to_cpp(v))
        return v
    end
    if s==:criteria
        jlopencv_ECCParameters_set_criteria(m, julia_to_cpp(v))
        return v
    end
    if s==:itersPerLevel
        jlopencv_ECCParameters_set_itersPerLevel(m, julia_to_cpp(v))
        return v
    end
    if s==:gaussFiltSize
        jlopencv_ECCParameters_set_gaussFiltSize(m, julia_to_cpp(v))
        return v
    end
    if s==:nlevels
        jlopencv_ECCParameters_set_nlevels(m, julia_to_cpp(v))
        return v
    end
    if s==:interpolation
        jlopencv_ECCParameters_set_interpolation(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::KalmanFilter, s::Symbol)
    if s==:statePre
        return cpp_to_julia(jlopencv_KalmanFilter_get_statePre(m))
    end
    if s==:statePost
        return cpp_to_julia(jlopencv_KalmanFilter_get_statePost(m))
    end
    if s==:transitionMatrix
        return cpp_to_julia(jlopencv_KalmanFilter_get_transitionMatrix(m))
    end
    if s==:controlMatrix
        return cpp_to_julia(jlopencv_KalmanFilter_get_controlMatrix(m))
    end
    if s==:measurementMatrix
        return cpp_to_julia(jlopencv_KalmanFilter_get_measurementMatrix(m))
    end
    if s==:processNoiseCov
        return cpp_to_julia(jlopencv_KalmanFilter_get_processNoiseCov(m))
    end
    if s==:measurementNoiseCov
        return cpp_to_julia(jlopencv_KalmanFilter_get_measurementNoiseCov(m))
    end
    if s==:errorCovPre
        return cpp_to_julia(jlopencv_KalmanFilter_get_errorCovPre(m))
    end
    if s==:gain
        return cpp_to_julia(jlopencv_KalmanFilter_get_gain(m))
    end
    if s==:errorCovPost
        return cpp_to_julia(jlopencv_KalmanFilter_get_errorCovPost(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KalmanFilter, s::Symbol, v)
    if s==:statePre
        jlopencv_KalmanFilter_set_statePre(m, julia_to_cpp(v))
        return v
    end
    if s==:statePost
        jlopencv_KalmanFilter_set_statePost(m, julia_to_cpp(v))
        return v
    end
    if s==:transitionMatrix
        jlopencv_KalmanFilter_set_transitionMatrix(m, julia_to_cpp(v))
        return v
    end
    if s==:controlMatrix
        jlopencv_KalmanFilter_set_controlMatrix(m, julia_to_cpp(v))
        return v
    end
    if s==:measurementMatrix
        jlopencv_KalmanFilter_set_measurementMatrix(m, julia_to_cpp(v))
        return v
    end
    if s==:processNoiseCov
        jlopencv_KalmanFilter_set_processNoiseCov(m, julia_to_cpp(v))
        return v
    end
    if s==:measurementNoiseCov
        jlopencv_KalmanFilter_set_measurementNoiseCov(m, julia_to_cpp(v))
        return v
    end
    if s==:errorCovPre
        jlopencv_KalmanFilter_set_errorCovPre(m, julia_to_cpp(v))
        return v
    end
    if s==:gain
        jlopencv_KalmanFilter_set_gain(m, julia_to_cpp(v))
        return v
    end
    if s==:errorCovPost
        jlopencv_KalmanFilter_set_errorCovPost(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function predict(cobj::KalmanFilter, control::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_KalmanFilter_cv_KalmanFilter_predict(julia_to_cpp(cobj),julia_to_cpp(control)))
end
predict(cobj::KalmanFilter; control::InputArray = (CxxMat())) = predict(cobj, control)

function correct(cobj::KalmanFilter, measurement::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_KalmanFilter_cv_KalmanFilter_correct(julia_to_cpp(cobj),julia_to_cpp(measurement)))
end


function KalmanFilter(dynamParams::Int64, measureParams::Int64, controlParams::Int64, type::Int64)
	return cpp_to_julia(jlopencv_cv_cv_KalmanFilter_cv_KalmanFilter_KalmanFilter(julia_to_cpp(dynamParams),julia_to_cpp(measureParams),julia_to_cpp(controlParams),julia_to_cpp(type)))
end
KalmanFilter(dynamParams::Int64, measureParams::Int64; controlParams::Int64 = Int64(0), type::Int64 = Int64(CV_32F)) = KalmanFilter(dynamParams, measureParams, controlParams, type)
function Base.getproperty(m::cv_Ptr{DenseOpticalFlow}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{DenseOpticalFlow}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function calc(cobj::cv_Ptr{T}, I0::InputArray, I1::InputArray, flow::InputArray) where {T <: DenseOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DenseOpticalFlow_cv_DenseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow)))
end

function collectGarbage(cobj::cv_Ptr{T}) where {T <: DenseOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DenseOpticalFlow_cv_DenseOpticalFlow_collectGarbage(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{SparseOpticalFlow}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SparseOpticalFlow}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function calc(cobj::cv_Ptr{T}, prevImg::InputArray, nextImg::InputArray, prevPts::InputArray, nextPts::InputArray, status::InputArray, err::InputArray) where {T <: SparseOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparseOpticalFlow_cv_SparseOpticalFlow_calc(julia_to_cpp(cobj),julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err)))
end
calc(cobj::cv_Ptr{T}, prevImg::InputArray, nextImg::InputArray, prevPts::InputArray, nextPts::InputArray; status::InputArray = (CxxMat()), err::InputArray = (CxxMat())) where {T <: SparseOpticalFlow} = calc(cobj, prevImg, nextImg, prevPts, nextPts, status, err)
function Base.getproperty(m::cv_Ptr{FarnebackOpticalFlow}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{FarnebackOpticalFlow}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getNumLevels(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getNumLevels(julia_to_cpp(cobj)))
end

function setNumLevels(cobj::cv_Ptr{T}, numLevels::Int64) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setNumLevels(julia_to_cpp(cobj),julia_to_cpp(numLevels)))
end

function getPyrScale(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getPyrScale(julia_to_cpp(cobj)))
end

function setPyrScale(cobj::cv_Ptr{T}, pyrScale::Float64) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setPyrScale(julia_to_cpp(cobj),julia_to_cpp(pyrScale)))
end

function getFastPyramids(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getFastPyramids(julia_to_cpp(cobj)))
end

function setFastPyramids(cobj::cv_Ptr{T}, fastPyramids::Bool) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setFastPyramids(julia_to_cpp(cobj),julia_to_cpp(fastPyramids)))
end

function getWinSize(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getWinSize(julia_to_cpp(cobj)))
end

function setWinSize(cobj::cv_Ptr{T}, winSize::Int64) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setWinSize(julia_to_cpp(cobj),julia_to_cpp(winSize)))
end

function getNumIters(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getNumIters(julia_to_cpp(cobj)))
end

function setNumIters(cobj::cv_Ptr{T}, numIters::Int64) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setNumIters(julia_to_cpp(cobj),julia_to_cpp(numIters)))
end

function getPolyN(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getPolyN(julia_to_cpp(cobj)))
end

function setPolyN(cobj::cv_Ptr{T}, polyN::Int64) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setPolyN(julia_to_cpp(cobj),julia_to_cpp(polyN)))
end

function getPolySigma(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getPolySigma(julia_to_cpp(cobj)))
end

function setPolySigma(cobj::cv_Ptr{T}, polySigma::Float64) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setPolySigma(julia_to_cpp(cobj),julia_to_cpp(polySigma)))
end

function getFlags(cobj::cv_Ptr{T}) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_getFlags(julia_to_cpp(cobj)))
end

function setFlags(cobj::cv_Ptr{T}, flags::Int64) where {T <: FarnebackOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_cv_FarnebackOpticalFlow_setFlags(julia_to_cpp(cobj),julia_to_cpp(flags)))
end
function Base.getproperty(m::cv_Ptr{VariationalRefinement}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{VariationalRefinement}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function calcUV(cobj::cv_Ptr{T}, I0::InputArray, I1::InputArray, flow_u::InputArray, flow_v::InputArray) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_calcUV(julia_to_cpp(cobj),julia_to_cpp(I0),julia_to_cpp(I1),julia_to_cpp(flow_u),julia_to_cpp(flow_v)))
end

function getFixedPointIterations(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getFixedPointIterations(julia_to_cpp(cobj)))
end

function setFixedPointIterations(cobj::cv_Ptr{T}, val::Int64) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setFixedPointIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getSorIterations(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getSorIterations(julia_to_cpp(cobj)))
end

function setSorIterations(cobj::cv_Ptr{T}, val::Int64) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setSorIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getOmega(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getOmega(julia_to_cpp(cobj)))
end

function setOmega(cobj::cv_Ptr{T}, val::Float64) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setOmega(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getAlpha(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getAlpha(julia_to_cpp(cobj)))
end

function setAlpha(cobj::cv_Ptr{T}, val::Float64) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setAlpha(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getDelta(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getDelta(julia_to_cpp(cobj)))
end

function setDelta(cobj::cv_Ptr{T}, val::Float64) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setDelta(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getGamma(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getGamma(julia_to_cpp(cobj)))
end

function setGamma(cobj::cv_Ptr{T}, val::Float64) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setGamma(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getEpsilon(cobj::cv_Ptr{T}) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_getEpsilon(julia_to_cpp(cobj)))
end

function setEpsilon(cobj::cv_Ptr{T}, val::Float64) where {T <: VariationalRefinement}
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_cv_VariationalRefinement_setEpsilon(julia_to_cpp(cobj),julia_to_cpp(val)))
end
function Base.getproperty(m::cv_Ptr{DISOpticalFlow}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{DISOpticalFlow}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getFinestScale(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getFinestScale(julia_to_cpp(cobj)))
end

function setFinestScale(cobj::cv_Ptr{T}, val::Int64) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setFinestScale(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function setCoarsestScale(cobj::cv_Ptr{T}, val::Int64) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setCoarsestScale(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getCoarsestScale(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getCoarsestScale(julia_to_cpp(cobj)))
end

function getPatchSize(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getPatchSize(julia_to_cpp(cobj)))
end

function setPatchSize(cobj::cv_Ptr{T}, val::Int64) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setPatchSize(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getPatchStride(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getPatchStride(julia_to_cpp(cobj)))
end

function setPatchStride(cobj::cv_Ptr{T}, val::Int64) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setPatchStride(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getGradientDescentIterations(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getGradientDescentIterations(julia_to_cpp(cobj)))
end

function setGradientDescentIterations(cobj::cv_Ptr{T}, val::Int64) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setGradientDescentIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getVariationalRefinementIterations(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementIterations(julia_to_cpp(cobj)))
end

function setVariationalRefinementIterations(cobj::cv_Ptr{T}, val::Int64) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementIterations(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getVariationalRefinementAlpha(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementAlpha(julia_to_cpp(cobj)))
end

function setVariationalRefinementAlpha(cobj::cv_Ptr{T}, val::Float64) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementAlpha(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getVariationalRefinementDelta(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementDelta(julia_to_cpp(cobj)))
end

function setVariationalRefinementDelta(cobj::cv_Ptr{T}, val::Float64) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementDelta(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getVariationalRefinementGamma(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementGamma(julia_to_cpp(cobj)))
end

function setVariationalRefinementGamma(cobj::cv_Ptr{T}, val::Float64) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementGamma(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getVariationalRefinementEpsilon(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getVariationalRefinementEpsilon(julia_to_cpp(cobj)))
end

function setVariationalRefinementEpsilon(cobj::cv_Ptr{T}, val::Float64) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setVariationalRefinementEpsilon(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getUseMeanNormalization(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getUseMeanNormalization(julia_to_cpp(cobj)))
end

function setUseMeanNormalization(cobj::cv_Ptr{T}, val::Bool) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setUseMeanNormalization(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getUseSpatialPropagation(cobj::cv_Ptr{T}) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_getUseSpatialPropagation(julia_to_cpp(cobj)))
end

function setUseSpatialPropagation(cobj::cv_Ptr{T}, val::Bool) where {T <: DISOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_cv_DISOpticalFlow_setUseSpatialPropagation(julia_to_cpp(cobj),julia_to_cpp(val)))
end
function Base.getproperty(m::cv_Ptr{SparsePyrLKOpticalFlow}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SparsePyrLKOpticalFlow}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getWinSize(cobj::cv_Ptr{T}) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getWinSize(julia_to_cpp(cobj)))
end

function setWinSize(cobj::cv_Ptr{T}, winSize::Size{Int32}) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setWinSize(julia_to_cpp(cobj),julia_to_cpp(winSize)))
end

function getMaxLevel(cobj::cv_Ptr{T}) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getMaxLevel(julia_to_cpp(cobj)))
end

function setMaxLevel(cobj::cv_Ptr{T}, maxLevel::Int64) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setMaxLevel(julia_to_cpp(cobj),julia_to_cpp(maxLevel)))
end

function getTermCriteria(cobj::cv_Ptr{T}) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getTermCriteria(julia_to_cpp(cobj)))
end

function setTermCriteria(cobj::cv_Ptr{T}, crit::TermCriteria) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setTermCriteria(julia_to_cpp(cobj),julia_to_cpp(crit)))
end

function getFlags(cobj::cv_Ptr{T}) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getFlags(julia_to_cpp(cobj)))
end

function setFlags(cobj::cv_Ptr{T}, flags::Int64) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setFlags(julia_to_cpp(cobj),julia_to_cpp(flags)))
end

function getMinEigThreshold(cobj::cv_Ptr{T}) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_getMinEigThreshold(julia_to_cpp(cobj)))
end

function setMinEigThreshold(cobj::cv_Ptr{T}, minEigThreshold::Float64) where {T <: SparsePyrLKOpticalFlow}
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_cv_SparsePyrLKOpticalFlow_setMinEigThreshold(julia_to_cpp(cobj),julia_to_cpp(minEigThreshold)))
end
function Base.getproperty(m::cv_Ptr{Tracker}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{Tracker}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function init(cobj::cv_Ptr{T}, image::InputArray, boundingBox::Rect{Int32}) where {T <: Tracker}
	return cpp_to_julia(jlopencv_cv_cv_Tracker_cv_Tracker_init(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(boundingBox)))
end

function update(cobj::cv_Ptr{T}, image::InputArray) where {T <: Tracker}
	return cpp_to_julia(jlopencv_cv_cv_Tracker_cv_Tracker_update(julia_to_cpp(cobj),julia_to_cpp(image)))
end

function getTrackingScore(cobj::cv_Ptr{T}) where {T <: Tracker}
	return cpp_to_julia(jlopencv_cv_cv_Tracker_cv_Tracker_getTrackingScore(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{TrackerMIL}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TrackerMIL}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::TrackerMIL_Params, s::Symbol)
    if s==:samplerInitInRadius
        return cpp_to_julia(jlopencv_TrackerMIL_Params_get_samplerInitInRadius(m))
    end
    if s==:samplerInitMaxNegNum
        return cpp_to_julia(jlopencv_TrackerMIL_Params_get_samplerInitMaxNegNum(m))
    end
    if s==:samplerSearchWinSize
        return cpp_to_julia(jlopencv_TrackerMIL_Params_get_samplerSearchWinSize(m))
    end
    if s==:samplerTrackInRadius
        return cpp_to_julia(jlopencv_TrackerMIL_Params_get_samplerTrackInRadius(m))
    end
    if s==:samplerTrackMaxPosNum
        return cpp_to_julia(jlopencv_TrackerMIL_Params_get_samplerTrackMaxPosNum(m))
    end
    if s==:samplerTrackMaxNegNum
        return cpp_to_julia(jlopencv_TrackerMIL_Params_get_samplerTrackMaxNegNum(m))
    end
    if s==:featureSetNumFeatures
        return cpp_to_julia(jlopencv_TrackerMIL_Params_get_featureSetNumFeatures(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TrackerMIL_Params, s::Symbol, v)
    if s==:samplerInitInRadius
        jlopencv_TrackerMIL_Params_set_samplerInitInRadius(m, julia_to_cpp(v))
        return v
    end
    if s==:samplerInitMaxNegNum
        jlopencv_TrackerMIL_Params_set_samplerInitMaxNegNum(m, julia_to_cpp(v))
        return v
    end
    if s==:samplerSearchWinSize
        jlopencv_TrackerMIL_Params_set_samplerSearchWinSize(m, julia_to_cpp(v))
        return v
    end
    if s==:samplerTrackInRadius
        jlopencv_TrackerMIL_Params_set_samplerTrackInRadius(m, julia_to_cpp(v))
        return v
    end
    if s==:samplerTrackMaxPosNum
        jlopencv_TrackerMIL_Params_set_samplerTrackMaxPosNum(m, julia_to_cpp(v))
        return v
    end
    if s==:samplerTrackMaxNegNum
        jlopencv_TrackerMIL_Params_set_samplerTrackMaxNegNum(m, julia_to_cpp(v))
        return v
    end
    if s==:featureSetNumFeatures
        jlopencv_TrackerMIL_Params_set_featureSetNumFeatures(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::cv_Ptr{TrackerDaSiamRPN}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TrackerDaSiamRPN}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::TrackerDaSiamRPN_Params, s::Symbol)
    if s==:model
        return cpp_to_julia(jlopencv_TrackerDaSiamRPN_Params_get_model(m))
    end
    if s==:kernel_cls1
        return cpp_to_julia(jlopencv_TrackerDaSiamRPN_Params_get_kernel_cls1(m))
    end
    if s==:kernel_r1
        return cpp_to_julia(jlopencv_TrackerDaSiamRPN_Params_get_kernel_r1(m))
    end
    if s==:backend
        return cpp_to_julia(jlopencv_TrackerDaSiamRPN_Params_get_backend(m))
    end
    if s==:target
        return cpp_to_julia(jlopencv_TrackerDaSiamRPN_Params_get_target(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TrackerDaSiamRPN_Params, s::Symbol, v)
    if s==:model
        jlopencv_TrackerDaSiamRPN_Params_set_model(m, julia_to_cpp(v))
        return v
    end
    if s==:kernel_cls1
        jlopencv_TrackerDaSiamRPN_Params_set_kernel_cls1(m, julia_to_cpp(v))
        return v
    end
    if s==:kernel_r1
        jlopencv_TrackerDaSiamRPN_Params_set_kernel_r1(m, julia_to_cpp(v))
        return v
    end
    if s==:backend
        jlopencv_TrackerDaSiamRPN_Params_set_backend(m, julia_to_cpp(v))
        return v
    end
    if s==:target
        jlopencv_TrackerDaSiamRPN_Params_set_target(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::cv_Ptr{TrackerNano}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TrackerNano}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::TrackerNano_Params, s::Symbol)
    if s==:backbone
        return cpp_to_julia(jlopencv_TrackerNano_Params_get_backbone(m))
    end
    if s==:neckhead
        return cpp_to_julia(jlopencv_TrackerNano_Params_get_neckhead(m))
    end
    if s==:backend
        return cpp_to_julia(jlopencv_TrackerNano_Params_get_backend(m))
    end
    if s==:target
        return cpp_to_julia(jlopencv_TrackerNano_Params_get_target(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TrackerNano_Params, s::Symbol, v)
    if s==:backbone
        jlopencv_TrackerNano_Params_set_backbone(m, julia_to_cpp(v))
        return v
    end
    if s==:neckhead
        jlopencv_TrackerNano_Params_set_neckhead(m, julia_to_cpp(v))
        return v
    end
    if s==:backend
        jlopencv_TrackerNano_Params_set_backend(m, julia_to_cpp(v))
        return v
    end
    if s==:target
        jlopencv_TrackerNano_Params_set_target(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::cv_Ptr{TrackerVit}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TrackerVit}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::TrackerVit_Params, s::Symbol)
    if s==:net
        return cpp_to_julia(jlopencv_TrackerVit_Params_get_net(m))
    end
    if s==:backend
        return cpp_to_julia(jlopencv_TrackerVit_Params_get_backend(m))
    end
    if s==:target
        return cpp_to_julia(jlopencv_TrackerVit_Params_get_target(m))
    end
    if s==:meanvalue
        return cpp_to_julia(jlopencv_TrackerVit_Params_get_meanvalue(m))
    end
    if s==:stdvalue
        return cpp_to_julia(jlopencv_TrackerVit_Params_get_stdvalue(m))
    end
    if s==:tracking_score_threshold
        return cpp_to_julia(jlopencv_TrackerVit_Params_get_tracking_score_threshold(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TrackerVit_Params, s::Symbol, v)
    if s==:net
        jlopencv_TrackerVit_Params_set_net(m, julia_to_cpp(v))
        return v
    end
    if s==:backend
        jlopencv_TrackerVit_Params_set_backend(m, julia_to_cpp(v))
        return v
    end
    if s==:target
        jlopencv_TrackerVit_Params_set_target(m, julia_to_cpp(v))
        return v
    end
    if s==:meanvalue
        jlopencv_TrackerVit_Params_set_meanvalue(m, julia_to_cpp(v))
        return v
    end
    if s==:stdvalue
        jlopencv_TrackerVit_Params_set_stdvalue(m, julia_to_cpp(v))
        return v
    end
    if s==:tracking_score_threshold
        jlopencv_TrackerVit_Params_set_tracking_score_threshold(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::cv_Ptr{BackgroundSubtractor}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{BackgroundSubtractor}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function apply(cobj::cv_Ptr{T}, image::InputArray, fgmask::InputArray, learningRate::Float64) where {T <: BackgroundSubtractor}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractor_cv_BackgroundSubtractor_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::cv_Ptr{T}, image::InputArray; fgmask::InputArray = (CxxMat()), learningRate::Float64 = Float64(-1)) where {T <: BackgroundSubtractor} = apply(cobj, image, fgmask, learningRate)

function apply(cobj::cv_Ptr{T}, image::InputArray, knownForegroundMask::InputArray, fgmask::InputArray, learningRate::Float64) where {T <: BackgroundSubtractor}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractor_cv_BackgroundSubtractor_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(knownForegroundMask),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::cv_Ptr{T}, image::InputArray, knownForegroundMask::InputArray; fgmask::InputArray = (CxxMat()), learningRate::Float64 = Float64(-1)) where {T <: BackgroundSubtractor} = apply(cobj, image, knownForegroundMask, fgmask, learningRate)

function getBackgroundImage(cobj::cv_Ptr{T}, backgroundImage::InputArray) where {T <: BackgroundSubtractor}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractor_cv_BackgroundSubtractor_getBackgroundImage(julia_to_cpp(cobj),julia_to_cpp(backgroundImage)))
end
getBackgroundImage(cobj::cv_Ptr{T}; backgroundImage::InputArray = (CxxMat())) where {T <: BackgroundSubtractor} = getBackgroundImage(cobj, backgroundImage)
function Base.getproperty(m::cv_Ptr{BackgroundSubtractorMOG2}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{BackgroundSubtractorMOG2}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getHistory(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getHistory(julia_to_cpp(cobj)))
end

function setHistory(cobj::cv_Ptr{T}, history::Int64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setHistory(julia_to_cpp(cobj),julia_to_cpp(history)))
end

function getNMixtures(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getNMixtures(julia_to_cpp(cobj)))
end

function setNMixtures(cobj::cv_Ptr{T}, nmixtures::Int64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setNMixtures(julia_to_cpp(cobj),julia_to_cpp(nmixtures)))
end

function getBackgroundRatio(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getBackgroundRatio(julia_to_cpp(cobj)))
end

function setBackgroundRatio(cobj::cv_Ptr{T}, ratio::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setBackgroundRatio(julia_to_cpp(cobj),julia_to_cpp(ratio)))
end

function getVarThreshold(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarThreshold(julia_to_cpp(cobj)))
end

function setVarThreshold(cobj::cv_Ptr{T}, varThreshold::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarThreshold(julia_to_cpp(cobj),julia_to_cpp(varThreshold)))
end

function getVarThresholdGen(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarThresholdGen(julia_to_cpp(cobj)))
end

function setVarThresholdGen(cobj::cv_Ptr{T}, varThresholdGen::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarThresholdGen(julia_to_cpp(cobj),julia_to_cpp(varThresholdGen)))
end

function getVarInit(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarInit(julia_to_cpp(cobj)))
end

function setVarInit(cobj::cv_Ptr{T}, varInit::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarInit(julia_to_cpp(cobj),julia_to_cpp(varInit)))
end

function getVarMin(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarMin(julia_to_cpp(cobj)))
end

function setVarMin(cobj::cv_Ptr{T}, varMin::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarMin(julia_to_cpp(cobj),julia_to_cpp(varMin)))
end

function getVarMax(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getVarMax(julia_to_cpp(cobj)))
end

function setVarMax(cobj::cv_Ptr{T}, varMax::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setVarMax(julia_to_cpp(cobj),julia_to_cpp(varMax)))
end

function getComplexityReductionThreshold(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getComplexityReductionThreshold(julia_to_cpp(cobj)))
end

function setComplexityReductionThreshold(cobj::cv_Ptr{T}, ct::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setComplexityReductionThreshold(julia_to_cpp(cobj),julia_to_cpp(ct)))
end

function getDetectShadows(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getDetectShadows(julia_to_cpp(cobj)))
end

function setDetectShadows(cobj::cv_Ptr{T}, detectShadows::Bool) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setDetectShadows(julia_to_cpp(cobj),julia_to_cpp(detectShadows)))
end

function getShadowValue(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getShadowValue(julia_to_cpp(cobj)))
end

function setShadowValue(cobj::cv_Ptr{T}, value::Int64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setShadowValue(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function getShadowThreshold(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_getShadowThreshold(julia_to_cpp(cobj)))
end

function setShadowThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_setShadowThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function apply(cobj::cv_Ptr{T}, image::InputArray, fgmask::InputArray, learningRate::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::cv_Ptr{T}, image::InputArray; fgmask::InputArray = (CxxMat()), learningRate::Float64 = Float64(-1)) where {T <: BackgroundSubtractorMOG2} = apply(cobj, image, fgmask, learningRate)

function apply(cobj::cv_Ptr{T}, image::InputArray, knownForegroundMask::InputArray, fgmask::InputArray, learningRate::Float64) where {T <: BackgroundSubtractorMOG2}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorMOG2_cv_BackgroundSubtractorMOG2_apply(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(knownForegroundMask),julia_to_cpp(fgmask),julia_to_cpp(learningRate)))
end
apply(cobj::cv_Ptr{T}, image::InputArray, knownForegroundMask::InputArray; fgmask::InputArray = (CxxMat()), learningRate::Float64 = Float64(-1)) where {T <: BackgroundSubtractorMOG2} = apply(cobj, image, knownForegroundMask, fgmask, learningRate)
function Base.getproperty(m::cv_Ptr{BackgroundSubtractorKNN}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{BackgroundSubtractorKNN}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getHistory(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getHistory(julia_to_cpp(cobj)))
end

function setHistory(cobj::cv_Ptr{T}, history::Int64) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setHistory(julia_to_cpp(cobj),julia_to_cpp(history)))
end

function getNSamples(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getNSamples(julia_to_cpp(cobj)))
end

function setNSamples(cobj::cv_Ptr{T}, _nN::Int64) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setNSamples(julia_to_cpp(cobj),julia_to_cpp(_nN)))
end

function getDist2Threshold(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getDist2Threshold(julia_to_cpp(cobj)))
end

function setDist2Threshold(cobj::cv_Ptr{T}, _dist2Threshold::Float64) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setDist2Threshold(julia_to_cpp(cobj),julia_to_cpp(_dist2Threshold)))
end

function getkNNSamples(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getkNNSamples(julia_to_cpp(cobj)))
end

function setkNNSamples(cobj::cv_Ptr{T}, _nkNN::Int64) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setkNNSamples(julia_to_cpp(cobj),julia_to_cpp(_nkNN)))
end

function getDetectShadows(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getDetectShadows(julia_to_cpp(cobj)))
end

function setDetectShadows(cobj::cv_Ptr{T}, detectShadows::Bool) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setDetectShadows(julia_to_cpp(cobj),julia_to_cpp(detectShadows)))
end

function getShadowValue(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getShadowValue(julia_to_cpp(cobj)))
end

function setShadowValue(cobj::cv_Ptr{T}, value::Int64) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setShadowValue(julia_to_cpp(cobj),julia_to_cpp(value)))
end

function getShadowThreshold(cobj::cv_Ptr{T}) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_getShadowThreshold(julia_to_cpp(cobj)))
end

function setShadowThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: BackgroundSubtractorKNN}
	return cpp_to_julia(jlopencv_cv_cv_BackgroundSubtractorKNN_cv_BackgroundSubtractorKNN_setShadowThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end
function Base.getproperty(m::cv_Ptr{Tonemap}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{Tonemap}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function process(cobj::cv_Ptr{T}, src::InputArray, dst::InputArray) where {T <: Tonemap}
	return cpp_to_julia(jlopencv_cv_cv_Tonemap_cv_Tonemap_process(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
process(cobj::cv_Ptr{T}, src::InputArray; dst::InputArray = (CxxMat())) where {T <: Tonemap} = process(cobj, src, dst)

function getGamma(cobj::cv_Ptr{T}) where {T <: Tonemap}
	return cpp_to_julia(jlopencv_cv_cv_Tonemap_cv_Tonemap_getGamma(julia_to_cpp(cobj)))
end

function setGamma(cobj::cv_Ptr{T}, gamma::Float64) where {T <: Tonemap}
	return cpp_to_julia(jlopencv_cv_cv_Tonemap_cv_Tonemap_setGamma(julia_to_cpp(cobj),julia_to_cpp(gamma)))
end
function Base.getproperty(m::cv_Ptr{TonemapDrago}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TonemapDrago}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getSaturation(cobj::cv_Ptr{T}) where {T <: TonemapDrago}
	return cpp_to_julia(jlopencv_cv_cv_TonemapDrago_cv_TonemapDrago_getSaturation(julia_to_cpp(cobj)))
end

function setSaturation(cobj::cv_Ptr{T}, saturation::Float64) where {T <: TonemapDrago}
	return cpp_to_julia(jlopencv_cv_cv_TonemapDrago_cv_TonemapDrago_setSaturation(julia_to_cpp(cobj),julia_to_cpp(saturation)))
end

function getBias(cobj::cv_Ptr{T}) where {T <: TonemapDrago}
	return cpp_to_julia(jlopencv_cv_cv_TonemapDrago_cv_TonemapDrago_getBias(julia_to_cpp(cobj)))
end

function setBias(cobj::cv_Ptr{T}, bias::Float64) where {T <: TonemapDrago}
	return cpp_to_julia(jlopencv_cv_cv_TonemapDrago_cv_TonemapDrago_setBias(julia_to_cpp(cobj),julia_to_cpp(bias)))
end
function Base.getproperty(m::cv_Ptr{TonemapReinhard}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TonemapReinhard}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getIntensity(cobj::cv_Ptr{T}) where {T <: TonemapReinhard}
	return cpp_to_julia(jlopencv_cv_cv_TonemapReinhard_cv_TonemapReinhard_getIntensity(julia_to_cpp(cobj)))
end

function setIntensity(cobj::cv_Ptr{T}, intensity::Float64) where {T <: TonemapReinhard}
	return cpp_to_julia(jlopencv_cv_cv_TonemapReinhard_cv_TonemapReinhard_setIntensity(julia_to_cpp(cobj),julia_to_cpp(intensity)))
end

function getLightAdaptation(cobj::cv_Ptr{T}) where {T <: TonemapReinhard}
	return cpp_to_julia(jlopencv_cv_cv_TonemapReinhard_cv_TonemapReinhard_getLightAdaptation(julia_to_cpp(cobj)))
end

function setLightAdaptation(cobj::cv_Ptr{T}, light_adapt::Float64) where {T <: TonemapReinhard}
	return cpp_to_julia(jlopencv_cv_cv_TonemapReinhard_cv_TonemapReinhard_setLightAdaptation(julia_to_cpp(cobj),julia_to_cpp(light_adapt)))
end

function getColorAdaptation(cobj::cv_Ptr{T}) where {T <: TonemapReinhard}
	return cpp_to_julia(jlopencv_cv_cv_TonemapReinhard_cv_TonemapReinhard_getColorAdaptation(julia_to_cpp(cobj)))
end

function setColorAdaptation(cobj::cv_Ptr{T}, color_adapt::Float64) where {T <: TonemapReinhard}
	return cpp_to_julia(jlopencv_cv_cv_TonemapReinhard_cv_TonemapReinhard_setColorAdaptation(julia_to_cpp(cobj),julia_to_cpp(color_adapt)))
end
function Base.getproperty(m::cv_Ptr{TonemapMantiuk}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TonemapMantiuk}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getScale(cobj::cv_Ptr{T}) where {T <: TonemapMantiuk}
	return cpp_to_julia(jlopencv_cv_cv_TonemapMantiuk_cv_TonemapMantiuk_getScale(julia_to_cpp(cobj)))
end

function setScale(cobj::cv_Ptr{T}, scale::Float64) where {T <: TonemapMantiuk}
	return cpp_to_julia(jlopencv_cv_cv_TonemapMantiuk_cv_TonemapMantiuk_setScale(julia_to_cpp(cobj),julia_to_cpp(scale)))
end

function getSaturation(cobj::cv_Ptr{T}) where {T <: TonemapMantiuk}
	return cpp_to_julia(jlopencv_cv_cv_TonemapMantiuk_cv_TonemapMantiuk_getSaturation(julia_to_cpp(cobj)))
end

function setSaturation(cobj::cv_Ptr{T}, saturation::Float64) where {T <: TonemapMantiuk}
	return cpp_to_julia(jlopencv_cv_cv_TonemapMantiuk_cv_TonemapMantiuk_setSaturation(julia_to_cpp(cobj),julia_to_cpp(saturation)))
end
function Base.getproperty(m::cv_Ptr{AlignExposures}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{AlignExposures}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, dst::AbstractVector{<:InputArray}, times::InputArray, response::InputArray) where {T <: AlignExposures}
	return cpp_to_julia(jlopencv_cv_cv_AlignExposures_cv_AlignExposures_process(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(times),julia_to_cpp(response)))
end
function Base.getproperty(m::cv_Ptr{AlignMTB}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{AlignMTB}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, dst::AbstractVector{<:InputArray}, times::InputArray, response::InputArray) where {T <: AlignMTB}
	return cpp_to_julia(jlopencv_cv_cv_AlignMTB_cv_AlignMTB_process(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(times),julia_to_cpp(response)))
end

function process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, dst::AbstractVector{<:InputArray}) where {T <: AlignMTB}
	return cpp_to_julia(jlopencv_cv_cv_AlignMTB_cv_AlignMTB_process(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end

function calculateShift(cobj::cv_Ptr{T}, img0::InputArray, img1::InputArray) where {T <: AlignMTB}
	return cpp_to_julia(jlopencv_cv_cv_AlignMTB_cv_AlignMTB_calculateShift(julia_to_cpp(cobj),julia_to_cpp(img0),julia_to_cpp(img1)))
end

function shiftMat(cobj::cv_Ptr{T}, src::InputArray, shift::Point{Int32}, dst::InputArray) where {T <: AlignMTB}
	return cpp_to_julia(jlopencv_cv_cv_AlignMTB_cv_AlignMTB_shiftMat(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(shift),julia_to_cpp(dst)))
end
shiftMat(cobj::cv_Ptr{T}, src::InputArray, shift::Point{Int32}; dst::InputArray = (CxxMat())) where {T <: AlignMTB} = shiftMat(cobj, src, shift, dst)

function computeBitmaps(cobj::cv_Ptr{T}, img::InputArray, tb::InputArray, eb::InputArray) where {T <: AlignMTB}
	return cpp_to_julia(jlopencv_cv_cv_AlignMTB_cv_AlignMTB_computeBitmaps(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(tb),julia_to_cpp(eb)))
end
computeBitmaps(cobj::cv_Ptr{T}, img::InputArray; tb::InputArray = (CxxMat()), eb::InputArray = (CxxMat())) where {T <: AlignMTB} = computeBitmaps(cobj, img, tb, eb)

function getMaxBits(cobj::cv_Ptr{T}) where {T <: AlignMTB}
	return cpp_to_julia(jlopencv_cv_cv_AlignMTB_cv_AlignMTB_getMaxBits(julia_to_cpp(cobj)))
end

function setMaxBits(cobj::cv_Ptr{T}, max_bits::Int64) where {T <: AlignMTB}
	return cpp_to_julia(jlopencv_cv_cv_AlignMTB_cv_AlignMTB_setMaxBits(julia_to_cpp(cobj),julia_to_cpp(max_bits)))
end

function getExcludeRange(cobj::cv_Ptr{T}) where {T <: AlignMTB}
	return cpp_to_julia(jlopencv_cv_cv_AlignMTB_cv_AlignMTB_getExcludeRange(julia_to_cpp(cobj)))
end

function setExcludeRange(cobj::cv_Ptr{T}, exclude_range::Int64) where {T <: AlignMTB}
	return cpp_to_julia(jlopencv_cv_cv_AlignMTB_cv_AlignMTB_setExcludeRange(julia_to_cpp(cobj),julia_to_cpp(exclude_range)))
end

function getCut(cobj::cv_Ptr{T}) where {T <: AlignMTB}
	return cpp_to_julia(jlopencv_cv_cv_AlignMTB_cv_AlignMTB_getCut(julia_to_cpp(cobj)))
end

function setCut(cobj::cv_Ptr{T}, value::Bool) where {T <: AlignMTB}
	return cpp_to_julia(jlopencv_cv_cv_AlignMTB_cv_AlignMTB_setCut(julia_to_cpp(cobj),julia_to_cpp(value)))
end
function Base.getproperty(m::cv_Ptr{CalibrateCRF}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{CalibrateCRF}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, times::InputArray, dst::InputArray) where {T <: CalibrateCRF}
	return cpp_to_julia(jlopencv_cv_cv_CalibrateCRF_cv_CalibrateCRF_process(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(times),julia_to_cpp(dst)))
end
process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, times::InputArray; dst::InputArray = (CxxMat())) where {T <: CalibrateCRF} = process(cobj, src, times, dst)
function Base.getproperty(m::cv_Ptr{CalibrateDebevec}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{CalibrateDebevec}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getLambda(cobj::cv_Ptr{T}) where {T <: CalibrateDebevec}
	return cpp_to_julia(jlopencv_cv_cv_CalibrateDebevec_cv_CalibrateDebevec_getLambda(julia_to_cpp(cobj)))
end

function setLambda(cobj::cv_Ptr{T}, lambda::Float64) where {T <: CalibrateDebevec}
	return cpp_to_julia(jlopencv_cv_cv_CalibrateDebevec_cv_CalibrateDebevec_setLambda(julia_to_cpp(cobj),julia_to_cpp(lambda)))
end

function getSamples(cobj::cv_Ptr{T}) where {T <: CalibrateDebevec}
	return cpp_to_julia(jlopencv_cv_cv_CalibrateDebevec_cv_CalibrateDebevec_getSamples(julia_to_cpp(cobj)))
end

function setSamples(cobj::cv_Ptr{T}, samples::Int64) where {T <: CalibrateDebevec}
	return cpp_to_julia(jlopencv_cv_cv_CalibrateDebevec_cv_CalibrateDebevec_setSamples(julia_to_cpp(cobj),julia_to_cpp(samples)))
end

function getRandom(cobj::cv_Ptr{T}) where {T <: CalibrateDebevec}
	return cpp_to_julia(jlopencv_cv_cv_CalibrateDebevec_cv_CalibrateDebevec_getRandom(julia_to_cpp(cobj)))
end

function setRandom(cobj::cv_Ptr{T}, random::Bool) where {T <: CalibrateDebevec}
	return cpp_to_julia(jlopencv_cv_cv_CalibrateDebevec_cv_CalibrateDebevec_setRandom(julia_to_cpp(cobj),julia_to_cpp(random)))
end
function Base.getproperty(m::cv_Ptr{CalibrateRobertson}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{CalibrateRobertson}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getMaxIter(cobj::cv_Ptr{T}) where {T <: CalibrateRobertson}
	return cpp_to_julia(jlopencv_cv_cv_CalibrateRobertson_cv_CalibrateRobertson_getMaxIter(julia_to_cpp(cobj)))
end

function setMaxIter(cobj::cv_Ptr{T}, max_iter::Int64) where {T <: CalibrateRobertson}
	return cpp_to_julia(jlopencv_cv_cv_CalibrateRobertson_cv_CalibrateRobertson_setMaxIter(julia_to_cpp(cobj),julia_to_cpp(max_iter)))
end

function getThreshold(cobj::cv_Ptr{T}) where {T <: CalibrateRobertson}
	return cpp_to_julia(jlopencv_cv_cv_CalibrateRobertson_cv_CalibrateRobertson_getThreshold(julia_to_cpp(cobj)))
end

function setThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: CalibrateRobertson}
	return cpp_to_julia(jlopencv_cv_cv_CalibrateRobertson_cv_CalibrateRobertson_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getRadiance(cobj::cv_Ptr{T}) where {T <: CalibrateRobertson}
	return cpp_to_julia(jlopencv_cv_cv_CalibrateRobertson_cv_CalibrateRobertson_getRadiance(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{MergeExposures}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{MergeExposures}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, times::InputArray, response::InputArray, dst::InputArray) where {T <: MergeExposures}
	return cpp_to_julia(jlopencv_cv_cv_MergeExposures_cv_MergeExposures_process(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(times),julia_to_cpp(response),julia_to_cpp(dst)))
end
process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, times::InputArray, response::InputArray; dst::InputArray = (CxxMat())) where {T <: MergeExposures} = process(cobj, src, times, response, dst)
function Base.getproperty(m::cv_Ptr{MergeDebevec}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{MergeDebevec}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, times::InputArray, response::InputArray, dst::InputArray) where {T <: MergeDebevec}
	return cpp_to_julia(jlopencv_cv_cv_MergeDebevec_cv_MergeDebevec_process(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(times),julia_to_cpp(response),julia_to_cpp(dst)))
end
process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, times::InputArray, response::InputArray; dst::InputArray = (CxxMat())) where {T <: MergeDebevec} = process(cobj, src, times, response, dst)
function Base.getproperty(m::cv_Ptr{MergeMertens}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{MergeMertens}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, times::InputArray, response::InputArray, dst::InputArray) where {T <: MergeMertens}
	return cpp_to_julia(jlopencv_cv_cv_MergeMertens_cv_MergeMertens_process(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(times),julia_to_cpp(response),julia_to_cpp(dst)))
end
process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, times::InputArray, response::InputArray; dst::InputArray = (CxxMat())) where {T <: MergeMertens} = process(cobj, src, times, response, dst)

function process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, dst::InputArray) where {T <: MergeMertens}
	return cpp_to_julia(jlopencv_cv_cv_MergeMertens_cv_MergeMertens_process(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}; dst::InputArray = (CxxMat())) where {T <: MergeMertens} = process(cobj, src, dst)

function getContrastWeight(cobj::cv_Ptr{T}) where {T <: MergeMertens}
	return cpp_to_julia(jlopencv_cv_cv_MergeMertens_cv_MergeMertens_getContrastWeight(julia_to_cpp(cobj)))
end

function setContrastWeight(cobj::cv_Ptr{T}, contrast_weiht::Float64) where {T <: MergeMertens}
	return cpp_to_julia(jlopencv_cv_cv_MergeMertens_cv_MergeMertens_setContrastWeight(julia_to_cpp(cobj),julia_to_cpp(contrast_weiht)))
end

function getSaturationWeight(cobj::cv_Ptr{T}) where {T <: MergeMertens}
	return cpp_to_julia(jlopencv_cv_cv_MergeMertens_cv_MergeMertens_getSaturationWeight(julia_to_cpp(cobj)))
end

function setSaturationWeight(cobj::cv_Ptr{T}, saturation_weight::Float64) where {T <: MergeMertens}
	return cpp_to_julia(jlopencv_cv_cv_MergeMertens_cv_MergeMertens_setSaturationWeight(julia_to_cpp(cobj),julia_to_cpp(saturation_weight)))
end

function getExposureWeight(cobj::cv_Ptr{T}) where {T <: MergeMertens}
	return cpp_to_julia(jlopencv_cv_cv_MergeMertens_cv_MergeMertens_getExposureWeight(julia_to_cpp(cobj)))
end

function setExposureWeight(cobj::cv_Ptr{T}, exposure_weight::Float64) where {T <: MergeMertens}
	return cpp_to_julia(jlopencv_cv_cv_MergeMertens_cv_MergeMertens_setExposureWeight(julia_to_cpp(cobj),julia_to_cpp(exposure_weight)))
end
function Base.getproperty(m::cv_Ptr{MergeRobertson}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{MergeRobertson}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, times::InputArray, response::InputArray, dst::InputArray) where {T <: MergeRobertson}
	return cpp_to_julia(jlopencv_cv_cv_MergeRobertson_cv_MergeRobertson_process(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(times),julia_to_cpp(response),julia_to_cpp(dst)))
end
process(cobj::cv_Ptr{T}, src::AbstractVector{<:InputArray}, times::InputArray, response::InputArray; dst::InputArray = (CxxMat())) where {T <: MergeRobertson} = process(cobj, src, times, response, dst)
function Base.getproperty(m::cv_Ptr{TrackerCSRT}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TrackerCSRT}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setInitialMask(cobj::cv_Ptr{T}, mask::InputArray) where {T <: TrackerCSRT}
	return cpp_to_julia(jlopencv_cv_cv_TrackerCSRT_cv_TrackerCSRT_setInitialMask(julia_to_cpp(cobj),julia_to_cpp(mask)))
end
function Base.getproperty(m::TrackerCSRT_Params, s::Symbol)
    if s==:use_hog
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_use_hog(m))
    end
    if s==:use_color_names
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_use_color_names(m))
    end
    if s==:use_gray
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_use_gray(m))
    end
    if s==:use_rgb
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_use_rgb(m))
    end
    if s==:use_channel_weights
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_use_channel_weights(m))
    end
    if s==:use_segmentation
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_use_segmentation(m))
    end
    if s==:window_function
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_window_function(m))
    end
    if s==:kaiser_alpha
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_kaiser_alpha(m))
    end
    if s==:cheb_attenuation
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_cheb_attenuation(m))
    end
    if s==:template_size
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_template_size(m))
    end
    if s==:gsl_sigma
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_gsl_sigma(m))
    end
    if s==:hog_orientations
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_hog_orientations(m))
    end
    if s==:hog_clip
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_hog_clip(m))
    end
    if s==:padding
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_padding(m))
    end
    if s==:filter_lr
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_filter_lr(m))
    end
    if s==:weights_lr
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_weights_lr(m))
    end
    if s==:num_hog_channels_used
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_num_hog_channels_used(m))
    end
    if s==:admm_iterations
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_admm_iterations(m))
    end
    if s==:histogram_bins
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_histogram_bins(m))
    end
    if s==:histogram_lr
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_histogram_lr(m))
    end
    if s==:background_ratio
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_background_ratio(m))
    end
    if s==:number_of_scales
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_number_of_scales(m))
    end
    if s==:scale_sigma_factor
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_scale_sigma_factor(m))
    end
    if s==:scale_model_max_area
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_scale_model_max_area(m))
    end
    if s==:scale_lr
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_scale_lr(m))
    end
    if s==:scale_step
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_scale_step(m))
    end
    if s==:psr_threshold
        return cpp_to_julia(jlopencv_TrackerCSRT_Params_get_psr_threshold(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TrackerCSRT_Params, s::Symbol, v)
    if s==:use_hog
        jlopencv_TrackerCSRT_Params_set_use_hog(m, julia_to_cpp(v))
        return v
    end
    if s==:use_color_names
        jlopencv_TrackerCSRT_Params_set_use_color_names(m, julia_to_cpp(v))
        return v
    end
    if s==:use_gray
        jlopencv_TrackerCSRT_Params_set_use_gray(m, julia_to_cpp(v))
        return v
    end
    if s==:use_rgb
        jlopencv_TrackerCSRT_Params_set_use_rgb(m, julia_to_cpp(v))
        return v
    end
    if s==:use_channel_weights
        jlopencv_TrackerCSRT_Params_set_use_channel_weights(m, julia_to_cpp(v))
        return v
    end
    if s==:use_segmentation
        jlopencv_TrackerCSRT_Params_set_use_segmentation(m, julia_to_cpp(v))
        return v
    end
    if s==:window_function
        jlopencv_TrackerCSRT_Params_set_window_function(m, julia_to_cpp(v))
        return v
    end
    if s==:kaiser_alpha
        jlopencv_TrackerCSRT_Params_set_kaiser_alpha(m, julia_to_cpp(v))
        return v
    end
    if s==:cheb_attenuation
        jlopencv_TrackerCSRT_Params_set_cheb_attenuation(m, julia_to_cpp(v))
        return v
    end
    if s==:template_size
        jlopencv_TrackerCSRT_Params_set_template_size(m, julia_to_cpp(v))
        return v
    end
    if s==:gsl_sigma
        jlopencv_TrackerCSRT_Params_set_gsl_sigma(m, julia_to_cpp(v))
        return v
    end
    if s==:hog_orientations
        jlopencv_TrackerCSRT_Params_set_hog_orientations(m, julia_to_cpp(v))
        return v
    end
    if s==:hog_clip
        jlopencv_TrackerCSRT_Params_set_hog_clip(m, julia_to_cpp(v))
        return v
    end
    if s==:padding
        jlopencv_TrackerCSRT_Params_set_padding(m, julia_to_cpp(v))
        return v
    end
    if s==:filter_lr
        jlopencv_TrackerCSRT_Params_set_filter_lr(m, julia_to_cpp(v))
        return v
    end
    if s==:weights_lr
        jlopencv_TrackerCSRT_Params_set_weights_lr(m, julia_to_cpp(v))
        return v
    end
    if s==:num_hog_channels_used
        jlopencv_TrackerCSRT_Params_set_num_hog_channels_used(m, julia_to_cpp(v))
        return v
    end
    if s==:admm_iterations
        jlopencv_TrackerCSRT_Params_set_admm_iterations(m, julia_to_cpp(v))
        return v
    end
    if s==:histogram_bins
        jlopencv_TrackerCSRT_Params_set_histogram_bins(m, julia_to_cpp(v))
        return v
    end
    if s==:histogram_lr
        jlopencv_TrackerCSRT_Params_set_histogram_lr(m, julia_to_cpp(v))
        return v
    end
    if s==:background_ratio
        jlopencv_TrackerCSRT_Params_set_background_ratio(m, julia_to_cpp(v))
        return v
    end
    if s==:number_of_scales
        jlopencv_TrackerCSRT_Params_set_number_of_scales(m, julia_to_cpp(v))
        return v
    end
    if s==:scale_sigma_factor
        jlopencv_TrackerCSRT_Params_set_scale_sigma_factor(m, julia_to_cpp(v))
        return v
    end
    if s==:scale_model_max_area
        jlopencv_TrackerCSRT_Params_set_scale_model_max_area(m, julia_to_cpp(v))
        return v
    end
    if s==:scale_lr
        jlopencv_TrackerCSRT_Params_set_scale_lr(m, julia_to_cpp(v))
        return v
    end
    if s==:scale_step
        jlopencv_TrackerCSRT_Params_set_scale_step(m, julia_to_cpp(v))
        return v
    end
    if s==:psr_threshold
        jlopencv_TrackerCSRT_Params_set_psr_threshold(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::cv_Ptr{TrackerKCF}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{TrackerKCF}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::TrackerKCF_Params, s::Symbol)
    if s==:detect_thresh
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_detect_thresh(m))
    end
    if s==:sigma
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_sigma(m))
    end
    if s==:lambda
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_lambda(m))
    end
    if s==:interp_factor
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_interp_factor(m))
    end
    if s==:output_sigma_factor
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_output_sigma_factor(m))
    end
    if s==:pca_learning_rate
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_pca_learning_rate(m))
    end
    if s==:resize
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_resize(m))
    end
    if s==:split_coeff
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_split_coeff(m))
    end
    if s==:wrap_kernel
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_wrap_kernel(m))
    end
    if s==:compress_feature
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_compress_feature(m))
    end
    if s==:max_patch_size
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_max_patch_size(m))
    end
    if s==:compressed_size
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_compressed_size(m))
    end
    if s==:desc_pca
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_desc_pca(m))
    end
    if s==:desc_npca
        return cpp_to_julia(jlopencv_TrackerKCF_Params_get_desc_npca(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TrackerKCF_Params, s::Symbol, v)
    if s==:detect_thresh
        jlopencv_TrackerKCF_Params_set_detect_thresh(m, julia_to_cpp(v))
        return v
    end
    if s==:sigma
        jlopencv_TrackerKCF_Params_set_sigma(m, julia_to_cpp(v))
        return v
    end
    if s==:lambda
        jlopencv_TrackerKCF_Params_set_lambda(m, julia_to_cpp(v))
        return v
    end
    if s==:interp_factor
        jlopencv_TrackerKCF_Params_set_interp_factor(m, julia_to_cpp(v))
        return v
    end
    if s==:output_sigma_factor
        jlopencv_TrackerKCF_Params_set_output_sigma_factor(m, julia_to_cpp(v))
        return v
    end
    if s==:pca_learning_rate
        jlopencv_TrackerKCF_Params_set_pca_learning_rate(m, julia_to_cpp(v))
        return v
    end
    if s==:resize
        jlopencv_TrackerKCF_Params_set_resize(m, julia_to_cpp(v))
        return v
    end
    if s==:split_coeff
        jlopencv_TrackerKCF_Params_set_split_coeff(m, julia_to_cpp(v))
        return v
    end
    if s==:wrap_kernel
        jlopencv_TrackerKCF_Params_set_wrap_kernel(m, julia_to_cpp(v))
        return v
    end
    if s==:compress_feature
        jlopencv_TrackerKCF_Params_set_compress_feature(m, julia_to_cpp(v))
        return v
    end
    if s==:max_patch_size
        jlopencv_TrackerKCF_Params_set_max_patch_size(m, julia_to_cpp(v))
        return v
    end
    if s==:compressed_size
        jlopencv_TrackerKCF_Params_set_compressed_size(m, julia_to_cpp(v))
        return v
    end
    if s==:desc_pca
        jlopencv_TrackerKCF_Params_set_desc_pca(m, julia_to_cpp(v))
        return v
    end
    if s==:desc_npca
        jlopencv_TrackerKCF_Params_set_desc_npca(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end


function borderInterpolate(p::Int64, len::Int64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_borderInterpolate(julia_to_cpp(p),julia_to_cpp(len),julia_to_cpp(borderType)))
end

function copyMakeBorder(src::InputArray, top::Int64, bottom::Int64, left::Int64, right::Int64, borderType::Int64, dst::InputArray, value::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_copyMakeBorder(julia_to_cpp(src),julia_to_cpp(top),julia_to_cpp(bottom),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(borderType),julia_to_cpp(dst),julia_to_cpp(value)))
end
copyMakeBorder(src::InputArray, top::Int64, bottom::Int64, left::Int64, right::Int64, borderType::Int64; dst::InputArray = (CxxMat()), value::Scalar = (cpp_to_julia(ScalarOP()))) = copyMakeBorder(src, top, bottom, left, right, borderType, dst, value)

function add(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_add(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
add(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat()), dtype::Int64 = Int64(-1)) = add(src1, src2, dst, mask, dtype)

function subtract(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_subtract(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
subtract(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat()), dtype::Int64 = Int64(-1)) = subtract(src1, src2, dst, mask, dtype)

function multiply(src1::InputArray, src2::InputArray, dst::InputArray, scale::Float64, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_multiply(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
multiply(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), scale::Float64 = Float64(1), dtype::Int64 = Int64(-1)) = multiply(src1, src2, dst, scale, dtype)

function divide(src1::InputArray, src2::InputArray, dst::InputArray, scale::Float64, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
divide(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), scale::Float64 = Float64(1), dtype::Int64 = Int64(-1)) = divide(src1, src2, dst, scale, dtype)

function divide(scale::Float64, src2::InputArray, dst::InputArray, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(scale),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
divide(scale::Float64, src2::InputArray; dst::InputArray = (CxxMat()), dtype::Int64 = Int64(-1)) = divide(scale, src2, dst, dtype)

function scaleAdd(src1::InputArray, alpha::Float64, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_scaleAdd(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(dst)))
end
scaleAdd(src1::InputArray, alpha::Float64, src2::InputArray; dst::InputArray = (CxxMat())) = scaleAdd(src1, alpha, src2, dst)

function addWeighted(src1::InputArray, alpha::Float64, src2::InputArray, beta::Float64, gamma::Float64, dst::InputArray, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_addWeighted(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(beta),julia_to_cpp(gamma),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
addWeighted(src1::InputArray, alpha::Float64, src2::InputArray, beta::Float64, gamma::Float64; dst::InputArray = (CxxMat()), dtype::Int64 = Int64(-1)) = addWeighted(src1, alpha, src2, beta, gamma, dst, dtype)

function convertScaleAbs(src::InputArray, dst::InputArray, alpha::Float64, beta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_convertScaleAbs(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta)))
end
convertScaleAbs(src::InputArray; dst::InputArray = (CxxMat()), alpha::Float64 = Float64(1), beta::Float64 = Float64(0)) = convertScaleAbs(src, dst, alpha, beta)

function LUT(src::InputArray, lut::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_LUT(julia_to_cpp(src),julia_to_cpp(lut),julia_to_cpp(dst)))
end
LUT(src::InputArray, lut::InputArray; dst::InputArray = (CxxMat())) = LUT(src, lut, dst)

function sumElems(src::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sum(julia_to_cpp(src)))
end

function countNonZero(src::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_countNonZero(julia_to_cpp(src)))
end

function findNonZero(src::InputArray, idx::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findNonZero(julia_to_cpp(src),julia_to_cpp(idx)))
end
findNonZero(src::InputArray; idx::InputArray = (CxxMat())) = findNonZero(src, idx)

function mean(src::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_mean(julia_to_cpp(src),julia_to_cpp(mask)))
end
mean(src::InputArray; mask::InputArray = (CxxMat())) = mean(src, mask)

function meanStdDev(src::InputArray, mean::InputArray, stddev::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_meanStdDev(julia_to_cpp(src),julia_to_cpp(mean),julia_to_cpp(stddev),julia_to_cpp(mask)))
end
meanStdDev(src::InputArray; mean::InputArray = (CxxMat()), stddev::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = meanStdDev(src, mean, stddev, mask)

function norm(src1::InputArray, normType::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::InputArray; normType::Int64 = Int64(cv_NORM_L2), mask::InputArray = (CxxMat())) = norm(src1, normType, mask)

function norm(src1::InputArray, src2::InputArray, normType::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::InputArray, src2::InputArray; normType::Int64 = Int64(cv_NORM_L2), mask::InputArray = (CxxMat())) = norm(src1, src2, normType, mask)

function PSNR(src1::InputArray, src2::InputArray, R::Float64)
	return cpp_to_julia(jlopencv_cv_cv_PSNR(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(R)))
end
PSNR(src1::InputArray, src2::InputArray; R::Float64 = Float64(255)) = PSNR(src1, src2, R)

function batchDistance(src1::InputArray, src2::InputArray, dtype::Int64, dist::InputArray, nidx::InputArray, normType::Int64, K::Int64, mask::InputArray, update::Int64, crosscheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_batchDistance(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dtype),julia_to_cpp(dist),julia_to_cpp(nidx),julia_to_cpp(normType),julia_to_cpp(K),julia_to_cpp(mask),julia_to_cpp(update),julia_to_cpp(crosscheck)))
end
batchDistance(src1::InputArray, src2::InputArray, dtype::Int64; dist::InputArray = (CxxMat()), nidx::InputArray = (CxxMat()), normType::Int64 = Int64(cv_NORM_L2), K::Int64 = Int64(0), mask::InputArray = (CxxMat()), update::Int64 = Int64(0), crosscheck::Bool = (false)) = batchDistance(src1, src2, dtype, dist, nidx, normType, K, mask, update, crosscheck)

function normalize(src::InputArray, dst::InputArray, alpha::Float64, beta::Float64, norm_type::Int64, dtype::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_normalize(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta),julia_to_cpp(norm_type),julia_to_cpp(dtype),julia_to_cpp(mask)))
end
normalize(src::InputArray, dst::InputArray; alpha::Float64 = Float64(1), beta::Float64 = Float64(0), norm_type::Int64 = Int64(cv_NORM_L2), dtype::Int64 = Int64(-1), mask::InputArray = (CxxMat())) = normalize(src, dst, alpha, beta, norm_type, dtype, mask)

function minMaxLoc(src::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_minMaxLoc(julia_to_cpp(src),julia_to_cpp(mask)))
end
minMaxLoc(src::InputArray; mask::InputArray = (CxxMat())) = minMaxLoc(src, mask)

function reduce(src::InputArray, dim::Int64, rtype::Int64, dst::InputArray, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_reduce(julia_to_cpp(src),julia_to_cpp(dim),julia_to_cpp(rtype),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
reduce(src::InputArray, dim::Int64, rtype::Int64; dst::InputArray = (CxxMat()), dtype::Int64 = Int64(-1)) = reduce(src, dim, rtype, dst, dtype)

function reduce(src::InputArray, params::ReduceParams, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_reduce(julia_to_cpp(src),julia_to_cpp(params),julia_to_cpp(dst)))
end
reduce(src::InputArray, params::ReduceParams; dst::InputArray = (CxxMat())) = reduce(src, params, dst)

function merge(mv::AbstractVector{<:InputArray}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_merge(julia_to_cpp(mv),julia_to_cpp(dst)))
end
merge(mv::AbstractVector{<:InputArray}; dst::InputArray = (CxxMat())) = merge(mv, dst)

function split(m::InputArray, mv::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_cv_split(julia_to_cpp(m),julia_to_cpp(mv)))
end
split(m::InputArray; mv::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) = split(m, mv)

function split(src::InputArray, axis::Int64, sizes::Array{Int32, 1}, dst::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_cv_split(julia_to_cpp(src),julia_to_cpp(axis),julia_to_cpp(sizes),julia_to_cpp(dst)))
end
split(src::InputArray, axis::Int64, sizes::Array{Int32, 1}; dst::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) = split(src, axis, sizes, dst)

function mixChannels(src::AbstractVector{<:InputArray}, dst::AbstractVector{<:InputArray}, fromTo::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_mixChannels(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(fromTo)))
end

function extractChannel(src::InputArray, coi::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_extractChannel(julia_to_cpp(src),julia_to_cpp(coi),julia_to_cpp(dst)))
end
extractChannel(src::InputArray, coi::Int64; dst::InputArray = (CxxMat())) = extractChannel(src, coi, dst)

function insertChannel(src::InputArray, dst::InputArray, coi::Int64)
	return cpp_to_julia(jlopencv_cv_cv_insertChannel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(coi)))
end

function flip(src::InputArray, flipCode::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_flip(julia_to_cpp(src),julia_to_cpp(flipCode),julia_to_cpp(dst)))
end
flip(src::InputArray, flipCode::Int64; dst::InputArray = (CxxMat())) = flip(src, flipCode, dst)

function squeeze(src::InputArray, dst::InputArray, axes::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_squeeze(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(axes)))
end
squeeze(src::InputArray; dst::InputArray = (CxxMat()), axes::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = squeeze(src, dst, axes)

function unsqueeze(src::InputArray, axes::Array{Int32, 1}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_unsqueeze(julia_to_cpp(src),julia_to_cpp(axes),julia_to_cpp(dst)))
end
unsqueeze(src::InputArray, axes::Array{Int32, 1}; dst::InputArray = (CxxMat())) = unsqueeze(src, axes, dst)

function flatten(src::InputArray, dst::InputArray, startAxis::Int64, endAxis::Int64)
	return cpp_to_julia(jlopencv_cv_cv_flatten(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(startAxis),julia_to_cpp(endAxis)))
end
flatten(src::InputArray; dst::InputArray = (CxxMat()), startAxis::Int64 = Int64(0), endAxis::Int64 = Int64(-1)) = flatten(src, dst, startAxis, endAxis)

function reshape(src::InputArray, newShape::Array{Int32, 1}, dst::InputArray, allowZero::Bool)
	return cpp_to_julia(jlopencv_cv_cv_reshape(julia_to_cpp(src),julia_to_cpp(newShape),julia_to_cpp(dst),julia_to_cpp(allowZero)))
end
reshape(src::InputArray, newShape::Array{Int32, 1}; dst::InputArray = (CxxMat()), allowZero::Bool = (false)) = reshape(src, newShape, dst, allowZero)

function concat(src::AbstractVector{<:InputArray}, axis::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_concat(julia_to_cpp(src),julia_to_cpp(axis),julia_to_cpp(dst)))
end
concat(src::AbstractVector{<:InputArray}, axis::Int64; dst::InputArray = (CxxMat())) = concat(src, axis, dst)

function slice(src::InputArray, starts::Array{Int32, 1}, ends::Array{Int32, 1}, steps::Array{Int32, 1}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_slice(julia_to_cpp(src),julia_to_cpp(starts),julia_to_cpp(ends),julia_to_cpp(steps),julia_to_cpp(dst)))
end
slice(src::InputArray, starts::Array{Int32, 1}, ends::Array{Int32, 1}, steps::Array{Int32, 1}; dst::InputArray = (CxxMat())) = slice(src, starts, ends, steps, dst)

function texpr(expr::String, inputs::AbstractVector{<:InputArray}, outputs::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_cv_texpr(julia_to_cpp(expr),julia_to_cpp(inputs),julia_to_cpp(outputs)))
end
texpr(expr::String, inputs::AbstractVector{<:InputArray}; outputs::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) = texpr(expr, inputs, outputs)

function rotate(src::InputArray, rotateCode::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_rotate(julia_to_cpp(src),julia_to_cpp(rotateCode),julia_to_cpp(dst)))
end
rotate(src::InputArray, rotateCode::Int64; dst::InputArray = (CxxMat())) = rotate(src, rotateCode, dst)

function repeat(src::InputArray, ny::Int64, nx::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_repeat(julia_to_cpp(src),julia_to_cpp(ny),julia_to_cpp(nx),julia_to_cpp(dst)))
end
repeat(src::InputArray, ny::Int64, nx::Int64; dst::InputArray = (CxxMat())) = repeat(src, ny, nx, dst)

function repeat(src::InputArray, repeats::Array{Int32, 1}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_repeat(julia_to_cpp(src),julia_to_cpp(repeats),julia_to_cpp(dst)))
end
repeat(src::InputArray, repeats::Array{Int32, 1}; dst::InputArray = (CxxMat())) = repeat(src, repeats, dst)

function hconcat(src::AbstractVector{<:InputArray}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_hconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
hconcat(src::AbstractVector{<:InputArray}; dst::InputArray = (CxxMat())) = hconcat(src, dst)

function vconcat(src::AbstractVector{<:InputArray}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_vconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
vconcat(src::AbstractVector{<:InputArray}; dst::InputArray = (CxxMat())) = vconcat(src, dst)

function bitwise_and(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_and(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_and(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = bitwise_and(src1, src2, dst, mask)

function bitwise_or(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_or(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_or(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = bitwise_or(src1, src2, dst, mask)

function bitwise_xor(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_xor(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_xor(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = bitwise_xor(src1, src2, dst, mask)

function bitwise_not(src::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_not(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_not(src::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = bitwise_not(src, dst, mask)

function absdiff(src1::InputArray, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_absdiff(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
absdiff(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat())) = absdiff(src1, src2, dst)

function copyTo(src::InputArray, mask::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_copyTo(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst)))
end
copyTo(src::InputArray, mask::InputArray; dst::InputArray = (CxxMat())) = copyTo(src, mask, dst)

function inRange(src::InputArray, lowerb::InputArray, upperb::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_inRange(julia_to_cpp(src),julia_to_cpp(lowerb),julia_to_cpp(upperb),julia_to_cpp(dst)))
end
inRange(src::InputArray, lowerb::InputArray, upperb::InputArray; dst::InputArray = (CxxMat())) = inRange(src, lowerb, upperb, dst)

function compare(src1::InputArray, src2::InputArray, cmpop::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_compare(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(cmpop),julia_to_cpp(dst)))
end
compare(src1::InputArray, src2::InputArray, cmpop::Int64; dst::InputArray = (CxxMat())) = compare(src1, src2, cmpop, dst)

function min(src1::InputArray, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_min(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
min(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat())) = min(src1, src2, dst)

function max(src1::InputArray, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_max(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
max(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat())) = max(src1, src2, dst)

function sqrt(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sqrt(julia_to_cpp(src),julia_to_cpp(dst)))
end
sqrt(src::InputArray; dst::InputArray = (CxxMat())) = sqrt(src, dst)

function pow(src::InputArray, power::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_pow(julia_to_cpp(src),julia_to_cpp(power),julia_to_cpp(dst)))
end
pow(src::InputArray, power::Float64; dst::InputArray = (CxxMat())) = pow(src, power, dst)

function exp(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_exp(julia_to_cpp(src),julia_to_cpp(dst)))
end
exp(src::InputArray; dst::InputArray = (CxxMat())) = exp(src, dst)

function log(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_log(julia_to_cpp(src),julia_to_cpp(dst)))
end
log(src::InputArray; dst::InputArray = (CxxMat())) = log(src, dst)

function polarToCart(magnitude::InputArray, angle::InputArray, x::InputArray, y::InputArray, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_polarToCart(julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angleInDegrees)))
end
polarToCart(magnitude::InputArray, angle::InputArray; x::InputArray = (CxxMat()), y::InputArray = (CxxMat()), angleInDegrees::Bool = (false)) = polarToCart(magnitude, angle, x, y, angleInDegrees)

function cartToPolar(x::InputArray, y::InputArray, magnitude::InputArray, angle::InputArray, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_cartToPolar(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
cartToPolar(x::InputArray, y::InputArray; magnitude::InputArray = (CxxMat()), angle::InputArray = (CxxMat()), angleInDegrees::Bool = (false)) = cartToPolar(x, y, magnitude, angle, angleInDegrees)

function phase(x::InputArray, y::InputArray, angle::InputArray, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_phase(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
phase(x::InputArray, y::InputArray; angle::InputArray = (CxxMat()), angleInDegrees::Bool = (false)) = phase(x, y, angle, angleInDegrees)

function magnitude(x::InputArray, y::InputArray, magnitude::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_magnitude(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude)))
end
magnitude(x::InputArray, y::InputArray; magnitude::InputArray = (CxxMat())) = magnitude(x, y, magnitude)

function checkRange(a::InputArray, quiet::Bool, minVal::Float64, maxVal::Float64)
	return cpp_to_julia(jlopencv_cv_cv_checkRange(julia_to_cpp(a),julia_to_cpp(quiet),julia_to_cpp(minVal),julia_to_cpp(maxVal)))
end
checkRange(a::InputArray; quiet::Bool = (true), minVal::Float64 = Float64(-typemax(Float64)), maxVal::Float64 = Float64(typemax(Float64))) = checkRange(a, quiet, minVal, maxVal)

function patchNaNs(a::InputArray, val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_patchNaNs(julia_to_cpp(a),julia_to_cpp(val)))
end
patchNaNs(a::InputArray; val::Float64 = Float64(0)) = patchNaNs(a, val)

function finiteMask(src::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_finiteMask(julia_to_cpp(src),julia_to_cpp(mask)))
end
finiteMask(src::InputArray; mask::InputArray = (CxxMat())) = finiteMask(src, mask)

function gemm(src1::InputArray, src2::InputArray, alpha::Float64, src3::InputArray, beta::Float64, dst::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_gemm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(alpha),julia_to_cpp(src3),julia_to_cpp(beta),julia_to_cpp(dst),julia_to_cpp(flags)))
end
gemm(src1::InputArray, src2::InputArray, alpha::Float64, src3::InputArray, beta::Float64; dst::InputArray = (CxxMat()), flags::Int64 = Int64(0)) = gemm(src1, src2, alpha, src3, beta, dst, flags)

function mulTransposed(src::InputArray, aTa::Bool, dst::InputArray, delta::InputArray, scale::Float64, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_mulTransposed(julia_to_cpp(src),julia_to_cpp(aTa),julia_to_cpp(dst),julia_to_cpp(delta),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
mulTransposed(src::InputArray, aTa::Bool; dst::InputArray = (CxxMat()), delta::InputArray = (CxxMat()), scale::Float64 = Float64(1), dtype::Int64 = Int64(-1)) = mulTransposed(src, aTa, dst, delta, scale, dtype)

function transpose(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_transpose(julia_to_cpp(src),julia_to_cpp(dst)))
end
transpose(src::InputArray; dst::InputArray = (CxxMat())) = transpose(src, dst)

function transpose(src::InputArray, order::Array{Int32, 1}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_transpose(julia_to_cpp(src),julia_to_cpp(order),julia_to_cpp(dst)))
end
transpose(src::InputArray, order::Array{Int32, 1}; dst::InputArray = (CxxMat())) = transpose(src, order, dst)

function transform(src::InputArray, m::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_transform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
transform(src::InputArray, m::InputArray; dst::InputArray = (CxxMat())) = transform(src, m, dst)

function perspectiveTransform(src::InputArray, m::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_perspectiveTransform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
perspectiveTransform(src::InputArray, m::InputArray; dst::InputArray = (CxxMat())) = perspectiveTransform(src, m, dst)

function completeSymm(m::InputArray, lowerToUpper::Bool)
	return cpp_to_julia(jlopencv_cv_cv_completeSymm(julia_to_cpp(m),julia_to_cpp(lowerToUpper)))
end
completeSymm(m::InputArray; lowerToUpper::Bool = (false)) = completeSymm(m, lowerToUpper)

function setIdentity(mtx::InputArray, s::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_setIdentity(julia_to_cpp(mtx),julia_to_cpp(s)))
end
setIdentity(mtx::InputArray; s::Scalar = (cpp_to_julia(ScalarOXP()))) = setIdentity(mtx, s)

function determinant(mtx::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_determinant(julia_to_cpp(mtx)))
end

function trace(mtx::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_trace(julia_to_cpp(mtx)))
end

function invert(src::InputArray, dst::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_invert(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
invert(src::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(cv_DECOMP_LU)) = invert(src, dst, flags)

function solve(src1::InputArray, src2::InputArray, dst::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_solve(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(flags)))
end
solve(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(cv_DECOMP_LU)) = solve(src1, src2, dst, flags)

function sort(src::InputArray, flags::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sort(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sort(src::InputArray, flags::Int64; dst::InputArray = (CxxMat())) = sort(src, flags, dst)

function sortIdx(src::InputArray, flags::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sortIdx(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sortIdx(src::InputArray, flags::Int64; dst::InputArray = (CxxMat())) = sortIdx(src, flags, dst)

function solveCubic(coeffs::InputArray, roots::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_solveCubic(julia_to_cpp(coeffs),julia_to_cpp(roots)))
end
solveCubic(coeffs::InputArray; roots::InputArray = (CxxMat())) = solveCubic(coeffs, roots)

function solvePoly(coeffs::InputArray, roots::InputArray, maxIters::Int64)
	return cpp_to_julia(jlopencv_cv_cv_solvePoly(julia_to_cpp(coeffs),julia_to_cpp(roots),julia_to_cpp(maxIters)))
end
solvePoly(coeffs::InputArray; roots::InputArray = (CxxMat()), maxIters::Int64 = Int64(300)) = solvePoly(coeffs, roots, maxIters)

function eigen(src::InputArray, eigenvalues::InputArray, eigenvectors::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_eigen(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigen(src::InputArray; eigenvalues::InputArray = (CxxMat()), eigenvectors::InputArray = (CxxMat())) = eigen(src, eigenvalues, eigenvectors)

function eigenNonSymmetric(src::InputArray, eigenvalues::InputArray, eigenvectors::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_eigenNonSymmetric(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigenNonSymmetric(src::InputArray; eigenvalues::InputArray = (CxxMat()), eigenvectors::InputArray = (CxxMat())) = eigenNonSymmetric(src, eigenvalues, eigenvectors)

function calcCovarMatrix(samples::InputArray, mean::InputArray, flags::Int64, covar::InputArray, ctype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_calcCovarMatrix(julia_to_cpp(samples),julia_to_cpp(mean),julia_to_cpp(flags),julia_to_cpp(covar),julia_to_cpp(ctype)))
end
calcCovarMatrix(samples::InputArray, mean::InputArray, flags::Int64; covar::InputArray = (CxxMat()), ctype::Int64 = Int64(CV_64F)) = calcCovarMatrix(samples, mean, flags, covar, ctype)

function PCACompute(data::InputArray, mean::InputArray, eigenvectors::InputArray, maxComponents::Int64)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(maxComponents)))
end
PCACompute(data::InputArray, mean::InputArray; eigenvectors::InputArray = (CxxMat()), maxComponents::Int64 = Int64(0)) = PCACompute(data, mean, eigenvectors, maxComponents)

function PCACompute2(data::InputArray, mean::InputArray, eigenvectors::InputArray, eigenvalues::InputArray, maxComponents::Int64)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues),julia_to_cpp(maxComponents)))
end
PCACompute2(data::InputArray, mean::InputArray; eigenvectors::InputArray = (CxxMat()), eigenvalues::InputArray = (CxxMat()), maxComponents::Int64 = Int64(0)) = PCACompute2(data, mean, eigenvectors, eigenvalues, maxComponents)

function PCACompute(data::InputArray, mean::InputArray, retainedVariance::Float64, eigenvectors::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors)))
end
PCACompute(data::InputArray, mean::InputArray, retainedVariance::Float64; eigenvectors::InputArray = (CxxMat())) = PCACompute(data, mean, retainedVariance, eigenvectors)

function PCACompute2(data::InputArray, mean::InputArray, retainedVariance::Float64, eigenvectors::InputArray, eigenvalues::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues)))
end
PCACompute2(data::InputArray, mean::InputArray, retainedVariance::Float64; eigenvectors::InputArray = (CxxMat()), eigenvalues::InputArray = (CxxMat())) = PCACompute2(data, mean, retainedVariance, eigenvectors, eigenvalues)

function PCAProject(data::InputArray, mean::InputArray, eigenvectors::InputArray, result::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_PCAProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCAProject(data::InputArray, mean::InputArray, eigenvectors::InputArray; result::InputArray = (CxxMat())) = PCAProject(data, mean, eigenvectors, result)

function PCABackProject(data::InputArray, mean::InputArray, eigenvectors::InputArray, result::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_PCABackProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCABackProject(data::InputArray, mean::InputArray, eigenvectors::InputArray; result::InputArray = (CxxMat())) = PCABackProject(data, mean, eigenvectors, result)

function SVDecomp(src::InputArray, w::InputArray, u::InputArray, vt::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_SVDecomp(julia_to_cpp(src),julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(flags)))
end
SVDecomp(src::InputArray; w::InputArray = (CxxMat()), u::InputArray = (CxxMat()), vt::InputArray = (CxxMat()), flags::Int64 = Int64(0)) = SVDecomp(src, w, u, vt, flags)

function SVBackSubst(w::InputArray, u::InputArray, vt::InputArray, rhs::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_SVBackSubst(julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(rhs),julia_to_cpp(dst)))
end
SVBackSubst(w::InputArray, u::InputArray, vt::InputArray, rhs::InputArray; dst::InputArray = (CxxMat())) = SVBackSubst(w, u, vt, rhs, dst)

function Mahalanobis(v1::InputArray, v2::InputArray, icovar::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_Mahalanobis(julia_to_cpp(v1),julia_to_cpp(v2),julia_to_cpp(icovar)))
end

function dft(src::InputArray, dst::InputArray, flags::Int64, nonzeroRows::Int64)
	return cpp_to_julia(jlopencv_cv_cv_dft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
dft(src::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(0), nonzeroRows::Int64 = Int64(0)) = dft(src, dst, flags, nonzeroRows)

function idft(src::InputArray, dst::InputArray, flags::Int64, nonzeroRows::Int64)
	return cpp_to_julia(jlopencv_cv_cv_idft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
idft(src::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(0), nonzeroRows::Int64 = Int64(0)) = idft(src, dst, flags, nonzeroRows)

function dct(src::InputArray, dst::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_dct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
dct(src::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(0)) = dct(src, dst, flags)

function idct(src::InputArray, dst::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_idct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
idct(src::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(0)) = idct(src, dst, flags)

function mulSpectrums(a::InputArray, b::InputArray, flags::Int64, c::InputArray, conjB::Bool)
	return cpp_to_julia(jlopencv_cv_cv_mulSpectrums(julia_to_cpp(a),julia_to_cpp(b),julia_to_cpp(flags),julia_to_cpp(c),julia_to_cpp(conjB)))
end
mulSpectrums(a::InputArray, b::InputArray, flags::Int64; c::InputArray = (CxxMat()), conjB::Bool = (false)) = mulSpectrums(a, b, flags, c, conjB)

function getOptimalDFTSize(vecsize::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getOptimalDFTSize(julia_to_cpp(vecsize)))
end

function setRNGSeed(seed::Int64)
	return cpp_to_julia(jlopencv_cv_cv_setRNGSeed(julia_to_cpp(seed)))
end

function randu(dst::InputArray, low::InputArray, high::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_randu(julia_to_cpp(dst),julia_to_cpp(low),julia_to_cpp(high)))
end

function randn(dst::InputArray, mean::InputArray, stddev::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_randn(julia_to_cpp(dst),julia_to_cpp(mean),julia_to_cpp(stddev)))
end

function randShuffle(dst::InputArray, iterFactor::Float64)
	return cpp_to_julia(jlopencv_cv_cv_randShuffle(julia_to_cpp(dst),julia_to_cpp(iterFactor)))
end
randShuffle(dst::InputArray; iterFactor::Float64 = Float64(1)) = randShuffle(dst, iterFactor)

function kmeans(data::InputArray, K::Int64, bestLabels::InputArray, criteria::TermCriteria, attempts::Int64, flags::Int64, centers::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_kmeans(julia_to_cpp(data),julia_to_cpp(K),julia_to_cpp(bestLabels),julia_to_cpp(criteria),julia_to_cpp(attempts),julia_to_cpp(flags),julia_to_cpp(centers)))
end
kmeans(data::InputArray, K::Int64, bestLabels::InputArray, criteria::TermCriteria, attempts::Int64, flags::Int64; centers::InputArray = (CxxMat())) = kmeans(data, K, bestLabels, criteria, attempts, flags, centers)

function cubeRoot(val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_cubeRoot(julia_to_cpp(val)))
end

function fastAtan2(y::Float64, x::Float64)
	return cpp_to_julia(jlopencv_cv_cv_fastAtan2(julia_to_cpp(y),julia_to_cpp(x)))
end

function solveLP(Func::InputArray, Constr::InputArray, constr_eps::Float64, z::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_solveLP(julia_to_cpp(Func),julia_to_cpp(Constr),julia_to_cpp(constr_eps),julia_to_cpp(z)))
end
solveLP(Func::InputArray, Constr::InputArray, constr_eps::Float64; z::InputArray = (CxxMat())) = solveLP(Func, Constr, constr_eps, z)

function solveLP(Func::InputArray, Constr::InputArray, z::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_solveLP(julia_to_cpp(Func),julia_to_cpp(Constr),julia_to_cpp(z)))
end
solveLP(Func::InputArray, Constr::InputArray; z::InputArray = (CxxMat())) = solveLP(Func, Constr, z)

function linearAssignment(cost::InputArray, costThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_linearAssignment(julia_to_cpp(cost),julia_to_cpp(costThreshold)))
end
linearAssignment(cost::InputArray; costThreshold::Float64 = Float64(typemax(Float64))) = linearAssignment(cost, costThreshold)

function KeyPoint_convert(keypoints::Array{KeyPoint, 1}, keypointIndexes::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_convert(julia_to_cpp(keypoints),julia_to_cpp(keypointIndexes)))
end
KeyPoint_convert(keypoints::Array{KeyPoint, 1}; keypointIndexes::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = KeyPoint_convert(keypoints, keypointIndexes)

function KeyPoint_convert(points2f::Array{Point{Float32}, 1}, size::Float64, response::Float64, octave::Int64, class_id::Int64)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_convert(julia_to_cpp(points2f),julia_to_cpp(size),julia_to_cpp(response),julia_to_cpp(octave),julia_to_cpp(class_id)))
end
KeyPoint_convert(points2f::Array{Point{Float32}, 1}; size::Float64 = Float64(1), response::Float64 = Float64(1), octave::Int64 = Int64(0), class_id::Int64 = Int64(-1)) = KeyPoint_convert(points2f, size, response, octave, class_id)

function KeyPoint_overlap(kp1::KeyPoint, kp2::KeyPoint)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_overlap(julia_to_cpp(kp1),julia_to_cpp(kp2)))
end

function setNumThreads(nthreads::Int64)
	return cpp_to_julia(jlopencv_cv_cv_setNumThreads(julia_to_cpp(nthreads)))
end

function getNumThreads()
	return cpp_to_julia(jlopencv_cv_cv_getNumThreads())
end

function getThreadNum()
	return cpp_to_julia(jlopencv_cv_cv_getThreadNum())
end

function getBuildInformation()
	return cpp_to_julia(jlopencv_cv_cv_getBuildInformation())
end

function getVersionString()
	return cpp_to_julia(jlopencv_cv_cv_getVersionString())
end

function getVersionMajor()
	return cpp_to_julia(jlopencv_cv_cv_getVersionMajor())
end

function getVersionMinor()
	return cpp_to_julia(jlopencv_cv_cv_getVersionMinor())
end

function getVersionRevision()
	return cpp_to_julia(jlopencv_cv_cv_getVersionRevision())
end

function getTickCount()
	return cpp_to_julia(jlopencv_cv_cv_getTickCount())
end

function getTickFrequency()
	return cpp_to_julia(jlopencv_cv_cv_getTickFrequency())
end

function getGaussianKernel(ksize::Int64, sigma::Float64, ktype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getGaussianKernel(julia_to_cpp(ksize),julia_to_cpp(sigma),julia_to_cpp(ktype)))
end
getGaussianKernel(ksize::Int64, sigma::Float64; ktype::Int64 = Int64(CV_64F)) = getGaussianKernel(ksize, sigma, ktype)

function getDerivKernels(dx::Int64, dy::Int64, ksize::Int64, kx::InputArray, ky::InputArray, normalize::Bool, ktype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getDerivKernels(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(kx),julia_to_cpp(ky),julia_to_cpp(normalize),julia_to_cpp(ktype)))
end
getDerivKernels(dx::Int64, dy::Int64, ksize::Int64; kx::InputArray = (CxxMat()), ky::InputArray = (CxxMat()), normalize::Bool = (false), ktype::Int64 = Int64(CV_32F)) = getDerivKernels(dx, dy, ksize, kx, ky, normalize, ktype)

function getGaborKernel(ksize::Size{Int32}, sigma::Float64, theta::Float64, lambd::Float64, gamma::Float64, psi::Float64, ktype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getGaborKernel(julia_to_cpp(ksize),julia_to_cpp(sigma),julia_to_cpp(theta),julia_to_cpp(lambd),julia_to_cpp(gamma),julia_to_cpp(psi),julia_to_cpp(ktype)))
end
getGaborKernel(ksize::Size{Int32}, sigma::Float64, theta::Float64, lambd::Float64, gamma::Float64; psi::Float64 = Float64(pi*0.5), ktype::Int64 = Int64(CV_64F)) = getGaborKernel(ksize, sigma, theta, lambd, gamma, psi, ktype)

function getStructuringElement(shape::Int64, ksize::Size{Int32}, anchor::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_getStructuringElement(julia_to_cpp(shape),julia_to_cpp(ksize),julia_to_cpp(anchor)))
end
getStructuringElement(shape::Int64, ksize::Size{Int32}; anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP()))) = getStructuringElement(shape, ksize, anchor)

function medianBlur(src::InputArray, ksize::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_medianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst)))
end
medianBlur(src::InputArray, ksize::Int64; dst::InputArray = (CxxMat())) = medianBlur(src, ksize, dst)

function GaussianBlur(src::InputArray, ksize::Size{Int32}, sigmaX::Float64, dst::InputArray, sigmaY::Float64, borderType::Int64, hint::AlgorithmHint)
	return cpp_to_julia(jlopencv_cv_cv_GaussianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(sigmaX),julia_to_cpp(dst),julia_to_cpp(sigmaY),julia_to_cpp(borderType),julia_to_cpp(hint)))
end
GaussianBlur(src::InputArray, ksize::Size{Int32}, sigmaX::Float64; dst::InputArray = (CxxMat()), sigmaY::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT), hint::AlgorithmHint = (cv_ALGO_HINT_DEFAULT)) = GaussianBlur(src, ksize, sigmaX, dst, sigmaY, borderType, hint)

function bilateralFilter(src::InputArray, d::Int64, sigmaColor::Float64, sigmaSpace::Float64, dst::InputArray, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_bilateralFilter(julia_to_cpp(src),julia_to_cpp(d),julia_to_cpp(sigmaColor),julia_to_cpp(sigmaSpace),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
bilateralFilter(src::InputArray, d::Int64, sigmaColor::Float64, sigmaSpace::Float64; dst::InputArray = (CxxMat()), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = bilateralFilter(src, d, sigmaColor, sigmaSpace, dst, borderType)

function boxFilter(src::InputArray, ddepth::Int64, ksize::Size{Int32}, dst::InputArray, anchor::Point{Int32}, normalize::Bool, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_boxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
boxFilter(src::InputArray, ddepth::Int64, ksize::Size{Int32}; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), normalize::Bool = (true), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = boxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function sqrBoxFilter(src::InputArray, ddepth::Int64, ksize::Size{Int32}, dst::InputArray, anchor::Point{Int32}, normalize::Bool, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_sqrBoxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
sqrBoxFilter(src::InputArray, ddepth::Int64, ksize::Size{Int32}; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSGTXP())), normalize::Bool = (true), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = sqrBoxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function blur(src::InputArray, ksize::Size{Int32}, dst::InputArray, anchor::Point{Int32}, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_blur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(borderType)))
end
blur(src::InputArray, ksize::Size{Int32}; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = blur(src, ksize, dst, anchor, borderType)

function filter2D(src::InputArray, ddepth::Int64, kernel::InputArray, dst::InputArray, anchor::Point{Int32}, delta::Float64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_filter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
filter2D(src::InputArray, ddepth::Int64, kernel::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), delta::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = filter2D(src, ddepth, kernel, dst, anchor, delta, borderType)

function filter2Dp(src::InputArray, kernel::InputArray, dst::InputArray, params::Filter2DParams)
	return cpp_to_julia(jlopencv_cv_cv_filter2D(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(params)))
end
filter2Dp(src::InputArray, kernel::InputArray; dst::InputArray = (CxxMat()), params::Filter2DParams = (cpp_to_julia(FilterYDParamsOP()))) = filter2Dp(src, kernel, dst, params)

function sepFilter2D(src::InputArray, ddepth::Int64, kernelX::InputArray, kernelY::InputArray, dst::InputArray, anchor::Point{Int32}, delta::Float64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_sepFilter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernelX),julia_to_cpp(kernelY),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
sepFilter2D(src::InputArray, ddepth::Int64, kernelX::InputArray, kernelY::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), delta::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = sepFilter2D(src, ddepth, kernelX, kernelY, dst, anchor, delta, borderType)

function Sobel(src::InputArray, ddepth::Int64, dx::Int64, dy::Int64, dst::InputArray, ksize::Int64, scale::Float64, delta::Float64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Sobel(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Sobel(src::InputArray, ddepth::Int64, dx::Int64, dy::Int64; dst::InputArray = (CxxMat()), ksize::Int64 = Int64(3), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = Sobel(src, ddepth, dx, dy, dst, ksize, scale, delta, borderType)

function spatialGradient(src::InputArray, dx::InputArray, dy::InputArray, ksize::Int64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_spatialGradient(julia_to_cpp(src),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
spatialGradient(src::InputArray; dx::InputArray = (CxxMat()), dy::InputArray = (CxxMat()), ksize::Int64 = Int64(3), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = spatialGradient(src, dx, dy, ksize, borderType)

function Scharr(src::InputArray, ddepth::Int64, dx::Int64, dy::Int64, dst::InputArray, scale::Float64, delta::Float64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Scharr(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Scharr(src::InputArray, ddepth::Int64, dx::Int64, dy::Int64; dst::InputArray = (CxxMat()), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = Scharr(src, ddepth, dx, dy, dst, scale, delta, borderType)

function Laplacian(src::InputArray, ddepth::Int64, dst::InputArray, ksize::Int64, scale::Float64, delta::Float64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Laplacian(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Laplacian(src::InputArray, ddepth::Int64; dst::InputArray = (CxxMat()), ksize::Int64 = Int64(1), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = Laplacian(src, ddepth, dst, ksize, scale, delta, borderType)

function Canny(image::InputArray, threshold1::Float64, threshold2::Float64, edges::InputArray, apertureSize::Int64, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(image),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(apertureSize),julia_to_cpp(L2gradient)))
end
Canny(image::InputArray, threshold1::Float64, threshold2::Float64; edges::InputArray = (CxxMat()), apertureSize::Int64 = Int64(3), L2gradient::Bool = (false)) = Canny(image, threshold1, threshold2, edges, apertureSize, L2gradient)

function Canny(dx::InputArray, dy::InputArray, threshold1::Float64, threshold2::Float64, edges::InputArray, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(L2gradient)))
end
Canny(dx::InputArray, dy::InputArray, threshold1::Float64, threshold2::Float64; edges::InputArray = (CxxMat()), L2gradient::Bool = (false)) = Canny(dx, dy, threshold1, threshold2, edges, L2gradient)

function cornerMinEigenVal(src::InputArray, blockSize::Int64, dst::InputArray, ksize::Int64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_cornerMinEigenVal(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
cornerMinEigenVal(src::InputArray, blockSize::Int64; dst::InputArray = (CxxMat()), ksize::Int64 = Int64(3), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = cornerMinEigenVal(src, blockSize, dst, ksize, borderType)

function cornerHarris(src::InputArray, blockSize::Int64, ksize::Int64, k::Float64, dst::InputArray, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_cornerHarris(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(k),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerHarris(src::InputArray, blockSize::Int64, ksize::Int64, k::Float64; dst::InputArray = (CxxMat()), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = cornerHarris(src, blockSize, ksize, k, dst, borderType)

function cornerEigenValsAndVecs(src::InputArray, blockSize::Int64, ksize::Int64, dst::InputArray, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_cornerEigenValsAndVecs(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerEigenValsAndVecs(src::InputArray, blockSize::Int64, ksize::Int64; dst::InputArray = (CxxMat()), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = cornerEigenValsAndVecs(src, blockSize, ksize, dst, borderType)

function preCornerDetect(src::InputArray, ksize::Int64, dst::InputArray, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_preCornerDetect(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
preCornerDetect(src::InputArray, ksize::Int64; dst::InputArray = (CxxMat()), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = preCornerDetect(src, ksize, dst, borderType)

function cornerSubPix(image::InputArray, corners::InputArray, winSize::Size{Int32}, zeroZone::Size{Int32}, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_cornerSubPix(julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(winSize),julia_to_cpp(zeroZone),julia_to_cpp(criteria)))
end

function HoughLines(image::InputArray, rho::Float64, theta::Float64, threshold::Int64, lines::InputArray, srn::Float64, stn::Float64, min_theta::Float64, max_theta::Float64, use_edgeval::Bool)
	return cpp_to_julia(jlopencv_cv_cv_HoughLines(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(srn),julia_to_cpp(stn),julia_to_cpp(min_theta),julia_to_cpp(max_theta),julia_to_cpp(use_edgeval)))
end
HoughLines(image::InputArray, rho::Float64, theta::Float64, threshold::Int64; lines::InputArray = (CxxMat()), srn::Float64 = Float64(0), stn::Float64 = Float64(0), min_theta::Float64 = Float64(0), max_theta::Float64 = Float64(pi), use_edgeval::Bool = (false)) = HoughLines(image, rho, theta, threshold, lines, srn, stn, min_theta, max_theta, use_edgeval)

function HoughLinesP(image::InputArray, rho::Float64, theta::Float64, threshold::Int64, lines::InputArray, minLineLength::Float64, maxLineGap::Float64)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesP(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(minLineLength),julia_to_cpp(maxLineGap)))
end
HoughLinesP(image::InputArray, rho::Float64, theta::Float64, threshold::Int64; lines::InputArray = (CxxMat()), minLineLength::Float64 = Float64(0), maxLineGap::Float64 = Float64(0)) = HoughLinesP(image, rho, theta, threshold, lines, minLineLength, maxLineGap)

function HoughLinesPointSet(point::InputArray, lines_max::Int64, threshold::Int64, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64, lines::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesPointSet(julia_to_cpp(point),julia_to_cpp(lines_max),julia_to_cpp(threshold),julia_to_cpp(min_rho),julia_to_cpp(max_rho),julia_to_cpp(rho_step),julia_to_cpp(min_theta),julia_to_cpp(max_theta),julia_to_cpp(theta_step),julia_to_cpp(lines)))
end
HoughLinesPointSet(point::InputArray, lines_max::Int64, threshold::Int64, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64; lines::InputArray = (CxxMat())) = HoughLinesPointSet(point, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step, lines)

function HoughCircles(image::InputArray, method::Int64, dp::Float64, minDist::Float64, circles::InputArray, param1::Float64, param2::Float64, minRadius::Int64, maxRadius::Int64)
	return cpp_to_julia(jlopencv_cv_cv_HoughCircles(julia_to_cpp(image),julia_to_cpp(method),julia_to_cpp(dp),julia_to_cpp(minDist),julia_to_cpp(circles),julia_to_cpp(param1),julia_to_cpp(param2),julia_to_cpp(minRadius),julia_to_cpp(maxRadius)))
end
HoughCircles(image::InputArray, method::Int64, dp::Float64, minDist::Float64; circles::InputArray = (CxxMat()), param1::Float64 = Float64(100), param2::Float64 = Float64(100), minRadius::Int64 = Int64(0), maxRadius::Int64 = Int64(0)) = HoughCircles(image, method, dp, minDist, circles, param1, param2, minRadius, maxRadius)

function erode(src::InputArray, kernel::InputArray, dst::InputArray, anchor::Point{Int32}, iterations::Int64, borderType::Int64, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_erode(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
erode(src::InputArray, kernel::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), iterations::Int64 = Int64(1), borderType::Int64 = Int64(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(morphologyDefaultBorderValueOP()))) = erode(src, kernel, dst, anchor, iterations, borderType, borderValue)

function dilate(src::InputArray, kernel::InputArray, dst::InputArray, anchor::Point{Int32}, iterations::Int64, borderType::Int64, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_dilate(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
dilate(src::InputArray, kernel::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), iterations::Int64 = Int64(1), borderType::Int64 = Int64(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(morphologyDefaultBorderValueOP()))) = dilate(src, kernel, dst, anchor, iterations, borderType, borderValue)

function morphologyEx(src::InputArray, op::Int64, kernel::InputArray, dst::InputArray, anchor::Point{Int32}, iterations::Int64, borderType::Int64, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_morphologyEx(julia_to_cpp(src),julia_to_cpp(op),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
morphologyEx(src::InputArray, op::Int64, kernel::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), iterations::Int64 = Int64(1), borderType::Int64 = Int64(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(morphologyDefaultBorderValueOP()))) = morphologyEx(src, op, kernel, dst, anchor, iterations, borderType, borderValue)

function resize(src::InputArray, dsize::Size{Int32}, dst::InputArray, fx::Float64, fy::Float64, interpolation::Int64)
	return cpp_to_julia(jlopencv_cv_cv_resize(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(fx),julia_to_cpp(fy),julia_to_cpp(interpolation)))
end
resize(src::InputArray, dsize::Size{Int32}; dst::InputArray = (CxxMat()), fx::Float64 = Float64(0), fy::Float64 = Float64(0), interpolation::Int64 = Int64(cv_INTER_LINEAR)) = resize(src, dsize, dst, fx, fy, interpolation)

function warpAffine(src::InputArray, M::InputArray, dsize::Size{Int32}, dst::InputArray, flags::Int64, borderMode::Int64, borderValue::Scalar, hint::AlgorithmHint)
	return cpp_to_julia(jlopencv_cv_cv_warpAffine(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue),julia_to_cpp(hint)))
end
warpAffine(src::InputArray, M::InputArray, dsize::Size{Int32}; dst::InputArray = (CxxMat()), flags::Int64 = Int64(cv_INTER_LINEAR), borderMode::Int64 = Int64(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(ScalarOP())), hint::AlgorithmHint = (cv_ALGO_HINT_DEFAULT)) = warpAffine(src, M, dsize, dst, flags, borderMode, borderValue, hint)

function warpPerspective(src::InputArray, M::InputArray, dsize::Size{Int32}, dst::InputArray, flags::Int64, borderMode::Int64, borderValue::Scalar, hint::AlgorithmHint)
	return cpp_to_julia(jlopencv_cv_cv_warpPerspective(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue),julia_to_cpp(hint)))
end
warpPerspective(src::InputArray, M::InputArray, dsize::Size{Int32}; dst::InputArray = (CxxMat()), flags::Int64 = Int64(cv_INTER_LINEAR), borderMode::Int64 = Int64(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(ScalarOP())), hint::AlgorithmHint = (cv_ALGO_HINT_DEFAULT)) = warpPerspective(src, M, dsize, dst, flags, borderMode, borderValue, hint)

function remap(src::InputArray, map1::InputArray, map2::InputArray, interpolation::Int64, dst::InputArray, borderMode::Int64, borderValue::Scalar, hint::AlgorithmHint)
	return cpp_to_julia(jlopencv_cv_cv_remap(julia_to_cpp(src),julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(interpolation),julia_to_cpp(dst),julia_to_cpp(borderMode),julia_to_cpp(borderValue),julia_to_cpp(hint)))
end
remap(src::InputArray, map1::InputArray, map2::InputArray, interpolation::Int64; dst::InputArray = (CxxMat()), borderMode::Int64 = Int64(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(ScalarOP())), hint::AlgorithmHint = (cv_ALGO_HINT_DEFAULT)) = remap(src, map1, map2, interpolation, dst, borderMode, borderValue, hint)

function convertMaps(map1::InputArray, map2::InputArray, dstmap1type::Int64, dstmap1::InputArray, dstmap2::InputArray, nninterpolation::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convertMaps(julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(dstmap1type),julia_to_cpp(dstmap1),julia_to_cpp(dstmap2),julia_to_cpp(nninterpolation)))
end
convertMaps(map1::InputArray, map2::InputArray, dstmap1type::Int64; dstmap1::InputArray = (CxxMat()), dstmap2::InputArray = (CxxMat()), nninterpolation::Bool = (false)) = convertMaps(map1, map2, dstmap1type, dstmap1, dstmap2, nninterpolation)

function undistort(src::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, dst::InputArray, newCameraMatrix::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_undistort(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(newCameraMatrix)))
end
undistort(src::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; dst::InputArray = (CxxMat()), newCameraMatrix::InputArray = (CxxMat())) = undistort(src, cameraMatrix, distCoeffs, dst, newCameraMatrix)

function initUndistortRectifyMap(cameraMatrix::InputArray, distCoeffs::InputArray, R::InputArray, newCameraMatrix::InputArray, size::Size{Int32}, m1type::Int64, map1::InputArray, map2::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_initUndistortRectifyMap(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(newCameraMatrix),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
initUndistortRectifyMap(cameraMatrix::InputArray, distCoeffs::InputArray, R::InputArray, newCameraMatrix::InputArray, size::Size{Int32}, m1type::Int64; map1::InputArray = (CxxMat()), map2::InputArray = (CxxMat())) = initUndistortRectifyMap(cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1, map2)

function getRectSubPix(image::InputArray, patchSize::Size{Int32}, center::Point{Float32}, patch::InputArray, patchType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getRectSubPix(julia_to_cpp(image),julia_to_cpp(patchSize),julia_to_cpp(center),julia_to_cpp(patch),julia_to_cpp(patchType)))
end
getRectSubPix(image::InputArray, patchSize::Size{Int32}, center::Point{Float32}; patch::InputArray = (CxxMat()), patchType::Int64 = Int64(-1)) = getRectSubPix(image, patchSize, center, patch, patchType)

function warpPolar(src::InputArray, dsize::Size{Int32}, center::Point{Float32}, maxRadius::Float64, flags::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_warpPolar(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
warpPolar(src::InputArray, dsize::Size{Int32}, center::Point{Float32}, maxRadius::Float64, flags::Int64; dst::InputArray = (CxxMat())) = warpPolar(src, dsize, center, maxRadius, flags, dst)

function integral3(src::InputArray, sum::InputArray, sqsum::InputArray, tilted::InputArray, sdepth::Int64, sqdepth::Int64)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(tilted),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral3(src::InputArray; sum::InputArray = (CxxMat()), sqsum::InputArray = (CxxMat()), tilted::InputArray = (CxxMat()), sdepth::Int64 = Int64(-1), sqdepth::Int64 = Int64(-1)) = integral3(src, sum, sqsum, tilted, sdepth, sqdepth)

function integral(src::InputArray, sum::InputArray, sdepth::Int64)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sdepth)))
end
integral(src::InputArray; sum::InputArray = (CxxMat()), sdepth::Int64 = Int64(-1)) = integral(src, sum, sdepth)

function integral2(src::InputArray, sum::InputArray, sqsum::InputArray, sdepth::Int64, sqdepth::Int64)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral2(src::InputArray; sum::InputArray = (CxxMat()), sqsum::InputArray = (CxxMat()), sdepth::Int64 = Int64(-1), sqdepth::Int64 = Int64(-1)) = integral2(src, sum, sqsum, sdepth, sqdepth)

function accumulate(src::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_accumulate(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulate(src::InputArray, dst::InputArray; mask::InputArray = (CxxMat())) = accumulate(src, dst, mask)

function accumulateSquare(src::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_accumulateSquare(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateSquare(src::InputArray, dst::InputArray; mask::InputArray = (CxxMat())) = accumulateSquare(src, dst, mask)

function accumulateProduct(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_accumulateProduct(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateProduct(src1::InputArray, src2::InputArray, dst::InputArray; mask::InputArray = (CxxMat())) = accumulateProduct(src1, src2, dst, mask)

function accumulateWeighted(src::InputArray, dst::InputArray, alpha::Float64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_accumulateWeighted(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(mask)))
end
accumulateWeighted(src::InputArray, dst::InputArray, alpha::Float64; mask::InputArray = (CxxMat())) = accumulateWeighted(src, dst, alpha, mask)

function phaseCorrelate(src1::InputArray, src2::InputArray, window::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_phaseCorrelate(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(window)))
end
phaseCorrelate(src1::InputArray, src2::InputArray; window::InputArray = (CxxMat())) = phaseCorrelate(src1, src2, window)

function createHanningWindow(winSize::Size{Int32}, type::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_createHanningWindow(julia_to_cpp(winSize),julia_to_cpp(type),julia_to_cpp(dst)))
end
createHanningWindow(winSize::Size{Int32}, type::Int64; dst::InputArray = (CxxMat())) = createHanningWindow(winSize, type, dst)

function threshold(src::InputArray, thresh::Float64, maxval::Float64, type::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_threshold(julia_to_cpp(src),julia_to_cpp(thresh),julia_to_cpp(maxval),julia_to_cpp(type),julia_to_cpp(dst)))
end
threshold(src::InputArray, thresh::Float64, maxval::Float64, type::Int64; dst::InputArray = (CxxMat())) = threshold(src, thresh, maxval, type, dst)

function adaptiveThreshold(src::InputArray, maxValue::Float64, adaptiveMethod::Int64, thresholdType::Int64, blockSize::Int64, C::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_adaptiveThreshold(julia_to_cpp(src),julia_to_cpp(maxValue),julia_to_cpp(adaptiveMethod),julia_to_cpp(thresholdType),julia_to_cpp(blockSize),julia_to_cpp(C),julia_to_cpp(dst)))
end
adaptiveThreshold(src::InputArray, maxValue::Float64, adaptiveMethod::Int64, thresholdType::Int64, blockSize::Int64, C::Float64; dst::InputArray = (CxxMat())) = adaptiveThreshold(src, maxValue, adaptiveMethod, thresholdType, blockSize, C, dst)

function pyrDown(src::InputArray, dst::InputArray, dstsize::Size{Int32}, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_pyrDown(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrDown(src::InputArray; dst::InputArray = (CxxMat()), dstsize::Size{Int32} = (cpp_to_julia(SizeOP())), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = pyrDown(src, dst, dstsize, borderType)

function pyrUp(src::InputArray, dst::InputArray, dstsize::Size{Int32}, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_pyrUp(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrUp(src::InputArray; dst::InputArray = (CxxMat()), dstsize::Size{Int32} = (cpp_to_julia(SizeOP())), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = pyrUp(src, dst, dstsize, borderType)

function calcHist(images::AbstractVector{<:InputArray}, channels::Array{Int32, 1}, mask::InputArray, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}, hist::InputArray, accumulate::Bool)
	return cpp_to_julia(jlopencv_cv_cv_calcHist(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(mask),julia_to_cpp(histSize),julia_to_cpp(ranges),julia_to_cpp(hist),julia_to_cpp(accumulate)))
end
calcHist(images::AbstractVector{<:InputArray}, channels::Array{Int32, 1}, mask::InputArray, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}; hist::InputArray = (CxxMat()), accumulate::Bool = (false)) = calcHist(images, channels, mask, histSize, ranges, hist, accumulate)

function calcBackProject(images::AbstractVector{<:InputArray}, channels::Array{Int32, 1}, hist::InputArray, ranges::Array{Float32, 1}, scale::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_calcBackProject(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(hist),julia_to_cpp(ranges),julia_to_cpp(scale),julia_to_cpp(dst)))
end
calcBackProject(images::AbstractVector{<:InputArray}, channels::Array{Int32, 1}, hist::InputArray, ranges::Array{Float32, 1}, scale::Float64; dst::InputArray = (CxxMat())) = calcBackProject(images, channels, hist, ranges, scale, dst)

function compareHist(H1::InputArray, H2::InputArray, method::Int64)
	return cpp_to_julia(jlopencv_cv_cv_compareHist(julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(method)))
end

function equalizeHist(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_equalizeHist(julia_to_cpp(src),julia_to_cpp(dst)))
end
equalizeHist(src::InputArray; dst::InputArray = (CxxMat())) = equalizeHist(src, dst)

function createCLAHE(clipLimit::Float64, tileGridSize::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_createCLAHE(julia_to_cpp(clipLimit),julia_to_cpp(tileGridSize)))
end
createCLAHE(; clipLimit::Float64 = Float64(40.0), tileGridSize::Size{Int32} = (cpp_to_julia(SizeOeSGeP()))) = createCLAHE(clipLimit, tileGridSize)

function EMD(signature1::InputArray, signature2::InputArray, distType::Int64, cost::InputArray, lowerBound::Ptr{Float32}, flow::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_wrapperEMD(julia_to_cpp(signature1),julia_to_cpp(signature2),julia_to_cpp(distType),julia_to_cpp(cost),julia_to_cpp(lowerBound),julia_to_cpp(flow)))
end
EMD(signature1::InputArray, signature2::InputArray, distType::Int64; cost::InputArray = (CxxMat()), lowerBound::Ptr{Float32} = (cpp_to_julia(PtrifloatkOP())), flow::InputArray = (CxxMat())) = EMD(signature1, signature2, distType, cost, lowerBound, flow)

function watershed(image::InputArray, markers::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_watershed(julia_to_cpp(image),julia_to_cpp(markers)))
end

function pyrMeanShiftFiltering(src::InputArray, sp::Float64, sr::Float64, dst::InputArray, maxLevel::Int64, termcrit::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_pyrMeanShiftFiltering(julia_to_cpp(src),julia_to_cpp(sp),julia_to_cpp(sr),julia_to_cpp(dst),julia_to_cpp(maxLevel),julia_to_cpp(termcrit)))
end
pyrMeanShiftFiltering(src::InputArray, sp::Float64, sr::Float64; dst::InputArray = (CxxMat()), maxLevel::Int64 = Int64(1), termcrit::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggMAXRITERRTermCriteriaggEPSSbSXP()))) = pyrMeanShiftFiltering(src, sp, sr, dst, maxLevel, termcrit)

function grabCut(img::InputArray, mask::InputArray, rect::Rect{Int32}, bgdModel::InputArray, fgdModel::InputArray, iterCount::Int64, mode::Int64)
	return cpp_to_julia(jlopencv_cv_cv_grabCut(julia_to_cpp(img),julia_to_cpp(mask),julia_to_cpp(rect),julia_to_cpp(bgdModel),julia_to_cpp(fgdModel),julia_to_cpp(iterCount),julia_to_cpp(mode)))
end
grabCut(img::InputArray, mask::InputArray, rect::Rect{Int32}, bgdModel::InputArray, fgdModel::InputArray, iterCount::Int64; mode::Int64 = Int64(cv_GC_EVAL)) = grabCut(img, mask, rect, bgdModel, fgdModel, iterCount, mode)

function distanceTransformWithLabels(src::InputArray, distanceType::Int64, maskSize::Int64, dst::InputArray, labels::InputArray, labelType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(labels),julia_to_cpp(labelType)))
end
distanceTransformWithLabels(src::InputArray, distanceType::Int64, maskSize::Int64; dst::InputArray = (CxxMat()), labels::InputArray = (CxxMat()), labelType::Int64 = Int64(cv_DIST_LABEL_CCOMP)) = distanceTransformWithLabels(src, distanceType, maskSize, dst, labels, labelType)

function distanceTransform(src::InputArray, distanceType::Int64, maskSize::Int64, dst::InputArray, dstType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(dstType)))
end
distanceTransform(src::InputArray, distanceType::Int64, maskSize::Int64; dst::InputArray = (CxxMat()), dstType::Int64 = Int64(CV_32F)) = distanceTransform(src, distanceType, maskSize, dst, dstType)

function floodFill(image::InputArray, mask::InputArray, seedPoint::Point{Int32}, newVal::Scalar, loDiff::Scalar, upDiff::Scalar, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_floodFill(julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(seedPoint),julia_to_cpp(newVal),julia_to_cpp(loDiff),julia_to_cpp(upDiff),julia_to_cpp(flags)))
end
floodFill(image::InputArray, mask::InputArray, seedPoint::Point{Int32}, newVal::Scalar; loDiff::Scalar = (cpp_to_julia(ScalarOP())), upDiff::Scalar = (cpp_to_julia(ScalarOP())), flags::Int64 = Int64(4)) = floodFill(image, mask, seedPoint, newVal, loDiff, upDiff, flags)

function alphaComposite(overlay::InputArray, background::InputArray, dst::InputArray, op::Int64, premultiplied::Bool)
	return cpp_to_julia(jlopencv_cv_cv_alphaComposite(julia_to_cpp(overlay),julia_to_cpp(background),julia_to_cpp(dst),julia_to_cpp(op),julia_to_cpp(premultiplied)))
end
alphaComposite(overlay::InputArray, background::InputArray; dst::InputArray = (CxxMat()), op::Int64 = Int64(cpp_to_julia(jlopencv_default_ALPHARCOMPOSITEROVER())), premultiplied::Bool = (false)) = alphaComposite(overlay, background, dst, op, premultiplied)

function cvtColor(src::InputArray, code::Int64, dst::InputArray, dstCn::Int64, hint::AlgorithmHint)
	return cpp_to_julia(jlopencv_cv_cv_cvtColor(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn),julia_to_cpp(hint)))
end
cvtColor(src::InputArray, code::Int64; dst::InputArray = (CxxMat()), dstCn::Int64 = Int64(0), hint::AlgorithmHint = (cv_ALGO_HINT_DEFAULT)) = cvtColor(src, code, dst, dstCn, hint)

function cvtColorTwoPlane(src1::InputArray, src2::InputArray, code::Int64, dst::InputArray, hint::AlgorithmHint)
	return cpp_to_julia(jlopencv_cv_cv_cvtColorTwoPlane(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(hint)))
end
cvtColorTwoPlane(src1::InputArray, src2::InputArray, code::Int64; dst::InputArray = (CxxMat()), hint::AlgorithmHint = (cv_ALGO_HINT_DEFAULT)) = cvtColorTwoPlane(src1, src2, code, dst, hint)

function demosaicing(src::InputArray, code::Int64, dst::InputArray, dstCn::Int64)
	return cpp_to_julia(jlopencv_cv_cv_demosaicing(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
demosaicing(src::InputArray, code::Int64; dst::InputArray = (CxxMat()), dstCn::Int64 = Int64(0)) = demosaicing(src, code, dst, dstCn)

function matchTemplate(image::InputArray, templ::InputArray, method::Int64, result::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_matchTemplate(julia_to_cpp(image),julia_to_cpp(templ),julia_to_cpp(method),julia_to_cpp(result),julia_to_cpp(mask)))
end
matchTemplate(image::InputArray, templ::InputArray, method::Int64; result::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = matchTemplate(image, templ, method, result, mask)

function connectedComponentsWithAlgorithm(image::InputArray, connectivity::Int64, ltype::Int64, ccltype::Int64, labels::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels)))
end
connectedComponentsWithAlgorithm(image::InputArray, connectivity::Int64, ltype::Int64, ccltype::Int64; labels::InputArray = (CxxMat())) = connectedComponentsWithAlgorithm(image, connectivity, ltype, ccltype, labels)

function connectedComponents(image::InputArray, labels::InputArray, connectivity::Int64, ltype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponents(image::InputArray; labels::InputArray = (CxxMat()), connectivity::Int64 = Int64(8), ltype::Int64 = Int64(CV_32S)) = connectedComponents(image, labels, connectivity, ltype)

function connectedComponentsWithStatsWithAlgorithm(image::InputArray, connectivity::Int64, ltype::Int64, ccltype::Int64, labels::InputArray, stats::InputArray, centroids::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids)))
end
connectedComponentsWithStatsWithAlgorithm(image::InputArray, connectivity::Int64, ltype::Int64, ccltype::Int64; labels::InputArray = (CxxMat()), stats::InputArray = (CxxMat()), centroids::InputArray = (CxxMat())) = connectedComponentsWithStatsWithAlgorithm(image, connectivity, ltype, ccltype, labels, stats, centroids)

function connectedComponentsWithStats(image::InputArray, labels::InputArray, stats::InputArray, centroids::InputArray, connectivity::Int64, ltype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponentsWithStats(image::InputArray; labels::InputArray = (CxxMat()), stats::InputArray = (CxxMat()), centroids::InputArray = (CxxMat()), connectivity::Int64 = Int64(8), ltype::Int64 = Int64(CV_32S)) = connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype)

function findContours(image::InputArray, mode::Int64, method::Int64, contours::AbstractVector{<:InputArray}, hierarchy::InputArray, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_findContours(julia_to_cpp(image),julia_to_cpp(mode),julia_to_cpp(method),julia_to_cpp(contours),julia_to_cpp(hierarchy),julia_to_cpp(offset)))
end
findContours(image::InputArray, mode::Int64, method::Int64; contours::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), hierarchy::InputArray = (CxxMat()), offset::Point{Int32} = (cpp_to_julia(PointOP()))) = findContours(image, mode, method, contours, hierarchy, offset)

function createGeneralizedHoughBallard()
	return cpp_to_julia(jlopencv_cv_cv_createGeneralizedHoughBallard())
end

function createGeneralizedHoughGuil()
	return cpp_to_julia(jlopencv_cv_cv_createGeneralizedHoughGuil())
end

function applyColorMap(src::InputArray, colormap::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(colormap),julia_to_cpp(dst)))
end
applyColorMap(src::InputArray, colormap::Int64; dst::InputArray = (CxxMat())) = applyColorMap(src, colormap, dst)

function applyColorMap(src::InputArray, userColor::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(userColor),julia_to_cpp(dst)))
end
applyColorMap(src::InputArray, userColor::InputArray; dst::InputArray = (CxxMat())) = applyColorMap(src, userColor, dst)

function line(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int64, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_line(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
line(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = line(img, pt1, pt2, color, thickness, lineType, shift)

function arrowedLine(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int64, line_type::Int64, shift::Int64, tipLength::Float64)
	return cpp_to_julia(jlopencv_cv_cv_arrowedLine(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(line_type),julia_to_cpp(shift),julia_to_cpp(tipLength)))
end
arrowedLine(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int64 = Int64(1), line_type::Int64 = Int64(8), shift::Int64 = Int64(0), tipLength::Float64 = Float64(0.1)) = arrowedLine(img, pt1, pt2, color, thickness, line_type, shift, tipLength)

function drawFrameAxes(image::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, length::Float64, thickness::Int64)
	return cpp_to_julia(jlopencv_cv_cv_drawFrameAxes(julia_to_cpp(image),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(length),julia_to_cpp(thickness)))
end
drawFrameAxes(image::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, length::Float64; thickness::Int64 = Int64(3)) = drawFrameAxes(image, cameraMatrix, distCoeffs, rvec, tvec, length, thickness)

function rectangle(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int64, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = rectangle(img, pt1, pt2, color, thickness, lineType, shift)

function rectangle(img::InputArray, rec::Rect{Int32}, color::Scalar, thickness::Int64, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(rec),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::InputArray, rec::Rect{Int32}, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = rectangle(img, rec, color, thickness, lineType, shift)

function circle(img::InputArray, center::Point{Int32}, radius::Int64, color::Scalar, thickness::Int64, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_circle(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(radius),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
circle(img::InputArray, center::Point{Int32}, radius::Int64, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = circle(img, center, radius, color, thickness, lineType, shift)

function ellipse(img::InputArray, center::Point{Int32}, axes::Size{Int32}, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar, thickness::Int64, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(startAngle),julia_to_cpp(endAngle),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
ellipse(img::InputArray, center::Point{Int32}, axes::Size{Int32}, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = ellipse(img, center, axes, angle, startAngle, endAngle, color, thickness, lineType, shift)

function ellipse(img::InputArray, box::RotatedRect, color::Scalar, thickness::Int64, lineType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(box),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType)))
end
ellipse(img::InputArray, box::RotatedRect, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8)) = ellipse(img, box, color, thickness, lineType)

function drawMarker(img::InputArray, position::Point{Int32}, color::Scalar, markerType::Int64, markerSize::Int64, thickness::Int64, line_type::Int64)
	return cpp_to_julia(jlopencv_cv_cv_drawMarker(julia_to_cpp(img),julia_to_cpp(position),julia_to_cpp(color),julia_to_cpp(markerType),julia_to_cpp(markerSize),julia_to_cpp(thickness),julia_to_cpp(line_type)))
end
drawMarker(img::InputArray, position::Point{Int32}, color::Scalar; markerType::Int64 = Int64(cv_MARKER_CROSS), markerSize::Int64 = Int64(20), thickness::Int64 = Int64(1), line_type::Int64 = Int64(8)) = drawMarker(img, position, color, markerType, markerSize, thickness, line_type)

function fillConvexPoly(img::InputArray, points::InputArray, color::Scalar, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_fillConvexPoly(julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
fillConvexPoly(img::InputArray, points::InputArray, color::Scalar; lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = fillConvexPoly(img, points, color, lineType, shift)

function fillPoly(img::InputArray, pts::AbstractVector{<:InputArray}, color::Scalar, lineType::Int64, shift::Int64, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_fillPoly(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift),julia_to_cpp(offset)))
end
fillPoly(img::InputArray, pts::AbstractVector{<:InputArray}, color::Scalar; lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0), offset::Point{Int32} = (cpp_to_julia(PointOP()))) = fillPoly(img, pts, color, lineType, shift, offset)

function polylines(img::InputArray, pts::AbstractVector{<:InputArray}, isClosed::Bool, color::Scalar, thickness::Int64, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_polylines(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(isClosed),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
polylines(img::InputArray, pts::AbstractVector{<:InputArray}, isClosed::Bool, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = polylines(img, pts, isClosed, color, thickness, lineType, shift)

function drawContours(image::InputArray, contours::AbstractVector{<:InputArray}, contourIdx::Int64, color::Scalar, thickness::Int64, lineType::Int64, hierarchy::InputArray, maxLevel::Int64, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_drawContours(julia_to_cpp(image),julia_to_cpp(contours),julia_to_cpp(contourIdx),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(hierarchy),julia_to_cpp(maxLevel),julia_to_cpp(offset)))
end
drawContours(image::InputArray, contours::AbstractVector{<:InputArray}, contourIdx::Int64, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), hierarchy::InputArray = (CxxMat()), maxLevel::Int64 = Int64(typemax(Int32)), offset::Point{Int32} = (cpp_to_julia(PointOP()))) = drawContours(image, contours, contourIdx, color, thickness, lineType, hierarchy, maxLevel, offset)

function clipLine(imgRect::Rect{Int32}, pt1::Point{Int32}, pt2::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_clipLine(julia_to_cpp(imgRect),julia_to_cpp(pt1),julia_to_cpp(pt2)))
end

function ellipse2Poly(center::Point{Int32}, axes::Size{Int32}, angle::Int64, arcStart::Int64, arcEnd::Int64, delta::Int64)
	return cpp_to_julia(jlopencv_cv_cv_ellipse2Poly(julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(arcStart),julia_to_cpp(arcEnd),julia_to_cpp(delta)))
end

function putText(img::InputArray, text::String, org::Point{Int32}, fontFace::Int64, fontScale::Float64, color::Scalar, thickness::Int64, lineType::Int64, bottomLeftOrigin::Bool)
	return cpp_to_julia(jlopencv_cv_cv_putText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(bottomLeftOrigin)))
end
putText(img::InputArray, text::String, org::Point{Int32}, fontFace::Int64, fontScale::Float64, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), bottomLeftOrigin::Bool = (false)) = putText(img, text, org, fontFace, fontScale, color, thickness, lineType, bottomLeftOrigin)

function putText(img::InputArray, text::String, org::Point{Int32}, color::Scalar, fface::FontFace, size::Int64, weight::Int64, flags::PutTextFlags, wrap::Range)
	return cpp_to_julia(jlopencv_cv_cv_putText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(color),julia_to_cpp(fface),julia_to_cpp(size),julia_to_cpp(weight),julia_to_cpp(flags),julia_to_cpp(wrap)))
end
putText(img::InputArray, text::String, org::Point{Int32}, color::Scalar, fface::FontFace, size::Int64; weight::Int64 = Int64(0), flags::PutTextFlags = (cpp_to_julia(jlopencv_default_PUTRTEXTRALIGNRLEFT())), wrap::Range = (cpp_to_julia(RangeOP()))) = putText(img, text, org, color, fface, size, weight, flags, wrap)

function getTextSize(text::String, fontFace::Int64, fontScale::Float64, thickness::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getTextSize(julia_to_cpp(text),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(thickness)))
end

function getTextSize(imgsize::Size{Int32}, text::String, org::Point{Int32}, fface::FontFace, size::Int64, weight::Int64, flags::PutTextFlags, wrap::Range)
	return cpp_to_julia(jlopencv_cv_cv_getTextSize(julia_to_cpp(imgsize),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(fface),julia_to_cpp(size),julia_to_cpp(weight),julia_to_cpp(flags),julia_to_cpp(wrap)))
end
getTextSize(imgsize::Size{Int32}, text::String, org::Point{Int32}, fface::FontFace, size::Int64; weight::Int64 = Int64(0), flags::PutTextFlags = (cpp_to_julia(jlopencv_default_PUTRTEXTRALIGNRLEFT())), wrap::Range = (cpp_to_julia(RangeOP()))) = getTextSize(imgsize, text, org, fface, size, weight, flags, wrap)

function getFontScaleFromHeight(fontFace::Int64, pixelHeight::Int64, thickness::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getFontScaleFromHeight(julia_to_cpp(fontFace),julia_to_cpp(pixelHeight),julia_to_cpp(thickness)))
end
getFontScaleFromHeight(fontFace::Int64, pixelHeight::Int64; thickness::Int64 = Int64(1)) = getFontScaleFromHeight(fontFace, pixelHeight, thickness)

function FontFace_setBuiltinFont(fontName::String, fontPath::String)
	return cpp_to_julia(jlopencv_cv_cv_FontFace_setBuiltinFont(julia_to_cpp(fontName),julia_to_cpp(fontPath)))
end

function goodFeaturesToTrack(image::InputArray, maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, corners::InputArray, mask::InputArray, blockSize::Int64, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(corners),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::InputArray, maxCorners::Int64, qualityLevel::Float64, minDistance::Float64; corners::InputArray = (CxxMat()), mask::InputArray = (CxxMat()), blockSize::Int64 = Int64(3), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, corners, mask, blockSize, useHarrisDetector, k)

function goodFeaturesToTrack(image::InputArray, maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, mask::InputArray, blockSize::Int64, gradientSize::Int64, corners::InputArray, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(corners),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::InputArray, maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, mask::InputArray, blockSize::Int64, gradientSize::Int64; corners::InputArray = (CxxMat()), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, mask, blockSize, gradientSize, corners, useHarrisDetector, k)

function goodFeaturesToTrackWithQuality(image::InputArray, maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, mask::InputArray, corners::InputArray, cornersQuality::InputArray, blockSize::Int64, gradientSize::Int64, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(mask),julia_to_cpp(corners),julia_to_cpp(cornersQuality),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrackWithQuality(image::InputArray, maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, mask::InputArray; corners::InputArray = (CxxMat()), cornersQuality::InputArray = (CxxMat()), blockSize::Int64 = Int64(3), gradientSize::Int64 = Int64(3), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = goodFeaturesToTrackWithQuality(image, maxCorners, qualityLevel, minDistance, mask, corners, cornersQuality, blockSize, gradientSize, useHarrisDetector, k)

function AffineFeature_create(backend::cv_Ptr{<:Feature2D}, maxTilt::Int64, minTilt::Int64, tiltStep::Float64, rotateStepBase::Float64)
	return cpp_to_julia(jlopencv_cv_cv_AffineFeature_create(julia_to_cpp(backend),julia_to_cpp(maxTilt),julia_to_cpp(minTilt),julia_to_cpp(tiltStep),julia_to_cpp(rotateStepBase)))
end
AffineFeature_create(backend::cv_Ptr{<:Feature2D}; maxTilt::Int64 = Int64(5), minTilt::Int64 = Int64(0), tiltStep::Float64 = Float64(1.4142135623730951), rotateStepBase::Float64 = Float64(72)) = AffineFeature_create(backend, maxTilt, minTilt, tiltStep, rotateStepBase)

function SIFT_create(nfeatures::Int64, nOctaveLayers::Int64, contrastThreshold::Float64, edgeThreshold::Float64, sigma::Float64, enable_precise_upscale::Bool)
	return cpp_to_julia(jlopencv_cv_cv_SIFT_create(julia_to_cpp(nfeatures),julia_to_cpp(nOctaveLayers),julia_to_cpp(contrastThreshold),julia_to_cpp(edgeThreshold),julia_to_cpp(sigma),julia_to_cpp(enable_precise_upscale)))
end
SIFT_create(; nfeatures::Int64 = Int64(0), nOctaveLayers::Int64 = Int64(3), contrastThreshold::Float64 = Float64(0.04), edgeThreshold::Float64 = Float64(10), sigma::Float64 = Float64(1.6), enable_precise_upscale::Bool = (false)) = SIFT_create(nfeatures, nOctaveLayers, contrastThreshold, edgeThreshold, sigma, enable_precise_upscale)

function SIFT_create(nfeatures::Int64, nOctaveLayers::Int64, contrastThreshold::Float64, edgeThreshold::Float64, sigma::Float64, descriptorType::Int64, enable_precise_upscale::Bool)
	return cpp_to_julia(jlopencv_cv_cv_SIFT_create(julia_to_cpp(nfeatures),julia_to_cpp(nOctaveLayers),julia_to_cpp(contrastThreshold),julia_to_cpp(edgeThreshold),julia_to_cpp(sigma),julia_to_cpp(descriptorType),julia_to_cpp(enable_precise_upscale)))
end
SIFT_create(nfeatures::Int64, nOctaveLayers::Int64, contrastThreshold::Float64, edgeThreshold::Float64, sigma::Float64, descriptorType::Int64; enable_precise_upscale::Bool = (false)) = SIFT_create(nfeatures, nOctaveLayers, contrastThreshold, edgeThreshold, sigma, descriptorType, enable_precise_upscale)

function ORB_create(nfeatures::Int64, scaleFactor::Float64, nlevels::Int64, edgeThreshold::Int64, firstLevel::Int64, WTA_K::Int64, scoreType::ORB_ScoreType, patchSize::Int64, fastThreshold::Int64)
	return cpp_to_julia(jlopencv_cv_cv_ORB_create(julia_to_cpp(nfeatures),julia_to_cpp(scaleFactor),julia_to_cpp(nlevels),julia_to_cpp(edgeThreshold),julia_to_cpp(firstLevel),julia_to_cpp(WTA_K),julia_to_cpp(scoreType),julia_to_cpp(patchSize),julia_to_cpp(fastThreshold)))
end
ORB_create(; nfeatures::Int64 = Int64(500), scaleFactor::Float64 = Float64(1.2), nlevels::Int64 = Int64(8), edgeThreshold::Int64 = Int64(31), firstLevel::Int64 = Int64(0), WTA_K::Int64 = Int64(2), scoreType::ORB_ScoreType = (ORB_HARRIS_SCORE), patchSize::Int64 = Int64(31), fastThreshold::Int64 = Int64(20)) = ORB_create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, scoreType, patchSize, fastThreshold)

function MSER_create(delta::Int64, min_area::Int64, max_area::Int64, max_variation::Float64, min_diversity::Float64, max_evolution::Int64, area_threshold::Float64, min_margin::Float64, edge_blur_size::Int64)
	return cpp_to_julia(jlopencv_cv_cv_MSER_create(julia_to_cpp(delta),julia_to_cpp(min_area),julia_to_cpp(max_area),julia_to_cpp(max_variation),julia_to_cpp(min_diversity),julia_to_cpp(max_evolution),julia_to_cpp(area_threshold),julia_to_cpp(min_margin),julia_to_cpp(edge_blur_size)))
end
MSER_create(; delta::Int64 = Int64(5), min_area::Int64 = Int64(60), max_area::Int64 = Int64(14400), max_variation::Float64 = Float64(0.25), min_diversity::Float64 = Float64(.2), max_evolution::Int64 = Int64(200), area_threshold::Float64 = Float64(1.01), min_margin::Float64 = Float64(0.003), edge_blur_size::Int64 = Int64(5)) = MSER_create(delta, min_area, max_area, max_variation, min_diversity, max_evolution, area_threshold, min_margin, edge_blur_size)

function FastFeatureDetector_create(threshold::Int64, nonmaxSuppression::Bool, type::FastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_create(julia_to_cpp(threshold),julia_to_cpp(nonmaxSuppression),julia_to_cpp(type)))
end
FastFeatureDetector_create(; threshold::Int64 = Int64(10), nonmaxSuppression::Bool = (true), type::FastFeatureDetector_DetectorType = (cpp_to_julia(FastFeatureDetectorggTYPERfRXc()))) = FastFeatureDetector_create(threshold, nonmaxSuppression, type)

function GFTTDetector_create(maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, blockSize::Int64, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_create(julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
GFTTDetector_create(; maxCorners::Int64 = Int64(1000), qualityLevel::Float64 = Float64(0.01), minDistance::Float64 = Float64(1), blockSize::Int64 = Int64(3), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = GFTTDetector_create(maxCorners, qualityLevel, minDistance, blockSize, useHarrisDetector, k)

function GFTTDetector_create(maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, blockSize::Int64, gradientSize::Int64, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_create(julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
GFTTDetector_create(maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, blockSize::Int64, gradientSize::Int64; useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = GFTTDetector_create(maxCorners, qualityLevel, minDistance, blockSize, gradientSize, useHarrisDetector, k)

function DISK_create(modelPath::String, maxKeypoints::Int64, scoreThreshold::Float64, imageSize::Size{Int32}, backendId::Int64, targetId::Int64)
	return cpp_to_julia(jlopencv_cv_cv_DISK_create(julia_to_cpp(modelPath),julia_to_cpp(maxKeypoints),julia_to_cpp(scoreThreshold),julia_to_cpp(imageSize),julia_to_cpp(backendId),julia_to_cpp(targetId)))
end
DISK_create(modelPath::String; maxKeypoints::Int64 = Int64(-1), scoreThreshold::Float64 = Float64(0), imageSize::Size{Int32} = (cpp_to_julia(SizeOP())), backendId::Int64 = Int64(0), targetId::Int64 = Int64(0)) = DISK_create(modelPath, maxKeypoints, scoreThreshold, imageSize, backendId, targetId)

function DISK_createFromMemory(bufferModel::Array{UInt8, 1}, maxKeypoints::Int64, scoreThreshold::Float64, imageSize::Size{Int32}, backendId::Int64, targetId::Int64)
	return cpp_to_julia(jlopencv_cv_cv_DISK_create(julia_to_cpp(bufferModel),julia_to_cpp(maxKeypoints),julia_to_cpp(scoreThreshold),julia_to_cpp(imageSize),julia_to_cpp(backendId),julia_to_cpp(targetId)))
end
DISK_createFromMemory(bufferModel::Array{UInt8, 1}; maxKeypoints::Int64 = Int64(-1), scoreThreshold::Float64 = Float64(0), imageSize::Size{Int32} = (cpp_to_julia(SizeOP())), backendId::Int64 = Int64(0), targetId::Int64 = Int64(0)) = DISK_createFromMemory(bufferModel, maxKeypoints, scoreThreshold, imageSize, backendId, targetId)

function XFeat_create(modelPath::String, maxKeypoints::Int64, scoreThreshold::Float64, inputSize::Size{Int32}, backendId::Int64, targetId::Int64)
	return cpp_to_julia(jlopencv_cv_cv_XFeat_create(julia_to_cpp(modelPath),julia_to_cpp(maxKeypoints),julia_to_cpp(scoreThreshold),julia_to_cpp(inputSize),julia_to_cpp(backendId),julia_to_cpp(targetId)))
end
XFeat_create(modelPath::String; maxKeypoints::Int64 = Int64(-1), scoreThreshold::Float64 = Float64(0.5), inputSize::Size{Int32} = (cpp_to_julia(SizeOcaWSGcaWP())), backendId::Int64 = Int64(0), targetId::Int64 = Int64(0)) = XFeat_create(modelPath, maxKeypoints, scoreThreshold, inputSize, backendId, targetId)

function XFeat_createFromMemory(bufferModel::Array{UInt8, 1}, maxKeypoints::Int64, scoreThreshold::Float64, inputSize::Size{Int32}, backendId::Int64, targetId::Int64)
	return cpp_to_julia(jlopencv_cv_cv_XFeat_create(julia_to_cpp(bufferModel),julia_to_cpp(maxKeypoints),julia_to_cpp(scoreThreshold),julia_to_cpp(inputSize),julia_to_cpp(backendId),julia_to_cpp(targetId)))
end
XFeat_createFromMemory(bufferModel::Array{UInt8, 1}; maxKeypoints::Int64 = Int64(-1), scoreThreshold::Float64 = Float64(0.5), inputSize::Size{Int32} = (cpp_to_julia(SizeOcaWSGcaWP())), backendId::Int64 = Int64(0), targetId::Int64 = Int64(0)) = XFeat_createFromMemory(bufferModel, maxKeypoints, scoreThreshold, inputSize, backendId, targetId)

function SimpleBlobDetector_create(parameters::SimpleBlobDetector_Params)
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_create(julia_to_cpp(parameters)))
end
SimpleBlobDetector_create(; parameters::SimpleBlobDetector_Params = (SimpleBlobDetector_Params())) = SimpleBlobDetector_create(parameters)

function ALIKED_create(modelPath::String, params::ALIKED_Params)
	return cpp_to_julia(jlopencv_cv_cv_ALIKED_create(julia_to_cpp(modelPath),julia_to_cpp(params)))
end
ALIKED_create(modelPath::String; params::ALIKED_Params = (cpp_to_julia(ALIKEDggParamsOP()))) = ALIKED_create(modelPath, params)

function DescriptorMatcher_create(descriptorMatcherType::String)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_create(julia_to_cpp(descriptorMatcherType)))
end

function DescriptorMatcher_create(matcherType::DescriptorMatcher_MatcherType)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_create(julia_to_cpp(matcherType)))
end

function BFMatcher_create(normType::Int64, crossCheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_BFMatcher_create(julia_to_cpp(normType),julia_to_cpp(crossCheck)))
end
BFMatcher_create(; normType::Int64 = Int64(cv_NORM_L2), crossCheck::Bool = (false)) = BFMatcher_create(normType, crossCheck)

function FlannBasedMatcher_create()
	return cpp_to_julia(jlopencv_cv_cv_FlannBasedMatcher_create())
end

function LightGlueMatcher_create(modelPath::String, scoreThreshold::Float64, backend::Int64, target::Int64, type::Int64)
	return cpp_to_julia(jlopencv_cv_cv_LightGlueMatcher_create(julia_to_cpp(modelPath),julia_to_cpp(scoreThreshold),julia_to_cpp(backend),julia_to_cpp(target),julia_to_cpp(type)))
end
LightGlueMatcher_create(modelPath::String; scoreThreshold::Float64 = Float64(0), backend::Int64 = Int64(0), target::Int64 = Int64(0), type::Int64 = Int64(cpp_to_julia(jlopencv_default_LGRALIKED()))) = LightGlueMatcher_create(modelPath, scoreThreshold, backend, target, type)

function LightGlueMatcher_createFromMemory(modelData::Array{UInt8, 1}, scoreThreshold::Float64, backend::Int64, target::Int64, type::Int64)
	return cpp_to_julia(jlopencv_cv_cv_LightGlueMatcher_create(julia_to_cpp(modelData),julia_to_cpp(scoreThreshold),julia_to_cpp(backend),julia_to_cpp(target),julia_to_cpp(type)))
end
LightGlueMatcher_createFromMemory(modelData::Array{UInt8, 1}; scoreThreshold::Float64 = Float64(0), backend::Int64 = Int64(0), target::Int64 = Int64(0), type::Int64 = Int64(cpp_to_julia(jlopencv_default_LGRALIKED()))) = LightGlueMatcher_createFromMemory(modelData, scoreThreshold, backend, target, type)

function drawKeypoints(image::InputArray, keypoints::Array{KeyPoint, 1}, outImage::InputArray, color::Scalar, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawKeypoints(julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(outImage),julia_to_cpp(color),julia_to_cpp(flags)))
end
drawKeypoints(image::InputArray, keypoints::Array{KeyPoint, 1}, outImage::InputArray; color::Scalar = (cpp_to_julia(ScalarggallOTXP())), flags::DrawMatchesFlags = (cpp_to_julia(DrawMatchesFlagsggDEFAULT()))) = drawKeypoints(image, keypoints, outImage, color, flags)

function drawMatches(img1::InputArray, keypoints1::Array{KeyPoint, 1}, img2::InputArray, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::InputArray, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{Int8, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatches(img1::InputArray, keypoints1::Array{KeyPoint, 1}, img2::InputArray, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::InputArray; matchColor::Scalar = (cpp_to_julia(ScalarggallOTXP())), singlePointColor::Scalar = (cpp_to_julia(ScalarggallOTXP())), matchesMask::Array{Int8, 1} = (cpp_to_julia(stdggvectoricharkOP())), flags::DrawMatchesFlags = (cpp_to_julia(DrawMatchesFlagsggDEFAULT()))) = drawMatches(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function drawMatches(img1::InputArray, keypoints1::Array{KeyPoint, 1}, img2::InputArray, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::InputArray, matchesThickness::Int64, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{Int8, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchesThickness),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatches(img1::InputArray, keypoints1::Array{KeyPoint, 1}, img2::InputArray, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::InputArray, matchesThickness::Int64; matchColor::Scalar = (cpp_to_julia(ScalarggallOTXP())), singlePointColor::Scalar = (cpp_to_julia(ScalarggallOTXP())), matchesMask::Array{Int8, 1} = (cpp_to_julia(stdggvectoricharkOP())), flags::DrawMatchesFlags = (cpp_to_julia(DrawMatchesFlagsggDEFAULT()))) = drawMatches(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchesThickness, matchColor, singlePointColor, matchesMask, flags)

function drawMatchesKnn(img1::InputArray, keypoints1::Array{KeyPoint, 1}, img2::InputArray, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{Array{DMatch, 1}, 1}, outImg::InputArray, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{Array{Int8, 1}, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end
drawMatchesKnn(img1::InputArray, keypoints1::Array{KeyPoint, 1}, img2::InputArray, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{Array{DMatch, 1}, 1}, outImg::InputArray; matchColor::Scalar = (cpp_to_julia(ScalarggallOTXP())), singlePointColor::Scalar = (cpp_to_julia(ScalarggallOTXP())), matchesMask::Array{Array{Int8, 1}, 1} = (cpp_to_julia(stdggvectoristdggvectoricharkGkOP())), flags::DrawMatchesFlags = (cpp_to_julia(DrawMatchesFlagsggDEFAULT()))) = drawMatchesKnn(img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)

function ANNIndex_create(dim::Int64, distType::ANNIndex_Distance)
	return cpp_to_julia(jlopencv_cv_cv_ANNIndex_create(julia_to_cpp(dim),julia_to_cpp(distType)))
end
ANNIndex_create(dim::Int64; distType::ANNIndex_Distance = (cpp_to_julia(ANNIndexggDISTREUCLIDEAN()))) = ANNIndex_create(dim, distType)

function imread(filename::String, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_imread(julia_to_cpp(filename),julia_to_cpp(flags)))
end
imread(filename::String; flags::Int64 = Int64(cv_IMREAD_COLOR_BGR)) = imread(filename, flags)

function imread(filename::String, dst::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_imread(julia_to_cpp(filename),julia_to_cpp(dst),julia_to_cpp(flags)))
end

function imreadmulti(filename::String, mats::AbstractVector{<:InputArray}, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_imreadmulti(julia_to_cpp(filename),julia_to_cpp(mats),julia_to_cpp(flags)))
end
imreadmulti(filename::String; mats::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), flags::Int64 = Int64(cv_IMREAD_COLOR_BGR)) = imreadmulti(filename, mats, flags)

function imreadmulti(filename::String, start::Int64, count::Int64, mats::AbstractVector{<:InputArray}, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_imreadmulti(julia_to_cpp(filename),julia_to_cpp(start),julia_to_cpp(count),julia_to_cpp(mats),julia_to_cpp(flags)))
end
imreadmulti(filename::String, start::Int64, count::Int64; mats::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), flags::Int64 = Int64(cv_IMREAD_ANYCOLOR)) = imreadmulti(filename, start, count, mats, flags)

function imwrite(filename::String, img::InputArray, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imwrite(julia_to_cpp(filename),julia_to_cpp(img),julia_to_cpp(params)))
end
imwrite(filename::String, img::InputArray; params::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = imwrite(filename, img, params)

function imdecode(buf::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_imdecode(julia_to_cpp(buf),julia_to_cpp(flags)))
end

function imencode(ext::String, img::InputArray, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imencode(julia_to_cpp(ext),julia_to_cpp(img),julia_to_cpp(params)))
end
imencode(ext::String, img::InputArray; params::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = imencode(ext, img, params)

function haveImageReader(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_haveImageReader(julia_to_cpp(filename)))
end

function haveImageWriter(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_haveImageWriter(julia_to_cpp(filename)))
end

function VideoWriter_fourcc(c1::Char, c2::Char, c3::Char, c4::Char)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_fourcc(julia_to_cpp(c1),julia_to_cpp(c2),julia_to_cpp(c3),julia_to_cpp(c4)))
end

function Rodrigues(src::InputArray, dst::InputArray, jacobian::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_Rodrigues(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(jacobian)))
end
Rodrigues(src::InputArray; dst::InputArray = (CxxMat()), jacobian::InputArray = (CxxMat())) = Rodrigues(src, dst, jacobian)

function findHomography(srcPoints::InputArray, dstPoints::InputArray, method::Int64, ransacReprojThreshold::Float64, mask::InputArray, maxIters::Int64, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_findHomography(julia_to_cpp(srcPoints),julia_to_cpp(dstPoints),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(mask),julia_to_cpp(maxIters),julia_to_cpp(confidence)))
end
findHomography(srcPoints::InputArray, dstPoints::InputArray; method::Int64 = Int64(0), ransacReprojThreshold::Float64 = Float64(3), mask::InputArray = (CxxMat()), maxIters::Int64 = Int64(2000), confidence::Float64 = Float64(0.995)) = findHomography(srcPoints, dstPoints, method, ransacReprojThreshold, mask, maxIters, confidence)

function findHomography(srcPoints::InputArray, dstPoints::InputArray, params::UsacParams, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findHomography(julia_to_cpp(srcPoints),julia_to_cpp(dstPoints),julia_to_cpp(params),julia_to_cpp(mask)))
end
findHomography(srcPoints::InputArray, dstPoints::InputArray, params::UsacParams; mask::InputArray = (CxxMat())) = findHomography(srcPoints, dstPoints, params, mask)

function RQDecomp3x3(src::InputArray, mtxR::InputArray, mtxQ::InputArray, Qx::InputArray, Qy::InputArray, Qz::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_RQDecomp3x3(julia_to_cpp(src),julia_to_cpp(mtxR),julia_to_cpp(mtxQ),julia_to_cpp(Qx),julia_to_cpp(Qy),julia_to_cpp(Qz)))
end
RQDecomp3x3(src::InputArray; mtxR::InputArray = (CxxMat()), mtxQ::InputArray = (CxxMat()), Qx::InputArray = (CxxMat()), Qy::InputArray = (CxxMat()), Qz::InputArray = (CxxMat())) = RQDecomp3x3(src, mtxR, mtxQ, Qx, Qy, Qz)

function decomposeProjectionMatrix(projMatrix::InputArray, cameraMatrix::InputArray, rotMatrix::InputArray, transVect::InputArray, rotMatrixX::InputArray, rotMatrixY::InputArray, rotMatrixZ::InputArray, eulerAngles::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_decomposeProjectionMatrix(julia_to_cpp(projMatrix),julia_to_cpp(cameraMatrix),julia_to_cpp(rotMatrix),julia_to_cpp(transVect),julia_to_cpp(rotMatrixX),julia_to_cpp(rotMatrixY),julia_to_cpp(rotMatrixZ),julia_to_cpp(eulerAngles)))
end
decomposeProjectionMatrix(projMatrix::InputArray; cameraMatrix::InputArray = (CxxMat()), rotMatrix::InputArray = (CxxMat()), transVect::InputArray = (CxxMat()), rotMatrixX::InputArray = (CxxMat()), rotMatrixY::InputArray = (CxxMat()), rotMatrixZ::InputArray = (CxxMat()), eulerAngles::InputArray = (CxxMat())) = decomposeProjectionMatrix(projMatrix, cameraMatrix, rotMatrix, transVect, rotMatrixX, rotMatrixY, rotMatrixZ, eulerAngles)

function matMulDeriv(A::InputArray, B::InputArray, dABdA::InputArray, dABdB::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_matMulDeriv(julia_to_cpp(A),julia_to_cpp(B),julia_to_cpp(dABdA),julia_to_cpp(dABdB)))
end
matMulDeriv(A::InputArray, B::InputArray; dABdA::InputArray = (CxxMat()), dABdB::InputArray = (CxxMat())) = matMulDeriv(A, B, dABdA, dABdB)

function composeRT(rvec1::InputArray, tvec1::InputArray, rvec2::InputArray, tvec2::InputArray, rvec3::InputArray, tvec3::InputArray, dr3dr1::InputArray, dr3dt1::InputArray, dr3dr2::InputArray, dr3dt2::InputArray, dt3dr1::InputArray, dt3dt1::InputArray, dt3dr2::InputArray, dt3dt2::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_composeRT(julia_to_cpp(rvec1),julia_to_cpp(tvec1),julia_to_cpp(rvec2),julia_to_cpp(tvec2),julia_to_cpp(rvec3),julia_to_cpp(tvec3),julia_to_cpp(dr3dr1),julia_to_cpp(dr3dt1),julia_to_cpp(dr3dr2),julia_to_cpp(dr3dt2),julia_to_cpp(dt3dr1),julia_to_cpp(dt3dt1),julia_to_cpp(dt3dr2),julia_to_cpp(dt3dt2)))
end
composeRT(rvec1::InputArray, tvec1::InputArray, rvec2::InputArray, tvec2::InputArray; rvec3::InputArray = (CxxMat()), tvec3::InputArray = (CxxMat()), dr3dr1::InputArray = (CxxMat()), dr3dt1::InputArray = (CxxMat()), dr3dr2::InputArray = (CxxMat()), dr3dt2::InputArray = (CxxMat()), dt3dr1::InputArray = (CxxMat()), dt3dt1::InputArray = (CxxMat()), dt3dr2::InputArray = (CxxMat()), dt3dt2::InputArray = (CxxMat())) = composeRT(rvec1, tvec1, rvec2, tvec2, rvec3, tvec3, dr3dr1, dr3dt1, dr3dr2, dr3dt2, dt3dr1, dt3dt1, dt3dr2, dt3dt2)

function projectPoints(objectPoints::InputArray, rvec::InputArray, tvec::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, imagePoints::InputArray, jacobian::InputArray, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imagePoints),julia_to_cpp(jacobian),julia_to_cpp(aspectRatio)))
end
projectPoints(objectPoints::InputArray, rvec::InputArray, tvec::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; imagePoints::InputArray = (CxxMat()), jacobian::InputArray = (CxxMat()), aspectRatio::Float64 = Float64(0)) = projectPoints(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, imagePoints, jacobian, aspectRatio)

function projectPointsSepJ(objectPoints::InputArray, rvec::InputArray, tvec::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, imagePoints::InputArray, dpdr::InputArray, dpdt::InputArray, dpdf::InputArray, dpdc::InputArray, dpdk::InputArray, dpdo::InputArray, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imagePoints),julia_to_cpp(dpdr),julia_to_cpp(dpdt),julia_to_cpp(dpdf),julia_to_cpp(dpdc),julia_to_cpp(dpdk),julia_to_cpp(dpdo),julia_to_cpp(aspectRatio)))
end
projectPointsSepJ(objectPoints::InputArray, rvec::InputArray, tvec::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; imagePoints::InputArray = (CxxMat()), dpdr::InputArray = (CxxMat()), dpdt::InputArray = (CxxMat()), dpdf::InputArray = (CxxMat()), dpdc::InputArray = (CxxMat()), dpdk::InputArray = (CxxMat()), dpdo::InputArray = (CxxMat()), aspectRatio::Float64 = Float64(0.)) = projectPointsSepJ(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, imagePoints, dpdr, dpdt, dpdf, dpdc, dpdk, dpdo, aspectRatio)

function solvePnP(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, useExtrinsicGuess::Bool, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_solvePnP(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags)))
end
solvePnP(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; rvec::InputArray = (CxxMat()), tvec::InputArray = (CxxMat()), useExtrinsicGuess::Bool = (false), flags::Int64 = Int64(cv_SOLVEPNP_ITERATIVE)) = solvePnP(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, flags)

function solvePnPRansac(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, useExtrinsicGuess::Bool, iterationsCount::Int64, reprojectionError::Float64, confidence::Float64, inliers::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRansac(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(iterationsCount),julia_to_cpp(reprojectionError),julia_to_cpp(confidence),julia_to_cpp(inliers),julia_to_cpp(flags)))
end
solvePnPRansac(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; rvec::InputArray = (CxxMat()), tvec::InputArray = (CxxMat()), useExtrinsicGuess::Bool = (false), iterationsCount::Int64 = Int64(100), reprojectionError::Float64 = Float64(8.0), confidence::Float64 = Float64(0.99), inliers::InputArray = (CxxMat()), flags::Int64 = Int64(cv_SOLVEPNP_ITERATIVE)) = solvePnPRansac(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, iterationsCount, reprojectionError, confidence, inliers, flags)

function solvePnPRansac(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, inliers::InputArray, params::UsacParams)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRansac(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(inliers),julia_to_cpp(params)))
end

function solveP3P(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, flags::Int64, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_cv_solveP3P(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(flags),julia_to_cpp(rvecs),julia_to_cpp(tvecs)))
end
solveP3P(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, flags::Int64; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) = solveP3P(objectPoints, imagePoints, cameraMatrix, distCoeffs, flags, rvecs, tvecs)

function solvePnPRefineLM(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRefineLM(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria)))
end
solvePnPRefineLM(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray; criteria::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggEPSGRGTermCriteriaggCOUNTSGYWSGFLTREPSILONP()))) = solvePnPRefineLM(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria)

function solvePnPRefineVVS(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, criteria::TermCriteria, VVSlambda::Float64)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRefineVVS(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria),julia_to_cpp(VVSlambda)))
end
solvePnPRefineVVS(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray; criteria::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggEPSGRGTermCriteriaggCOUNTSGYWSGFLTREPSILONP())), VVSlambda::Float64 = Float64(1)) = solvePnPRefineVVS(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria, VVSlambda)

function solvePnPGeneric(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, useExtrinsicGuess::Bool, flags::Int64, rvec::InputArray, tvec::InputArray, reprojectionError::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPGeneric(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(reprojectionError)))
end
solvePnPGeneric(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), useExtrinsicGuess::Bool = (false), flags::Int64 = Int64(cv_SOLVEPNP_ITERATIVE), rvec::InputArray = (CxxMat()), tvec::InputArray = (CxxMat()), reprojectionError::InputArray = (CxxMat())) = solvePnPGeneric(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvecs, tvecs, useExtrinsicGuess, flags, rvec, tvec, reprojectionError)

function convertPointsToHomogeneous(src::InputArray, dst::InputArray, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_convertPointsToHomogeneous(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
convertPointsToHomogeneous(src::InputArray; dst::InputArray = (CxxMat()), dtype::Int64 = Int64(-1)) = convertPointsToHomogeneous(src, dst, dtype)

function convertPointsFromHomogeneous(src::InputArray, dst::InputArray, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_convertPointsFromHomogeneous(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
convertPointsFromHomogeneous(src::InputArray; dst::InputArray = (CxxMat()), dtype::Int64 = Int64(-1)) = convertPointsFromHomogeneous(src, dst, dtype)

function findFundamentalMat(points1::InputArray, points2::InputArray, method::Int64, ransacReprojThreshold::Float64, confidence::Float64, maxIters::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(maxIters),julia_to_cpp(mask)))
end
findFundamentalMat(points1::InputArray, points2::InputArray, method::Int64, ransacReprojThreshold::Float64, confidence::Float64, maxIters::Int64; mask::InputArray = (CxxMat())) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, maxIters, mask)

function findFundamentalMat(points1::InputArray, points2::InputArray, method::Int64, ransacReprojThreshold::Float64, confidence::Float64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(mask)))
end
findFundamentalMat(points1::InputArray, points2::InputArray; method::Int64 = Int64(cv_FM_RANSAC), ransacReprojThreshold::Float64 = Float64(3), confidence::Float64 = Float64(0.99), mask::InputArray = (CxxMat())) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, mask)

function findFundamentalMat(points1::InputArray, points2::InputArray, params::UsacParams, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(params),julia_to_cpp(mask)))
end
findFundamentalMat(points1::InputArray, points2::InputArray, params::UsacParams; mask::InputArray = (CxxMat())) = findFundamentalMat(points1, points2, params, mask)

function findEssentialMat(points1::InputArray, points2::InputArray, cameraMatrix::InputArray, method::Int64, prob::Float64, threshold::Float64, maxIters::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(maxIters),julia_to_cpp(mask)))
end
findEssentialMat(points1::InputArray, points2::InputArray, cameraMatrix::InputArray; method::Int64 = Int64(cv_RANSAC), prob::Float64 = Float64(0.999), threshold::Float64 = Float64(1.0), maxIters::Int64 = Int64(1000), mask::InputArray = (CxxMat())) = findEssentialMat(points1, points2, cameraMatrix, method, prob, threshold, maxIters, mask)

function findEssentialMat(points1::InputArray, points2::InputArray, focal::Float64, pp::Point{Float64}, method::Int64, prob::Float64, threshold::Float64, maxIters::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(maxIters),julia_to_cpp(mask)))
end
findEssentialMat(points1::InputArray, points2::InputArray; focal::Float64 = Float64(1.0), pp::Point{Float64} = (PointYdOWSGWP), method::Int64 = Int64(cv_RANSAC), prob::Float64 = Float64(0.999), threshold::Float64 = Float64(1.0), maxIters::Int64 = Int64(1000), mask::InputArray = (CxxMat())) = findEssentialMat(points1, points2, focal, pp, method, prob, threshold, maxIters, mask)

function findEssentialMat(points1::InputArray, points2::InputArray, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, method::Int64, prob::Float64, threshold::Float64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::InputArray, points2::InputArray, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray; method::Int64 = Int64(cv_RANSAC), prob::Float64 = Float64(0.999), threshold::Float64 = Float64(1.0), mask::InputArray = (CxxMat())) = findEssentialMat(points1, points2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, method, prob, threshold, mask)

function findEssentialMat(points1::InputArray, points2::InputArray, cameraMatrix1::InputArray, cameraMatrix2::InputArray, dist_coeff1::InputArray, dist_coeff2::InputArray, params::UsacParams, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix1),julia_to_cpp(cameraMatrix2),julia_to_cpp(dist_coeff1),julia_to_cpp(dist_coeff2),julia_to_cpp(params),julia_to_cpp(mask)))
end
findEssentialMat(points1::InputArray, points2::InputArray, cameraMatrix1::InputArray, cameraMatrix2::InputArray, dist_coeff1::InputArray, dist_coeff2::InputArray, params::UsacParams; mask::InputArray = (CxxMat())) = findEssentialMat(points1, points2, cameraMatrix1, cameraMatrix2, dist_coeff1, dist_coeff2, params, mask)

function decomposeEssentialMat(E::InputArray, R1::InputArray, R2::InputArray, t::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_decomposeEssentialMat(julia_to_cpp(E),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(t)))
end
decomposeEssentialMat(E::InputArray; R1::InputArray = (CxxMat()), R2::InputArray = (CxxMat()), t::InputArray = (CxxMat())) = decomposeEssentialMat(E, R1, R2, t)

function recoverPose(points1::InputArray, points2::InputArray, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, E::InputArray, R::InputArray, t::InputArray, method::Int64, prob::Float64, threshold::Float64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(E),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
recoverPose(points1::InputArray, points2::InputArray, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray; E::InputArray = (CxxMat()), R::InputArray = (CxxMat()), t::InputArray = (CxxMat()), method::Int64 = Int64(cv_RANSAC), prob::Float64 = Float64(0.999), threshold::Float64 = Float64(1.0), mask::InputArray = (CxxMat())) = recoverPose(points1, points2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, E, R, t, method, prob, threshold, mask)

function recoverPose(E::InputArray, points1::InputArray, points2::InputArray, cameraMatrix::InputArray, R::InputArray, t::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask)))
end
recoverPose(E::InputArray, points1::InputArray, points2::InputArray, cameraMatrix::InputArray; R::InputArray = (CxxMat()), t::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = recoverPose(E, points1, points2, cameraMatrix, R, t, mask)

function recoverPose(E::InputArray, points1::InputArray, points2::InputArray, R::InputArray, t::InputArray, focal::Float64, pp::Point{Float64}, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(mask)))
end
recoverPose(E::InputArray, points1::InputArray, points2::InputArray; R::InputArray = (CxxMat()), t::InputArray = (CxxMat()), focal::Float64 = Float64(1.0), pp::Point{Float64} = (PointYdOWSGWP), mask::InputArray = (CxxMat())) = recoverPose(E, points1, points2, R, t, focal, pp, mask)

function recoverPose(E::InputArray, points1::InputArray, points2::InputArray, cameraMatrix::InputArray, distanceThresh::Float64, R::InputArray, t::InputArray, mask::InputArray, triangulatedPoints::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(distanceThresh),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask),julia_to_cpp(triangulatedPoints)))
end
recoverPose(E::InputArray, points1::InputArray, points2::InputArray, cameraMatrix::InputArray, distanceThresh::Float64; R::InputArray = (CxxMat()), t::InputArray = (CxxMat()), mask::InputArray = (CxxMat()), triangulatedPoints::InputArray = (CxxMat())) = recoverPose(E, points1, points2, cameraMatrix, distanceThresh, R, t, mask, triangulatedPoints)

function computeCorrespondEpilines(points::InputArray, whichImage::Int64, F::InputArray, lines::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_computeCorrespondEpilines(julia_to_cpp(points),julia_to_cpp(whichImage),julia_to_cpp(F),julia_to_cpp(lines)))
end
computeCorrespondEpilines(points::InputArray, whichImage::Int64, F::InputArray; lines::InputArray = (CxxMat())) = computeCorrespondEpilines(points, whichImage, F, lines)

function triangulatePoints(projMatr1::InputArray, projMatr2::InputArray, projPoints1::InputArray, projPoints2::InputArray, points4D::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_triangulatePoints(julia_to_cpp(projMatr1),julia_to_cpp(projMatr2),julia_to_cpp(projPoints1),julia_to_cpp(projPoints2),julia_to_cpp(points4D)))
end
triangulatePoints(projMatr1::InputArray, projMatr2::InputArray, projPoints1::InputArray, projPoints2::InputArray; points4D::InputArray = (CxxMat())) = triangulatePoints(projMatr1, projMatr2, projPoints1, projPoints2, points4D)

function correctMatches(F::InputArray, points1::InputArray, points2::InputArray, newPoints1::InputArray, newPoints2::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_correctMatches(julia_to_cpp(F),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(newPoints1),julia_to_cpp(newPoints2)))
end
correctMatches(F::InputArray, points1::InputArray, points2::InputArray; newPoints1::InputArray = (CxxMat()), newPoints2::InputArray = (CxxMat())) = correctMatches(F, points1, points2, newPoints1, newPoints2)

function sampsonDistance(pt1::InputArray, pt2::InputArray, F::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sampsonDistance(julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(F)))
end

function estimateAffine3D(src::InputArray, dst::InputArray, out::InputArray, inliers::InputArray, ransacThreshold::Float64, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine3D(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(out),julia_to_cpp(inliers),julia_to_cpp(ransacThreshold),julia_to_cpp(confidence)))
end
estimateAffine3D(src::InputArray, dst::InputArray; out::InputArray = (CxxMat()), inliers::InputArray = (CxxMat()), ransacThreshold::Float64 = Float64(3), confidence::Float64 = Float64(0.99)) = estimateAffine3D(src, dst, out, inliers, ransacThreshold, confidence)

function estimateAffine3D(src::InputArray, dst::InputArray, force_rotation::Bool)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine3D(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(force_rotation)))
end

function estimateTranslation3D(src::InputArray, dst::InputArray, out::InputArray, inliers::InputArray, ransacThreshold::Float64, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_estimateTranslation3D(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(out),julia_to_cpp(inliers),julia_to_cpp(ransacThreshold),julia_to_cpp(confidence)))
end
estimateTranslation3D(src::InputArray, dst::InputArray; out::InputArray = (CxxMat()), inliers::InputArray = (CxxMat()), ransacThreshold::Float64 = Float64(3), confidence::Float64 = Float64(0.99)) = estimateTranslation3D(src, dst, out, inliers, ransacThreshold, confidence)

function estimateAffine2D(from::InputArray, to::InputArray, inliers::InputArray, method::Int64, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffine2D(from::InputArray, to::InputArray; inliers::InputArray = (CxxMat()), method::Int64 = Int64(cv_RANSAC), ransacReprojThreshold::Float64 = Float64(3), maxIters::size_t = (2000), confidence::Float64 = Float64(0.99), refineIters::size_t = (10)) = estimateAffine2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function estimateAffine2D(pts1::InputArray, pts2::InputArray, params::UsacParams, inliers::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine2D(julia_to_cpp(pts1),julia_to_cpp(pts2),julia_to_cpp(params),julia_to_cpp(inliers)))
end
estimateAffine2D(pts1::InputArray, pts2::InputArray, params::UsacParams; inliers::InputArray = (CxxMat())) = estimateAffine2D(pts1, pts2, params, inliers)

function estimateAffinePartial2D(from::InputArray, to::InputArray, inliers::InputArray, method::Int64, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffinePartial2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffinePartial2D(from::InputArray, to::InputArray; inliers::InputArray = (CxxMat()), method::Int64 = Int64(cv_RANSAC), ransacReprojThreshold::Float64 = Float64(3), maxIters::size_t = (2000), confidence::Float64 = Float64(0.99), refineIters::size_t = (10)) = estimateAffinePartial2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function decomposeHomographyMat(H::InputArray, K::InputArray, rotations::AbstractVector{<:InputArray}, translations::AbstractVector{<:InputArray}, normals::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_cv_decomposeHomographyMat(julia_to_cpp(H),julia_to_cpp(K),julia_to_cpp(rotations),julia_to_cpp(translations),julia_to_cpp(normals)))
end
decomposeHomographyMat(H::InputArray, K::InputArray; rotations::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), translations::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), normals::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) = decomposeHomographyMat(H, K, rotations, translations, normals)

function filterHomographyDecompByVisibleRefpoints(rotations::AbstractVector{<:InputArray}, normals::AbstractVector{<:InputArray}, beforePoints::InputArray, afterPoints::InputArray, possibleSolutions::InputArray, pointsMask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_filterHomographyDecompByVisibleRefpoints(julia_to_cpp(rotations),julia_to_cpp(normals),julia_to_cpp(beforePoints),julia_to_cpp(afterPoints),julia_to_cpp(possibleSolutions),julia_to_cpp(pointsMask)))
end
filterHomographyDecompByVisibleRefpoints(rotations::AbstractVector{<:InputArray}, normals::AbstractVector{<:InputArray}, beforePoints::InputArray, afterPoints::InputArray; possibleSolutions::InputArray = (CxxMat()), pointsMask::InputArray = (CxxMat())) = filterHomographyDecompByVisibleRefpoints(rotations, normals, beforePoints, afterPoints, possibleSolutions, pointsMask)

function calibrationMatrixValues(cameraMatrix::InputArray, imageSize::Size{Int32}, apertureWidth::Float64, apertureHeight::Float64)
	return cpp_to_julia(jlopencv_cv_cv_calibrationMatrixValues(julia_to_cpp(cameraMatrix),julia_to_cpp(imageSize),julia_to_cpp(apertureWidth),julia_to_cpp(apertureHeight)))
end

function getDefaultNewCameraMatrix(cameraMatrix::InputArray, imgsize::Size{Int32}, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_cv_getDefaultNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(imgsize),julia_to_cpp(centerPrincipalPoint)))
end
getDefaultNewCameraMatrix(cameraMatrix::InputArray; imgsize::Size{Int32} = (cpp_to_julia(SizeOP())), centerPrincipalPoint::Bool = (false)) = getDefaultNewCameraMatrix(cameraMatrix, imgsize, centerPrincipalPoint)

function getOptimalNewCameraMatrix(cameraMatrix::InputArray, distCoeffs::InputArray, imageSize::Size{Int32}, alpha::Float64, newImgSize::Size{Int32}, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_cv_getOptimalNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imageSize),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(centerPrincipalPoint)))
end
getOptimalNewCameraMatrix(cameraMatrix::InputArray, distCoeffs::InputArray, imageSize::Size{Int32}, alpha::Float64; newImgSize::Size{Int32} = (cpp_to_julia(SizeOP())), centerPrincipalPoint::Bool = (false)) = getOptimalNewCameraMatrix(cameraMatrix, distCoeffs, imageSize, alpha, newImgSize, centerPrincipalPoint)

function undistortPoints(src::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, dst::InputArray, R::InputArray, P::InputArray, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(criteria)))
end
undistortPoints(src::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; dst::InputArray = (CxxMat()), R::InputArray = (CxxMat()), P::InputArray = (CxxMat()), criteria::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggMAXRITERSGbSGWUWXP()))) = undistortPoints(src, cameraMatrix, distCoeffs, dst, R, P, criteria)

function approxPolyDP(curve::InputArray, epsilon::Float64, closed::Bool, approxCurve::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_approxPolyDP(julia_to_cpp(curve),julia_to_cpp(epsilon),julia_to_cpp(closed),julia_to_cpp(approxCurve)))
end
approxPolyDP(curve::InputArray, epsilon::Float64, closed::Bool; approxCurve::InputArray = (CxxMat())) = approxPolyDP(curve, epsilon, closed, approxCurve)

function minAreaRect(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_minAreaRect(julia_to_cpp(points)))
end

function boxPoints(box::RotatedRect, points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_boxPoints(julia_to_cpp(box),julia_to_cpp(points)))
end
boxPoints(box::RotatedRect; points::InputArray = (CxxMat())) = boxPoints(box, points)

function minEnclosingCircle(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingCircle(julia_to_cpp(points)))
end

function minEnclosingTriangle(points::InputArray, triangle::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingTriangle(julia_to_cpp(points),julia_to_cpp(triangle)))
end
minEnclosingTriangle(points::InputArray; triangle::InputArray = (CxxMat())) = minEnclosingTriangle(points, triangle)

function moments(array::InputArray, binaryImage::Bool)
	return cpp_to_julia(jlopencv_cv_cv_moments(julia_to_cpp(array),julia_to_cpp(binaryImage)))
end
moments(array::InputArray; binaryImage::Bool = (false)) = moments(array, binaryImage)

function HuMoments(m::Moments, hu::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_HuMoments(julia_to_cpp(m),julia_to_cpp(hu)))
end
HuMoments(m::Moments; hu::InputArray = (CxxMat())) = HuMoments(m, hu)

function matchShapes(contour1::InputArray, contour2::InputArray, method::Int64, parameter::Float64)
	return cpp_to_julia(jlopencv_cv_cv_matchShapes(julia_to_cpp(contour1),julia_to_cpp(contour2),julia_to_cpp(method),julia_to_cpp(parameter)))
end

function convexHull(points::InputArray, hull::InputArray, clockwise::Bool, returnPoints::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convexHull(julia_to_cpp(points),julia_to_cpp(hull),julia_to_cpp(clockwise),julia_to_cpp(returnPoints)))
end
convexHull(points::InputArray; hull::InputArray = (CxxMat()), clockwise::Bool = (false), returnPoints::Bool = (true)) = convexHull(points, hull, clockwise, returnPoints)

function convexityDefects(contour::InputArray, convexhull::InputArray, convexityDefects::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_convexityDefects(julia_to_cpp(contour),julia_to_cpp(convexhull),julia_to_cpp(convexityDefects)))
end
convexityDefects(contour::InputArray, convexhull::InputArray; convexityDefects::InputArray = (CxxMat())) = convexityDefects(contour, convexhull, convexityDefects)

function isContourConvex(contour::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_isContourConvex(julia_to_cpp(contour)))
end

function intersectConvexConvex(p1::InputArray, p2::InputArray, p12::InputArray, handleNested::Bool)
	return cpp_to_julia(jlopencv_cv_cv_intersectConvexConvex(julia_to_cpp(p1),julia_to_cpp(p2),julia_to_cpp(p12),julia_to_cpp(handleNested)))
end
intersectConvexConvex(p1::InputArray, p2::InputArray; p12::InputArray = (CxxMat()), handleNested::Bool = (true)) = intersectConvexConvex(p1, p2, p12, handleNested)

function fitEllipse(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipse(julia_to_cpp(points)))
end

function fitEllipseAMS(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseAMS(julia_to_cpp(points)))
end

function fitEllipseDirect(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseDirect(julia_to_cpp(points)))
end

function fitLine(points::InputArray, distType::Int64, param::Float64, reps::Float64, aeps::Float64, line::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_fitLine(julia_to_cpp(points),julia_to_cpp(distType),julia_to_cpp(param),julia_to_cpp(reps),julia_to_cpp(aeps),julia_to_cpp(line)))
end
fitLine(points::InputArray, distType::Int64, param::Float64, reps::Float64, aeps::Float64; line::InputArray = (CxxMat())) = fitLine(points, distType, param, reps, aeps, line)

function pointPolygonTest(contour::InputArray, pt::Point{Float32}, measureDist::Bool)
	return cpp_to_julia(jlopencv_cv_cv_pointPolygonTest(julia_to_cpp(contour),julia_to_cpp(pt),julia_to_cpp(measureDist)))
end

function rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect, intersectingRegion::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_rotatedRectangleIntersection(julia_to_cpp(rect1),julia_to_cpp(rect2),julia_to_cpp(intersectingRegion)))
end
rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect; intersectingRegion::InputArray = (CxxMat())) = rotatedRectangleIntersection(rect1, rect2, intersectingRegion)

function arcLength(curve::InputArray, closed::Bool)
	return cpp_to_julia(jlopencv_cv_cv_arcLength(julia_to_cpp(curve),julia_to_cpp(closed)))
end

function contourArea(contour::InputArray, oriented::Bool)
	return cpp_to_julia(jlopencv_cv_cv_contourArea(julia_to_cpp(contour),julia_to_cpp(oriented)))
end
contourArea(contour::InputArray; oriented::Bool = (false)) = contourArea(contour, oriented)

function boundingRect(array::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_boundingRect(julia_to_cpp(array)))
end

function getRotationMatrix2D(center::Point{Float32}, angle::Float64, scale::Float64)
	return cpp_to_julia(jlopencv_cv_cv_getRotationMatrix2D(julia_to_cpp(center),julia_to_cpp(angle),julia_to_cpp(scale)))
end

function invertAffineTransform(M::InputArray, iM::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_invertAffineTransform(julia_to_cpp(M),julia_to_cpp(iM)))
end
invertAffineTransform(M::InputArray; iM::InputArray = (CxxMat())) = invertAffineTransform(M, iM)

function getPerspectiveTransform(src::InputArray, dst::InputArray, solveMethod::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getPerspectiveTransform(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(solveMethod)))
end
getPerspectiveTransform(src::InputArray, dst::InputArray; solveMethod::Int64 = Int64(cv_DECOMP_LU)) = getPerspectiveTransform(src, dst, solveMethod)

function getAffineTransform(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_getAffineTransform(julia_to_cpp(src),julia_to_cpp(dst)))
end

function stereoRectify(cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray, R1::InputArray, R2::InputArray, P1::InputArray, P2::InputArray, Q::InputArray, flags::Int64, alpha::Float64, newImageSize::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_stereoRectify(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(flags),julia_to_cpp(alpha),julia_to_cpp(newImageSize)))
end
stereoRectify(cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray; R1::InputArray = (CxxMat()), R2::InputArray = (CxxMat()), P1::InputArray = (CxxMat()), P2::InputArray = (CxxMat()), Q::InputArray = (CxxMat()), flags::Int64 = Int64(cpp_to_julia(jlopencv_default_STEREORZERORDISPARITY())), alpha::Float64 = Float64(-1), newImageSize::Size{Int32} = (cpp_to_julia(SizeOP()))) = stereoRectify(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, R1, R2, P1, P2, Q, flags, alpha, newImageSize)

function stereoRectifyUncalibrated(points1::InputArray, points2::InputArray, F::InputArray, imgSize::Size{Int32}, H1::InputArray, H2::InputArray, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_stereoRectifyUncalibrated(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(F),julia_to_cpp(imgSize),julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(threshold)))
end
stereoRectifyUncalibrated(points1::InputArray, points2::InputArray, F::InputArray, imgSize::Size{Int32}; H1::InputArray = (CxxMat()), H2::InputArray = (CxxMat()), threshold::Float64 = Float64(5)) = stereoRectifyUncalibrated(points1, points2, F, imgSize, H1, H2, threshold)

function StereoBM_create(numDisparities::Int64, blockSize::Int64)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_create(julia_to_cpp(numDisparities),julia_to_cpp(blockSize)))
end
StereoBM_create(; numDisparities::Int64 = Int64(0), blockSize::Int64 = Int64(21)) = StereoBM_create(numDisparities, blockSize)

function StereoSGBM_create(minDisparity::Int64, numDisparities::Int64, blockSize::Int64, P1::Int64, P2::Int64, disp12MaxDiff::Int64, preFilterCap::Int64, uniquenessRatio::Int64, speckleWindowSize::Int64, speckleRange::Int64, mode::Int64)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_create(julia_to_cpp(minDisparity),julia_to_cpp(numDisparities),julia_to_cpp(blockSize),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(disp12MaxDiff),julia_to_cpp(preFilterCap),julia_to_cpp(uniquenessRatio),julia_to_cpp(speckleWindowSize),julia_to_cpp(speckleRange),julia_to_cpp(mode)))
end
StereoSGBM_create(; minDisparity::Int64 = Int64(0), numDisparities::Int64 = Int64(16), blockSize::Int64 = Int64(3), P1::Int64 = Int64(0), P2::Int64 = Int64(0), disp12MaxDiff::Int64 = Int64(0), preFilterCap::Int64 = Int64(0), uniquenessRatio::Int64 = Int64(0), speckleWindowSize::Int64 = Int64(0), speckleRange::Int64 = Int64(0), mode::Int64 = Int64(StereoSGBMggMODERSGBM)) = StereoSGBM_create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio, speckleWindowSize, speckleRange, mode)

function filterSpeckles(img::InputArray, newVal::Float64, maxSpeckleSize::Int64, maxDiff::Float64, buf::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_filterSpeckles(julia_to_cpp(img),julia_to_cpp(newVal),julia_to_cpp(maxSpeckleSize),julia_to_cpp(maxDiff),julia_to_cpp(buf)))
end
filterSpeckles(img::InputArray, newVal::Float64, maxSpeckleSize::Int64, maxDiff::Float64; buf::InputArray = (CxxMat())) = filterSpeckles(img, newVal, maxSpeckleSize, maxDiff, buf)

function getValidDisparityROI(roi1::Rect{Int32}, roi2::Rect{Int32}, minDisparity::Int64, numberOfDisparities::Int64, blockSize::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getValidDisparityROI(julia_to_cpp(roi1),julia_to_cpp(roi2),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(blockSize)))
end

function validateDisparity(disparity::InputArray, cost::InputArray, minDisparity::Int64, numberOfDisparities::Int64, disp12MaxDisp::Int64)
	return cpp_to_julia(jlopencv_cv_cv_validateDisparity(julia_to_cpp(disparity),julia_to_cpp(cost),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(disp12MaxDisp)))
end
validateDisparity(disparity::InputArray, cost::InputArray, minDisparity::Int64, numberOfDisparities::Int64; disp12MaxDisp::Int64 = Int64(1)) = validateDisparity(disparity, cost, minDisparity, numberOfDisparities, disp12MaxDisp)

function reprojectImageTo3D(disparity::InputArray, Q::InputArray, _3dImage::InputArray, handleMissingValues::Bool, ddepth::Int64)
	return cpp_to_julia(jlopencv_cv_cv_reprojectImageTo3D(julia_to_cpp(disparity),julia_to_cpp(Q),julia_to_cpp(_3dImage),julia_to_cpp(handleMissingValues),julia_to_cpp(ddepth)))
end
reprojectImageTo3D(disparity::InputArray, Q::InputArray; _3dImage::InputArray = (CxxMat()), handleMissingValues::Bool = (false), ddepth::Int64 = Int64(-1)) = reprojectImageTo3D(disparity, Q, _3dImage, handleMissingValues, ddepth)

function initCameraMatrix2D(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_initCameraMatrix2D(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(aspectRatio)))
end
initCameraMatrix2D(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}; aspectRatio::Float64 = Float64(1.0)) = initCameraMatrix2D(objectPoints, imagePoints, imageSize, aspectRatio)

function calibrateCameraExtended(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, cameraMatrix::InputArray, distCoeffs::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, stdDeviationsIntrinsics::InputArray, stdDeviationsExtrinsics::InputArray, perViewErrors::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraExtended(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, cameraMatrix::InputArray, distCoeffs::InputArray; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), stdDeviationsIntrinsics::InputArray = (CxxMat()), stdDeviationsExtrinsics::InputArray = (CxxMat()), perViewErrors::InputArray = (CxxMat()), flags::Int64 = Int64(0), criteria::TermCriteria = (cpp_to_julia(TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGbWWSGDBLREPSILONP()))) = calibrateCameraExtended(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, stdDeviationsIntrinsics, stdDeviationsExtrinsics, perViewErrors, flags, criteria)

function calibrateCamera(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, cameraMatrix::InputArray, distCoeffs::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCamera(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, cameraMatrix::InputArray, distCoeffs::InputArray; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), flags::Int64 = Int64(0), criteria::TermCriteria = (cpp_to_julia(TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGbWWSGDBLREPSILONP()))) = calibrateCamera(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, flags, criteria)

function calibrateCameraROExtended(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, iFixedPoint::Int64, cameraMatrix::InputArray, distCoeffs::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, newObjPoints::InputArray, stdDeviationsIntrinsics::InputArray, stdDeviationsExtrinsics::InputArray, stdDeviationsObjPoints::InputArray, perViewErrors::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(newObjPoints),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(stdDeviationsObjPoints),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraROExtended(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, iFixedPoint::Int64, cameraMatrix::InputArray, distCoeffs::InputArray; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), newObjPoints::InputArray = (CxxMat()), stdDeviationsIntrinsics::InputArray = (CxxMat()), stdDeviationsExtrinsics::InputArray = (CxxMat()), stdDeviationsObjPoints::InputArray = (CxxMat()), perViewErrors::InputArray = (CxxMat()), flags::Int64 = Int64(0), criteria::TermCriteria = (cpp_to_julia(TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGbWWSGDBLREPSILONP()))) = calibrateCameraROExtended(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, stdDeviationsIntrinsics, stdDeviationsExtrinsics, stdDeviationsObjPoints, perViewErrors, flags, criteria)

function calibrateCameraRO(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, iFixedPoint::Int64, cameraMatrix::InputArray, distCoeffs::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, newObjPoints::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(newObjPoints),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraRO(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, iFixedPoint::Int64, cameraMatrix::InputArray, distCoeffs::InputArray; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), newObjPoints::InputArray = (CxxMat()), flags::Int64 = Int64(0), criteria::TermCriteria = (cpp_to_julia(TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGbWWSGDBLREPSILONP()))) = calibrateCameraRO(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, flags, criteria)

function stereoCalibrateExtended(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray, E::InputArray, F::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, perViewErrors::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrateExtended(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray; E::InputArray = (CxxMat()), F::InputArray = (CxxMat()), rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), perViewErrors::InputArray = (CxxMat()), flags::Int64 = Int64(cv_CALIB_FIX_INTRINSIC), criteria::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGXWWSGXeTcP()))) = stereoCalibrateExtended(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, rvecs, tvecs, perViewErrors, flags, criteria)

function stereoCalibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray, E::InputArray, F::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}; R::InputArray = (CxxMat()), T::InputArray = (CxxMat()), E::InputArray = (CxxMat()), F::InputArray = (CxxMat()), flags::Int64 = Int64(cv_CALIB_FIX_INTRINSIC), criteria::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGXWWSGXeTcP()))) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, flags, criteria)

function stereoCalibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray, E::InputArray, F::InputArray, perViewErrors::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray; E::InputArray = (CxxMat()), F::InputArray = (CxxMat()), perViewErrors::InputArray = (CxxMat()), flags::Int64 = Int64(cv_CALIB_FIX_INTRINSIC), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGXeTcP)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, perViewErrors, flags, criteria)

function registerCamerasExtended(objectPoints1::AbstractVector{<:InputArray}, objectPoints2::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraModel1::CameraModel, cameraMatrix2::InputArray, distCoeffs2::InputArray, cameraModel2::CameraModel, R::InputArray, T::InputArray, E::InputArray, F::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, perViewErrors::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_registerCameras(julia_to_cpp(objectPoints1),julia_to_cpp(objectPoints2),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraModel1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(cameraModel2),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
registerCamerasExtended(objectPoints1::AbstractVector{<:InputArray}, objectPoints2::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraModel1::CameraModel, cameraMatrix2::InputArray, distCoeffs2::InputArray, cameraModel2::CameraModel, R::InputArray, T::InputArray; E::InputArray = (CxxMat()), F::InputArray = (CxxMat()), rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), perViewErrors::InputArray = (CxxMat()), flags::Int64 = Int64(0), criteria::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGXWWSGXeTcP()))) = registerCamerasExtended(objectPoints1, objectPoints2, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraModel1, cameraMatrix2, distCoeffs2, cameraModel2, R, T, E, F, rvecs, tvecs, perViewErrors, flags, criteria)

function registerCameras(objectPoints1::AbstractVector{<:InputArray}, objectPoints2::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraModel1::CameraModel, cameraMatrix2::InputArray, distCoeffs2::InputArray, cameraModel2::CameraModel, R::InputArray, T::InputArray, E::InputArray, F::InputArray, perViewErrors::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_registerCameras(julia_to_cpp(objectPoints1),julia_to_cpp(objectPoints2),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraModel1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(cameraModel2),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
registerCameras(objectPoints1::AbstractVector{<:InputArray}, objectPoints2::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraModel1::CameraModel, cameraMatrix2::InputArray, distCoeffs2::InputArray, cameraModel2::CameraModel, R::InputArray, T::InputArray; E::InputArray = (CxxMat()), F::InputArray = (CxxMat()), perViewErrors::InputArray = (CxxMat()), flags::Int64 = Int64(0), criteria::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGXWWSGXeTcP()))) = registerCameras(objectPoints1, objectPoints2, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraModel1, cameraMatrix2, distCoeffs2, cameraModel2, R, T, E, F, perViewErrors, flags, criteria)

function calibrateMultiviewExtended(objPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:AbstractVector{<:InputArray}}, imageSize::Array{Size{Int32}, 1}, detectionMask::InputArray, models::InputArray, Ks::AbstractVector{<:InputArray}, distortions::AbstractVector{<:InputArray}, Rs::AbstractVector{<:InputArray}, Ts::AbstractVector{<:InputArray}, initializationPairs::InputArray, rvecs0::AbstractVector{<:InputArray}, tvecs0::AbstractVector{<:InputArray}, perFrameErrors::InputArray, flagsForIntrinsics::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateMultiview(julia_to_cpp(objPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(detectionMask),julia_to_cpp(models),julia_to_cpp(Ks),julia_to_cpp(distortions),julia_to_cpp(Rs),julia_to_cpp(Ts),julia_to_cpp(initializationPairs),julia_to_cpp(rvecs0),julia_to_cpp(tvecs0),julia_to_cpp(perFrameErrors),julia_to_cpp(flagsForIntrinsics),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateMultiviewExtended(objPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:AbstractVector{<:InputArray}}, imageSize::Array{Size{Int32}, 1}, detectionMask::InputArray, models::InputArray, Ks::AbstractVector{<:InputArray}, distortions::AbstractVector{<:InputArray}, Rs::AbstractVector{<:InputArray}, Ts::AbstractVector{<:InputArray}; initializationPairs::InputArray = (CxxMat()), rvecs0::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs0::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), perFrameErrors::InputArray = (CxxMat()), flagsForIntrinsics::InputArray = (CxxMat()), flags::Int64 = Int64(0), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTGRGTermCriteriaggEPSSGXWWSGDBLREPSILONP)) = calibrateMultiviewExtended(objPoints, imagePoints, imageSize, detectionMask, models, Ks, distortions, Rs, Ts, initializationPairs, rvecs0, tvecs0, perFrameErrors, flagsForIntrinsics, flags, criteria)

function calibrateMultiview(objPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:AbstractVector{<:InputArray}}, imageSize::Array{Size{Int32}, 1}, detectionMask::InputArray, models::InputArray, Ks::AbstractVector{<:InputArray}, distortions::AbstractVector{<:InputArray}, Rs::AbstractVector{<:InputArray}, Ts::AbstractVector{<:InputArray}, flagsForIntrinsics::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateMultiview(julia_to_cpp(objPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(detectionMask),julia_to_cpp(models),julia_to_cpp(Ks),julia_to_cpp(distortions),julia_to_cpp(Rs),julia_to_cpp(Ts),julia_to_cpp(flagsForIntrinsics),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateMultiview(objPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:AbstractVector{<:InputArray}}, imageSize::Array{Size{Int32}, 1}, detectionMask::InputArray, models::InputArray, Ks::AbstractVector{<:InputArray}, distortions::AbstractVector{<:InputArray}, Rs::AbstractVector{<:InputArray}, Ts::AbstractVector{<:InputArray}; flagsForIntrinsics::InputArray = (CxxMat()), flags::Int64 = Int64(0), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTGRGTermCriteriaggEPSSGXWWSGDBLREPSILONP)) = calibrateMultiview(objPoints, imagePoints, imageSize, detectionMask, models, Ks, distortions, Rs, Ts, flagsForIntrinsics, flags, criteria)

function calibrateHandEye(R_gripper2base::AbstractVector{<:InputArray}, t_gripper2base::AbstractVector{<:InputArray}, R_target2cam::AbstractVector{<:InputArray}, t_target2cam::AbstractVector{<:InputArray}, R_cam2gripper::InputArray, t_cam2gripper::InputArray, method::HandEyeCalibrationMethod)
	return cpp_to_julia(jlopencv_cv_cv_calibrateHandEye(julia_to_cpp(R_gripper2base),julia_to_cpp(t_gripper2base),julia_to_cpp(R_target2cam),julia_to_cpp(t_target2cam),julia_to_cpp(R_cam2gripper),julia_to_cpp(t_cam2gripper),julia_to_cpp(method)))
end
calibrateHandEye(R_gripper2base::AbstractVector{<:InputArray}, t_gripper2base::AbstractVector{<:InputArray}, R_target2cam::AbstractVector{<:InputArray}, t_target2cam::AbstractVector{<:InputArray}; R_cam2gripper::InputArray = (CxxMat()), t_cam2gripper::InputArray = (CxxMat()), method::HandEyeCalibrationMethod = (cv_CALIB_HAND_EYE_TSAI)) = calibrateHandEye(R_gripper2base, t_gripper2base, R_target2cam, t_target2cam, R_cam2gripper, t_cam2gripper, method)

function namedWindow(winname::String, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_namedWindow(julia_to_cpp(winname),julia_to_cpp(flags)))
end
namedWindow(winname::String; flags::Int64 = Int64(cv_WINDOW_AUTOSIZE)) = namedWindow(winname, flags)

function destroyWindow(winname::String)
	return cpp_to_julia(jlopencv_cv_cv_destroyWindow(julia_to_cpp(winname)))
end

function destroyAllWindows()
	return cpp_to_julia(jlopencv_cv_cv_destroyAllWindows())
end

function startWindowThread()
	return cpp_to_julia(jlopencv_cv_cv_startWindowThread())
end

function waitKeyEx(delay::Int64)
	return cpp_to_julia(jlopencv_cv_cv_waitKeyEx(julia_to_cpp(delay)))
end
waitKeyEx(; delay::Int64 = Int64(0)) = waitKeyEx(delay)

function waitKey(delay::Int64)
	return cpp_to_julia(jlopencv_cv_cv_waitKey(julia_to_cpp(delay)))
end
waitKey(; delay::Int64 = Int64(0)) = waitKey(delay)

function imshow(winname::String, mat::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_imshow(julia_to_cpp(winname),julia_to_cpp(mat)))
end

function resizeWindow(winname::String, width::Int64, height::Int64)
	return cpp_to_julia(jlopencv_cv_cv_resizeWindow(julia_to_cpp(winname),julia_to_cpp(width),julia_to_cpp(height)))
end

function resizeWindow(winname::String, size::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_resizeWindow(julia_to_cpp(winname),julia_to_cpp(size)))
end

function moveWindow(winname::String, x::Int64, y::Int64)
	return cpp_to_julia(jlopencv_cv_cv_moveWindow(julia_to_cpp(winname),julia_to_cpp(x),julia_to_cpp(y)))
end

function setWindowProperty(winname::String, prop_id::Int64, prop_value::Float64)
	return cpp_to_julia(jlopencv_cv_cv_setWindowProperty(julia_to_cpp(winname),julia_to_cpp(prop_id),julia_to_cpp(prop_value)))
end

function setWindowTitle(winname::String, title::String)
	return cpp_to_julia(jlopencv_cv_cv_setWindowTitle(julia_to_cpp(winname),julia_to_cpp(title)))
end

function getWindowProperty(winname::String, prop_id::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getWindowProperty(julia_to_cpp(winname),julia_to_cpp(prop_id)))
end

function getWindowImageRect(winname::String)
	return cpp_to_julia(jlopencv_cv_cv_getWindowImageRect(julia_to_cpp(winname)))
end

function selectROI(windowName::String, img::InputArray, showCrosshair::Bool, fromCenter::Bool, printNotice::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter),julia_to_cpp(printNotice)))
end
selectROI(windowName::String, img::InputArray; showCrosshair::Bool = (true), fromCenter::Bool = (false), printNotice::Bool = (true)) = selectROI(windowName, img, showCrosshair, fromCenter, printNotice)

function selectROI(img::InputArray, showCrosshair::Bool, fromCenter::Bool, printNotice::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter),julia_to_cpp(printNotice)))
end
selectROI(img::InputArray; showCrosshair::Bool = (true), fromCenter::Bool = (false), printNotice::Bool = (true)) = selectROI(img, showCrosshair, fromCenter, printNotice)

function selectROIs(windowName::String, img::InputArray, showCrosshair::Bool, fromCenter::Bool, printNotice::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROIs(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter),julia_to_cpp(printNotice)))
end
selectROIs(windowName::String, img::InputArray; showCrosshair::Bool = (true), fromCenter::Bool = (false), printNotice::Bool = (true)) = selectROIs(windowName, img, showCrosshair, fromCenter, printNotice)

function getTrackbarPos(trackbarname::String, winname::String)
	return cpp_to_julia(jlopencv_cv_cv_getTrackbarPos(julia_to_cpp(trackbarname),julia_to_cpp(winname)))
end

function setTrackbarPos(trackbarname::String, winname::String, pos::Int64)
	return cpp_to_julia(jlopencv_cv_cv_setTrackbarPos(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(pos)))
end

function setTrackbarMax(trackbarname::String, winname::String, maxval::Int64)
	return cpp_to_julia(jlopencv_cv_cv_setTrackbarMax(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(maxval)))
end

function setTrackbarMin(trackbarname::String, winname::String, minval::Int64)
	return cpp_to_julia(jlopencv_cv_cv_setTrackbarMin(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(minval)))
end

function addText(img::InputArray, text::String, org::Point{Int32}, nameFont::String, pointSize::Int64, color::Scalar, weight::Int64, style::Int64, spacing::Int64)
	return cpp_to_julia(jlopencv_cv_cv_addText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(nameFont),julia_to_cpp(pointSize),julia_to_cpp(color),julia_to_cpp(weight),julia_to_cpp(style),julia_to_cpp(spacing)))
end
addText(img::InputArray, text::String, org::Point{Int32}, nameFont::String; pointSize::Int64 = Int64(-1), color::Scalar = (cpp_to_julia(ScalarggallOWP())), weight::Int64 = Int64(cv_QT_FONT_NORMAL), style::Int64 = Int64(cv_QT_STYLE_NORMAL), spacing::Int64 = Int64(0)) = addText(img, text, org, nameFont, pointSize, color, weight, style, spacing)

function displayOverlay(winname::String, text::String, delayms::Int64)
	return cpp_to_julia(jlopencv_cv_cv_displayOverlay(julia_to_cpp(winname),julia_to_cpp(text),julia_to_cpp(delayms)))
end
displayOverlay(winname::String, text::String; delayms::Int64 = Int64(0)) = displayOverlay(winname, text, delayms)

function displayStatusBar(winname::String, text::String, delayms::Int64)
	return cpp_to_julia(jlopencv_cv_cv_displayStatusBar(julia_to_cpp(winname),julia_to_cpp(text),julia_to_cpp(delayms)))
end
displayStatusBar(winname::String, text::String; delayms::Int64 = Int64(0)) = displayStatusBar(winname, text, delayms)

function saveWindowParameters(windowName::String)
	return cpp_to_julia(jlopencv_cv_cv_saveWindowParameters(julia_to_cpp(windowName)))
end

function loadWindowParameters(windowName::String)
	return cpp_to_julia(jlopencv_cv_cv_loadWindowParameters(julia_to_cpp(windowName)))
end

function QRCodeEncoder_create(parameters::QRCodeEncoder_Params)
	return cpp_to_julia(jlopencv_cv_cv_QRCodeEncoder_create(julia_to_cpp(parameters)))
end
QRCodeEncoder_create(; parameters::QRCodeEncoder_Params = (cpp_to_julia(QRCodeEncoderggParamsOP()))) = QRCodeEncoder_create(parameters)

function findChessboardCorners(image::InputArray, patternSize::Size{Int32}, corners::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCorners(image::InputArray, patternSize::Size{Int32}; corners::InputArray = (CxxMat()), flags::Int64 = Int64(cv_CALIB_CB_ADAPTIVE_THRESH + cv_CALIB_CB_NORMALIZE_IMAGE)) = findChessboardCorners(image, patternSize, corners, flags)

function checkChessboard(img::InputArray, size::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_checkChessboard(julia_to_cpp(img),julia_to_cpp(size)))
end

function findChessboardCornersSBWithMeta(image::InputArray, patternSize::Size{Int32}, flags::Int64, corners::InputArray, meta::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(corners),julia_to_cpp(meta)))
end
findChessboardCornersSBWithMeta(image::InputArray, patternSize::Size{Int32}, flags::Int64; corners::InputArray = (CxxMat()), meta::InputArray = (CxxMat())) = findChessboardCornersSBWithMeta(image, patternSize, flags, corners, meta)

function findChessboardCornersSB(image::InputArray, patternSize::Size{Int32}, corners::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCornersSB(image::InputArray, patternSize::Size{Int32}; corners::InputArray = (CxxMat()), flags::Int64 = Int64(0)) = findChessboardCornersSB(image, patternSize, corners, flags)

function estimateChessboardSharpness(image::InputArray, patternSize::Size{Int32}, corners::InputArray, rise_distance::Float64, vertical::Bool, sharpness::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_estimateChessboardSharpness(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(rise_distance),julia_to_cpp(vertical),julia_to_cpp(sharpness)))
end
estimateChessboardSharpness(image::InputArray, patternSize::Size{Int32}, corners::InputArray; rise_distance::Float64 = Float64(0.8), vertical::Bool = (false), sharpness::InputArray = (CxxMat())) = estimateChessboardSharpness(image, patternSize, corners, rise_distance, vertical, sharpness)

function find4QuadCornerSubpix(img::InputArray, corners::InputArray, region_size::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_find4QuadCornerSubpix(julia_to_cpp(img),julia_to_cpp(corners),julia_to_cpp(region_size)))
end

function drawChessboardCorners(image::InputArray, patternSize::Size{Int32}, corners::InputArray, patternWasFound::Bool)
	return cpp_to_julia(jlopencv_cv_cv_drawChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(patternWasFound)))
end

function findCirclesGrid(image::InputArray, patternSize::Size{Int32}, flags::Int64, blobDetector::cv_Ptr{<:Feature2D}, parameters::CirclesGridFinderParameters, centers::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(blobDetector),julia_to_cpp(parameters),julia_to_cpp(centers)))
end
findCirclesGrid(image::InputArray, patternSize::Size{Int32}, flags::Int64, blobDetector::cv_Ptr{<:Feature2D}, parameters::CirclesGridFinderParameters; centers::InputArray = (CxxMat())) = findCirclesGrid(image, patternSize, flags, blobDetector, parameters, centers)

function findCirclesGrid(image::InputArray, patternSize::Size{Int32}, centers::InputArray, flags::Int64, blobDetector::cv_Ptr{<:Feature2D})
	return cpp_to_julia(jlopencv_cv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(centers),julia_to_cpp(flags),julia_to_cpp(blobDetector)))
end
findCirclesGrid(image::InputArray, patternSize::Size{Int32}; centers::InputArray = (CxxMat()), flags::Int64 = Int64(cv_CALIB_CB_SYMMETRIC_GRID), blobDetector::cv_Ptr{<:Feature2D} = (cpp_to_julia(cvggSimpleBlobDetectorggcreateOP()))) = findCirclesGrid(image, patternSize, centers, flags, blobDetector)

function FaceDetectorYN_create(model::String, config::String, input_size::Size{Int32}, score_threshold::Float64, nms_threshold::Float64, top_k::Int64, backend_id::Int64, target_id::Int64)
	return cpp_to_julia(jlopencv_cv_cv_FaceDetectorYN_create(julia_to_cpp(model),julia_to_cpp(config),julia_to_cpp(input_size),julia_to_cpp(score_threshold),julia_to_cpp(nms_threshold),julia_to_cpp(top_k),julia_to_cpp(backend_id),julia_to_cpp(target_id)))
end
FaceDetectorYN_create(model::String, config::String, input_size::Size{Int32}; score_threshold::Float64 = Float64(0.9), nms_threshold::Float64 = Float64(0.3), top_k::Int64 = Int64(5000), backend_id::Int64 = Int64(0), target_id::Int64 = Int64(0)) = FaceDetectorYN_create(model, config, input_size, score_threshold, nms_threshold, top_k, backend_id, target_id)

function FaceDetectorYN_create(framework::String, bufferModel::Array{UInt8, 1}, bufferConfig::Array{UInt8, 1}, input_size::Size{Int32}, score_threshold::Float64, nms_threshold::Float64, top_k::Int64, backend_id::Int64, target_id::Int64)
	return cpp_to_julia(jlopencv_cv_cv_FaceDetectorYN_create(julia_to_cpp(framework),julia_to_cpp(bufferModel),julia_to_cpp(bufferConfig),julia_to_cpp(input_size),julia_to_cpp(score_threshold),julia_to_cpp(nms_threshold),julia_to_cpp(top_k),julia_to_cpp(backend_id),julia_to_cpp(target_id)))
end
FaceDetectorYN_create(framework::String, bufferModel::Array{UInt8, 1}, bufferConfig::Array{UInt8, 1}, input_size::Size{Int32}; score_threshold::Float64 = Float64(0.9), nms_threshold::Float64 = Float64(0.3), top_k::Int64 = Int64(5000), backend_id::Int64 = Int64(0), target_id::Int64 = Int64(0)) = FaceDetectorYN_create(framework, bufferModel, bufferConfig, input_size, score_threshold, nms_threshold, top_k, backend_id, target_id)

function FaceRecognizerSF_create(model::String, config::String, backend_id::Int64, target_id::Int64)
	return cpp_to_julia(jlopencv_cv_cv_FaceRecognizerSF_create(julia_to_cpp(model),julia_to_cpp(config),julia_to_cpp(backend_id),julia_to_cpp(target_id)))
end
FaceRecognizerSF_create(model::String, config::String; backend_id::Int64 = Int64(0), target_id::Int64 = Int64(0)) = FaceRecognizerSF_create(model, config, backend_id, target_id)

function FaceRecognizerSF_create(framework::String, bufferModel::Array{UInt8, 1}, bufferConfig::Array{UInt8, 1}, backend_id::Int64, target_id::Int64)
	return cpp_to_julia(jlopencv_cv_cv_FaceRecognizerSF_create(julia_to_cpp(framework),julia_to_cpp(bufferModel),julia_to_cpp(bufferConfig),julia_to_cpp(backend_id),julia_to_cpp(target_id)))
end
FaceRecognizerSF_create(framework::String, bufferModel::Array{UInt8, 1}, bufferConfig::Array{UInt8, 1}; backend_id::Int64 = Int64(0), target_id::Int64 = Int64(0)) = FaceRecognizerSF_create(framework, bufferModel, bufferConfig, backend_id, target_id)

function Stitcher_create(mode::Stitcher_Mode)
	return cpp_to_julia(jlopencv_cv_cv_Stitcher_create(julia_to_cpp(mode)))
end
Stitcher_create(; mode::Stitcher_Mode = (cpp_to_julia(StitcherggPANORAMA()))) = Stitcher_create(mode)

function CamShift(probImage::InputArray, window::Rect{Int32}, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_CamShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end

function meanShift(probImage::InputArray, window::Rect{Int32}, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_meanShift(julia_to_cpp(probImage),julia_to_cpp(window),julia_to_cpp(criteria)))
end

function buildOpticalFlowPyramid(img::InputArray, winSize::Size{Int32}, maxLevel::Int64, pyramid::AbstractVector{<:InputArray}, withDerivatives::Bool, pyrBorder::Int64, derivBorder::Int64, tryReuseInputImage::Bool)
	return cpp_to_julia(jlopencv_cv_cv_buildOpticalFlowPyramid(julia_to_cpp(img),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(pyramid),julia_to_cpp(withDerivatives),julia_to_cpp(pyrBorder),julia_to_cpp(derivBorder),julia_to_cpp(tryReuseInputImage)))
end
buildOpticalFlowPyramid(img::InputArray, winSize::Size{Int32}, maxLevel::Int64; pyramid::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), withDerivatives::Bool = (true), pyrBorder::Int64 = Int64(cpp_to_julia(jlopencv_default_BORDERRREFLECTRXWX())), derivBorder::Int64 = Int64(cv_BORDER_CONSTANT), tryReuseInputImage::Bool = (true)) = buildOpticalFlowPyramid(img, winSize, maxLevel, pyramid, withDerivatives, pyrBorder, derivBorder, tryReuseInputImage)

function calcOpticalFlowPyrLK(prevImg::InputArray, nextImg::InputArray, prevPts::InputArray, nextPts::InputArray, status::InputArray, err::InputArray, winSize::Size{Int32}, maxLevel::Int64, criteria::TermCriteria, flags::Int64, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_calcOpticalFlowPyrLK(julia_to_cpp(prevImg),julia_to_cpp(nextImg),julia_to_cpp(prevPts),julia_to_cpp(nextPts),julia_to_cpp(status),julia_to_cpp(err),julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(criteria),julia_to_cpp(flags),julia_to_cpp(minEigThreshold)))
end
calcOpticalFlowPyrLK(prevImg::InputArray, nextImg::InputArray, prevPts::InputArray, nextPts::InputArray; status::InputArray = (CxxMat()), err::InputArray = (CxxMat()), winSize::Size{Int32} = (cpp_to_julia(SizeOYXSYXP())), maxLevel::Int64 = Int64(3), criteria::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGWUWXP())), flags::Int64 = Int64(0), minEigThreshold::Float64 = Float64(1e-4)) = calcOpticalFlowPyrLK(prevImg, nextImg, prevPts, nextPts, status, err, winSize, maxLevel, criteria, flags, minEigThreshold)

function calcOpticalFlowFarneback(prev::InputArray, next::InputArray, flow::InputArray, pyr_scale::Float64, levels::Int64, winsize::Int64, iterations::Int64, poly_n::Int64, poly_sigma::Float64, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_calcOpticalFlowFarneback(julia_to_cpp(prev),julia_to_cpp(next),julia_to_cpp(flow),julia_to_cpp(pyr_scale),julia_to_cpp(levels),julia_to_cpp(winsize),julia_to_cpp(iterations),julia_to_cpp(poly_n),julia_to_cpp(poly_sigma),julia_to_cpp(flags)))
end

function computeECC(templateImage::InputArray, inputImage::InputArray, inputMask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_computeECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(inputMask)))
end
computeECC(templateImage::InputArray, inputImage::InputArray; inputMask::InputArray = (CxxMat())) = computeECC(templateImage, inputImage, inputMask)

function findTransformECC(templateImage::InputArray, inputImage::InputArray, warpMatrix::InputArray, motionType::Int64, criteria::TermCriteria, inputMask::InputArray, gaussFiltSize::Int64)
	return cpp_to_julia(jlopencv_cv_cv_findTransformECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(warpMatrix),julia_to_cpp(motionType),julia_to_cpp(criteria),julia_to_cpp(inputMask),julia_to_cpp(gaussFiltSize)))
end

function findTransformECC(templateImage::InputArray, inputImage::InputArray, warpMatrix::InputArray, motionType::Int64, criteria::TermCriteria, inputMask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findTransformECC(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(warpMatrix),julia_to_cpp(motionType),julia_to_cpp(criteria),julia_to_cpp(inputMask)))
end
findTransformECC(templateImage::InputArray, inputImage::InputArray, warpMatrix::InputArray; motionType::Int64 = Int64(cpp_to_julia(jlopencv_default_MOTIONRAFFINE())), criteria::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGbWSGWUWWXP())), inputMask::InputArray = (CxxMat())) = findTransformECC(templateImage, inputImage, warpMatrix, motionType, criteria, inputMask)

function findTransformECCWithMask(templateImage::InputArray, inputImage::InputArray, templateMask::InputArray, inputMask::InputArray, warpMatrix::InputArray, motionType::Int64, criteria::TermCriteria, gaussFiltSize::Int64)
	return cpp_to_julia(jlopencv_cv_cv_findTransformECCWithMask(julia_to_cpp(templateImage),julia_to_cpp(inputImage),julia_to_cpp(templateMask),julia_to_cpp(inputMask),julia_to_cpp(warpMatrix),julia_to_cpp(motionType),julia_to_cpp(criteria),julia_to_cpp(gaussFiltSize)))
end
findTransformECCWithMask(templateImage::InputArray, inputImage::InputArray, templateMask::InputArray, inputMask::InputArray, warpMatrix::InputArray; motionType::Int64 = Int64(cpp_to_julia(jlopencv_default_MOTIONRAFFINE())), criteria::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggCOUNTGRGTermCriteriaggEPSSGbWSGXeTcP())), gaussFiltSize::Int64 = Int64(5)) = findTransformECCWithMask(templateImage, inputImage, templateMask, inputMask, warpMatrix, motionType, criteria, gaussFiltSize)

function findTransformECCMultiScale(reference::InputArray, sample::InputArray, warpMatrix::InputArray, eccParams::ECCParameters, referenceMask::InputArray, sampleMask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findTransformECCMultiScale(julia_to_cpp(reference),julia_to_cpp(sample),julia_to_cpp(warpMatrix),julia_to_cpp(eccParams),julia_to_cpp(referenceMask),julia_to_cpp(sampleMask)))
end
findTransformECCMultiScale(reference::InputArray, sample::InputArray, warpMatrix::InputArray; eccParams::ECCParameters = (cpp_to_julia(ECCParametersOP())), referenceMask::InputArray = (CxxMat()), sampleMask::InputArray = (CxxMat())) = findTransformECCMultiScale(reference, sample, warpMatrix, eccParams, referenceMask, sampleMask)

function readOpticalFlow(path::String)
	return cpp_to_julia(jlopencv_cv_cv_readOpticalFlow(julia_to_cpp(path)))
end

function writeOpticalFlow(path::String, flow::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_writeOpticalFlow(julia_to_cpp(path),julia_to_cpp(flow)))
end

function FarnebackOpticalFlow_create(numLevels::Int64, pyrScale::Float64, fastPyramids::Bool, winSize::Int64, numIters::Int64, polyN::Int64, polySigma::Float64, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_FarnebackOpticalFlow_create(julia_to_cpp(numLevels),julia_to_cpp(pyrScale),julia_to_cpp(fastPyramids),julia_to_cpp(winSize),julia_to_cpp(numIters),julia_to_cpp(polyN),julia_to_cpp(polySigma),julia_to_cpp(flags)))
end
FarnebackOpticalFlow_create(; numLevels::Int64 = Int64(5), pyrScale::Float64 = Float64(0.5), fastPyramids::Bool = (false), winSize::Int64 = Int64(13), numIters::Int64 = Int64(10), polyN::Int64 = Int64(5), polySigma::Float64 = Float64(1.1), flags::Int64 = Int64(0)) = FarnebackOpticalFlow_create(numLevels, pyrScale, fastPyramids, winSize, numIters, polyN, polySigma, flags)

function VariationalRefinement_create()
	return cpp_to_julia(jlopencv_cv_cv_VariationalRefinement_create())
end

function DISOpticalFlow_create(preset::Int64)
	return cpp_to_julia(jlopencv_cv_cv_DISOpticalFlow_create(julia_to_cpp(preset)))
end
DISOpticalFlow_create(; preset::Int64 = Int64(cpp_to_julia(DISOpticalFlowggPRESETRFAST()))) = DISOpticalFlow_create(preset)

function SparsePyrLKOpticalFlow_create(winSize::Size{Int32}, maxLevel::Int64, crit::TermCriteria, flags::Int64, minEigThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_SparsePyrLKOpticalFlow_create(julia_to_cpp(winSize),julia_to_cpp(maxLevel),julia_to_cpp(crit),julia_to_cpp(flags),julia_to_cpp(minEigThreshold)))
end
SparsePyrLKOpticalFlow_create(; winSize::Size{Int32} = (cpp_to_julia(SizeOYXSGYXP())), maxLevel::Int64 = Int64(3), crit::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGWUWXP())), flags::Int64 = Int64(0), minEigThreshold::Float64 = Float64(1e-4)) = SparsePyrLKOpticalFlow_create(winSize, maxLevel, crit, flags, minEigThreshold)

function TrackerMIL_create(parameters::TrackerMIL_Params)
	return cpp_to_julia(jlopencv_cv_cv_TrackerMIL_create(julia_to_cpp(parameters)))
end
TrackerMIL_create(; parameters::TrackerMIL_Params = (cpp_to_julia(TrackerMILggParamsOP()))) = TrackerMIL_create(parameters)

function TrackerDaSiamRPN_create(parameters::TrackerDaSiamRPN_Params)
	return cpp_to_julia(jlopencv_cv_cv_TrackerDaSiamRPN_create(julia_to_cpp(parameters)))
end
TrackerDaSiamRPN_create(; parameters::TrackerDaSiamRPN_Params = (cpp_to_julia(TrackerDaSiamRPNggParamsOP()))) = TrackerDaSiamRPN_create(parameters)

function TrackerDaSiamRPN_create(siam_rpn::Net, kernel_cls1::Net, kernel_r1::Net)
	return cpp_to_julia(jlopencv_cv_cv_TrackerDaSiamRPN_create(julia_to_cpp(siam_rpn),julia_to_cpp(kernel_cls1),julia_to_cpp(kernel_r1)))
end

function TrackerNano_create(parameters::TrackerNano_Params)
	return cpp_to_julia(jlopencv_cv_cv_TrackerNano_create(julia_to_cpp(parameters)))
end
TrackerNano_create(; parameters::TrackerNano_Params = (cpp_to_julia(TrackerNanoggParamsOP()))) = TrackerNano_create(parameters)

function TrackerNano_create(backbone::Net, neckhead::Net)
	return cpp_to_julia(jlopencv_cv_cv_TrackerNano_create(julia_to_cpp(backbone),julia_to_cpp(neckhead)))
end

function TrackerVit_create(parameters::TrackerVit_Params)
	return cpp_to_julia(jlopencv_cv_cv_TrackerVit_create(julia_to_cpp(parameters)))
end
TrackerVit_create(; parameters::TrackerVit_Params = (cpp_to_julia(TrackerVitggParamsOP()))) = TrackerVit_create(parameters)

function TrackerVit_create(model::Net, meanvalue::Scalar, stdvalue::Scalar, tracking_score_threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_TrackerVit_create(julia_to_cpp(model),julia_to_cpp(meanvalue),julia_to_cpp(stdvalue),julia_to_cpp(tracking_score_threshold)))
end
TrackerVit_create(model::Net; meanvalue::Scalar = (cpp_to_julia(ScalarOWUaebSGWUabcSGWUaWcP())), stdvalue::Scalar = (cpp_to_julia(ScalarOWUYYfSGWUYYaSGWUYYbP())), tracking_score_threshold::Float64 = Float64(0.20)) = TrackerVit_create(model, meanvalue, stdvalue, tracking_score_threshold)

function createBackgroundSubtractorMOG2(history::Int64, varThreshold::Float64, detectShadows::Bool)
	return cpp_to_julia(jlopencv_cv_cv_createBackgroundSubtractorMOG2(julia_to_cpp(history),julia_to_cpp(varThreshold),julia_to_cpp(detectShadows)))
end
createBackgroundSubtractorMOG2(; history::Int64 = Int64(500), varThreshold::Float64 = Float64(16), detectShadows::Bool = (true)) = createBackgroundSubtractorMOG2(history, varThreshold, detectShadows)

function createBackgroundSubtractorKNN(history::Int64, dist2Threshold::Float64, detectShadows::Bool)
	return cpp_to_julia(jlopencv_cv_cv_createBackgroundSubtractorKNN(julia_to_cpp(history),julia_to_cpp(dist2Threshold),julia_to_cpp(detectShadows)))
end
createBackgroundSubtractorKNN(; history::Int64 = Int64(500), dist2Threshold::Float64 = Float64(400.0), detectShadows::Bool = (true)) = createBackgroundSubtractorKNN(history, dist2Threshold, detectShadows)

function inpaint(src::InputArray, inpaintMask::InputArray, inpaintRadius::Float64, flags::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_inpaint(julia_to_cpp(src),julia_to_cpp(inpaintMask),julia_to_cpp(inpaintRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
inpaint(src::InputArray, inpaintMask::InputArray, inpaintRadius::Float64, flags::Int64; dst::InputArray = (CxxMat())) = inpaint(src, inpaintMask, inpaintRadius, flags, dst)

function fastNlMeansDenoising(src::InputArray, dst::InputArray, h::Float64, templateWindowSize::Int64, searchWindowSize::Int64)
	return cpp_to_julia(jlopencv_cv_cv_fastNlMeansDenoising(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(h),julia_to_cpp(templateWindowSize),julia_to_cpp(searchWindowSize)))
end
fastNlMeansDenoising(src::InputArray; dst::InputArray = (CxxMat()), h::Float64 = Float64(3), templateWindowSize::Int64 = Int64(7), searchWindowSize::Int64 = Int64(21)) = fastNlMeansDenoising(src, dst, h, templateWindowSize, searchWindowSize)

function fastNlMeansDenoising(src::InputArray, h::Array{Float32, 1}, dst::InputArray, templateWindowSize::Int64, searchWindowSize::Int64, normType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_fastNlMeansDenoising(julia_to_cpp(src),julia_to_cpp(h),julia_to_cpp(dst),julia_to_cpp(templateWindowSize),julia_to_cpp(searchWindowSize),julia_to_cpp(normType)))
end
fastNlMeansDenoising(src::InputArray, h::Array{Float32, 1}; dst::InputArray = (CxxMat()), templateWindowSize::Int64 = Int64(7), searchWindowSize::Int64 = Int64(21), normType::Int64 = Int64(cv_NORM_L2)) = fastNlMeansDenoising(src, h, dst, templateWindowSize, searchWindowSize, normType)

function fastNlMeansDenoisingColored(src::InputArray, dst::InputArray, h::Float64, hColor::Float64, templateWindowSize::Int64, searchWindowSize::Int64)
	return cpp_to_julia(jlopencv_cv_cv_fastNlMeansDenoisingColored(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(h),julia_to_cpp(hColor),julia_to_cpp(templateWindowSize),julia_to_cpp(searchWindowSize)))
end
fastNlMeansDenoisingColored(src::InputArray; dst::InputArray = (CxxMat()), h::Float64 = Float64(3), hColor::Float64 = Float64(3), templateWindowSize::Int64 = Int64(7), searchWindowSize::Int64 = Int64(21)) = fastNlMeansDenoisingColored(src, dst, h, hColor, templateWindowSize, searchWindowSize)

function fastNlMeansDenoisingMulti(srcImgs::AbstractVector{<:InputArray}, imgToDenoiseIndex::Int64, temporalWindowSize::Int64, dst::InputArray, h::Float64, templateWindowSize::Int64, searchWindowSize::Int64)
	return cpp_to_julia(jlopencv_cv_cv_fastNlMeansDenoisingMulti(julia_to_cpp(srcImgs),julia_to_cpp(imgToDenoiseIndex),julia_to_cpp(temporalWindowSize),julia_to_cpp(dst),julia_to_cpp(h),julia_to_cpp(templateWindowSize),julia_to_cpp(searchWindowSize)))
end
fastNlMeansDenoisingMulti(srcImgs::AbstractVector{<:InputArray}, imgToDenoiseIndex::Int64, temporalWindowSize::Int64; dst::InputArray = (CxxMat()), h::Float64 = Float64(3), templateWindowSize::Int64 = Int64(7), searchWindowSize::Int64 = Int64(21)) = fastNlMeansDenoisingMulti(srcImgs, imgToDenoiseIndex, temporalWindowSize, dst, h, templateWindowSize, searchWindowSize)

function fastNlMeansDenoisingMulti(srcImgs::AbstractVector{<:InputArray}, imgToDenoiseIndex::Int64, temporalWindowSize::Int64, h::Array{Float32, 1}, dst::InputArray, templateWindowSize::Int64, searchWindowSize::Int64, normType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_fastNlMeansDenoisingMulti(julia_to_cpp(srcImgs),julia_to_cpp(imgToDenoiseIndex),julia_to_cpp(temporalWindowSize),julia_to_cpp(h),julia_to_cpp(dst),julia_to_cpp(templateWindowSize),julia_to_cpp(searchWindowSize),julia_to_cpp(normType)))
end
fastNlMeansDenoisingMulti(srcImgs::AbstractVector{<:InputArray}, imgToDenoiseIndex::Int64, temporalWindowSize::Int64, h::Array{Float32, 1}; dst::InputArray = (CxxMat()), templateWindowSize::Int64 = Int64(7), searchWindowSize::Int64 = Int64(21), normType::Int64 = Int64(cv_NORM_L2)) = fastNlMeansDenoisingMulti(srcImgs, imgToDenoiseIndex, temporalWindowSize, h, dst, templateWindowSize, searchWindowSize, normType)

function fastNlMeansDenoisingColoredMulti(srcImgs::AbstractVector{<:InputArray}, imgToDenoiseIndex::Int64, temporalWindowSize::Int64, dst::InputArray, h::Float64, hColor::Float64, templateWindowSize::Int64, searchWindowSize::Int64)
	return cpp_to_julia(jlopencv_cv_cv_fastNlMeansDenoisingColoredMulti(julia_to_cpp(srcImgs),julia_to_cpp(imgToDenoiseIndex),julia_to_cpp(temporalWindowSize),julia_to_cpp(dst),julia_to_cpp(h),julia_to_cpp(hColor),julia_to_cpp(templateWindowSize),julia_to_cpp(searchWindowSize)))
end
fastNlMeansDenoisingColoredMulti(srcImgs::AbstractVector{<:InputArray}, imgToDenoiseIndex::Int64, temporalWindowSize::Int64; dst::InputArray = (CxxMat()), h::Float64 = Float64(3), hColor::Float64 = Float64(3), templateWindowSize::Int64 = Int64(7), searchWindowSize::Int64 = Int64(21)) = fastNlMeansDenoisingColoredMulti(srcImgs, imgToDenoiseIndex, temporalWindowSize, dst, h, hColor, templateWindowSize, searchWindowSize)

function denoise_TVL1(observations::AbstractVector{<:InputArray}, result::InputArray, lambda::Float64, niters::Int64)
	return cpp_to_julia(jlopencv_cv_cv_denoise_TVL1(julia_to_cpp(observations),julia_to_cpp(result),julia_to_cpp(lambda),julia_to_cpp(niters)))
end
denoise_TVL1(observations::AbstractVector{<:InputArray}, result::InputArray; lambda::Float64 = Float64(1.0), niters::Int64 = Int64(30)) = denoise_TVL1(observations, result, lambda, niters)

function createTonemap(gamma::Float64)
	return cpp_to_julia(jlopencv_cv_cv_createTonemap(julia_to_cpp(gamma)))
end
createTonemap(; gamma::Float64 = Float64(1.0)) = createTonemap(gamma)

function createTonemapDrago(gamma::Float64, saturation::Float64, bias::Float64)
	return cpp_to_julia(jlopencv_cv_cv_createTonemapDrago(julia_to_cpp(gamma),julia_to_cpp(saturation),julia_to_cpp(bias)))
end
createTonemapDrago(; gamma::Float64 = Float64(1.0), saturation::Float64 = Float64(1.0), bias::Float64 = Float64(0.85)) = createTonemapDrago(gamma, saturation, bias)

function createTonemapReinhard(gamma::Float64, intensity::Float64, light_adapt::Float64, color_adapt::Float64)
	return cpp_to_julia(jlopencv_cv_cv_createTonemapReinhard(julia_to_cpp(gamma),julia_to_cpp(intensity),julia_to_cpp(light_adapt),julia_to_cpp(color_adapt)))
end
createTonemapReinhard(; gamma::Float64 = Float64(1.0), intensity::Float64 = Float64(0), light_adapt::Float64 = Float64(1.0), color_adapt::Float64 = Float64(0)) = createTonemapReinhard(gamma, intensity, light_adapt, color_adapt)

function createTonemapMantiuk(gamma::Float64, scale::Float64, saturation::Float64)
	return cpp_to_julia(jlopencv_cv_cv_createTonemapMantiuk(julia_to_cpp(gamma),julia_to_cpp(scale),julia_to_cpp(saturation)))
end
createTonemapMantiuk(; gamma::Float64 = Float64(1.0), scale::Float64 = Float64(0.7), saturation::Float64 = Float64(1.0)) = createTonemapMantiuk(gamma, scale, saturation)

function createAlignMTB(max_bits::Int64, exclude_range::Int64, cut::Bool)
	return cpp_to_julia(jlopencv_cv_cv_createAlignMTB(julia_to_cpp(max_bits),julia_to_cpp(exclude_range),julia_to_cpp(cut)))
end
createAlignMTB(; max_bits::Int64 = Int64(6), exclude_range::Int64 = Int64(4), cut::Bool = (true)) = createAlignMTB(max_bits, exclude_range, cut)

function createCalibrateDebevec(samples::Int64, lambda::Float64, random::Bool)
	return cpp_to_julia(jlopencv_cv_cv_createCalibrateDebevec(julia_to_cpp(samples),julia_to_cpp(lambda),julia_to_cpp(random)))
end
createCalibrateDebevec(; samples::Int64 = Int64(70), lambda::Float64 = Float64(10.0), random::Bool = (false)) = createCalibrateDebevec(samples, lambda, random)

function createCalibrateRobertson(max_iter::Int64, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_createCalibrateRobertson(julia_to_cpp(max_iter),julia_to_cpp(threshold)))
end
createCalibrateRobertson(; max_iter::Int64 = Int64(30), threshold::Float64 = Float64(0.01)) = createCalibrateRobertson(max_iter, threshold)

function createMergeDebevec()
	return cpp_to_julia(jlopencv_cv_cv_createMergeDebevec())
end

function createMergeMertens(contrast_weight::Float64, saturation_weight::Float64, exposure_weight::Float64)
	return cpp_to_julia(jlopencv_cv_cv_createMergeMertens(julia_to_cpp(contrast_weight),julia_to_cpp(saturation_weight),julia_to_cpp(exposure_weight)))
end
createMergeMertens(; contrast_weight::Float64 = Float64(1.0), saturation_weight::Float64 = Float64(1.0), exposure_weight::Float64 = Float64(0)) = createMergeMertens(contrast_weight, saturation_weight, exposure_weight)

function createMergeRobertson()
	return cpp_to_julia(jlopencv_cv_cv_createMergeRobertson())
end

function decolor(src::InputArray, grayscale::InputArray, color_boost::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_decolor(julia_to_cpp(src),julia_to_cpp(grayscale),julia_to_cpp(color_boost)))
end
decolor(src::InputArray; grayscale::InputArray = (CxxMat()), color_boost::InputArray = (CxxMat())) = decolor(src, grayscale, color_boost)

function seamlessClone(src::InputArray, dst::InputArray, mask::InputArray, p::Point{Int32}, flags::Int64, blend::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_seamlessClone(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(p),julia_to_cpp(flags),julia_to_cpp(blend)))
end
seamlessClone(src::InputArray, dst::InputArray, mask::InputArray, p::Point{Int32}, flags::Int64; blend::InputArray = (CxxMat())) = seamlessClone(src, dst, mask, p, flags, blend)

function colorChange(src::InputArray, mask::InputArray, dst::InputArray, red_mul::Float64, green_mul::Float64, blue_mul::Float64)
	return cpp_to_julia(jlopencv_cv_cv_colorChange(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst),julia_to_cpp(red_mul),julia_to_cpp(green_mul),julia_to_cpp(blue_mul)))
end
colorChange(src::InputArray, mask::InputArray; dst::InputArray = (CxxMat()), red_mul::Float64 = Float64(1.0), green_mul::Float64 = Float64(1.0), blue_mul::Float64 = Float64(1.0)) = colorChange(src, mask, dst, red_mul, green_mul, blue_mul)

function illuminationChange(src::InputArray, mask::InputArray, dst::InputArray, alpha::Float64, beta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_illuminationChange(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta)))
end
illuminationChange(src::InputArray, mask::InputArray; dst::InputArray = (CxxMat()), alpha::Float64 = Float64(0.2), beta::Float64 = Float64(0.4)) = illuminationChange(src, mask, dst, alpha, beta)

function textureFlattening(src::InputArray, mask::InputArray, dst::InputArray, low_threshold::Float64, high_threshold::Float64, kernel_size::Int64)
	return cpp_to_julia(jlopencv_cv_cv_textureFlattening(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst),julia_to_cpp(low_threshold),julia_to_cpp(high_threshold),julia_to_cpp(kernel_size)))
end
textureFlattening(src::InputArray, mask::InputArray; dst::InputArray = (CxxMat()), low_threshold::Float64 = Float64(30), high_threshold::Float64 = Float64(45), kernel_size::Int64 = Int64(3)) = textureFlattening(src, mask, dst, low_threshold, high_threshold, kernel_size)

function edgePreservingFilter(src::InputArray, dst::InputArray, flags::Int64, sigma_s::Float64, sigma_r::Float64)
	return cpp_to_julia(jlopencv_cv_cv_edgePreservingFilter(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(sigma_s),julia_to_cpp(sigma_r)))
end
edgePreservingFilter(src::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(1), sigma_s::Float64 = Float64(60), sigma_r::Float64 = Float64(0.4)) = edgePreservingFilter(src, dst, flags, sigma_s, sigma_r)

function detailEnhance(src::InputArray, dst::InputArray, sigma_s::Float64, sigma_r::Float64)
	return cpp_to_julia(jlopencv_cv_cv_detailEnhance(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(sigma_s),julia_to_cpp(sigma_r)))
end
detailEnhance(src::InputArray; dst::InputArray = (CxxMat()), sigma_s::Float64 = Float64(10), sigma_r::Float64 = Float64(0.15)) = detailEnhance(src, dst, sigma_s, sigma_r)

function pencilSketch(src::InputArray, dst1::InputArray, dst2::InputArray, sigma_s::Float64, sigma_r::Float64, shade_factor::Float64)
	return cpp_to_julia(jlopencv_cv_cv_pencilSketch(julia_to_cpp(src),julia_to_cpp(dst1),julia_to_cpp(dst2),julia_to_cpp(sigma_s),julia_to_cpp(sigma_r),julia_to_cpp(shade_factor)))
end
pencilSketch(src::InputArray; dst1::InputArray = (CxxMat()), dst2::InputArray = (CxxMat()), sigma_s::Float64 = Float64(60), sigma_r::Float64 = Float64(0.07), shade_factor::Float64 = Float64(0.02)) = pencilSketch(src, dst1, dst2, sigma_s, sigma_r, shade_factor)

function stylization(src::InputArray, dst::InputArray, sigma_s::Float64, sigma_r::Float64)
	return cpp_to_julia(jlopencv_cv_cv_stylization(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(sigma_s),julia_to_cpp(sigma_r)))
end
stylization(src::InputArray; dst::InputArray = (CxxMat()), sigma_s::Float64 = Float64(60), sigma_r::Float64 = Float64(0.45)) = stylization(src, dst, sigma_s, sigma_r)

function correctChromaticAberration(input_image::InputArray, coefficients::InputArray, image_size::Size{Int32}, calib_degree::Int64, output_image::InputArray, bayer_pattern::Int64)
	return cpp_to_julia(jlopencv_cv_cv_correctChromaticAberration(julia_to_cpp(input_image),julia_to_cpp(coefficients),julia_to_cpp(image_size),julia_to_cpp(calib_degree),julia_to_cpp(output_image),julia_to_cpp(bayer_pattern)))
end
correctChromaticAberration(input_image::InputArray, coefficients::InputArray, image_size::Size{Int32}, calib_degree::Int64; output_image::InputArray = (CxxMat()), bayer_pattern::Int64 = Int64(-1)) = correctChromaticAberration(input_image, coefficients, image_size, calib_degree, output_image, bayer_pattern)

function loadChromaticAberrationParams(node::FileNode, coeffMat::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_loadChromaticAberrationParams(julia_to_cpp(node),julia_to_cpp(coeffMat)))
end
loadChromaticAberrationParams(node::FileNode; coeffMat::InputArray = (CxxMat())) = loadChromaticAberrationParams(node, coeffMat)

function TrackerCSRT_create(parameters::TrackerCSRT_Params)
	return cpp_to_julia(jlopencv_cv_cv_TrackerCSRT_create(julia_to_cpp(parameters)))
end
TrackerCSRT_create(; parameters::TrackerCSRT_Params = (cpp_to_julia(TrackerCSRTggParamsOP()))) = TrackerCSRT_create(parameters)

function TrackerKCF_create(parameters::TrackerKCF_Params)
	return cpp_to_julia(jlopencv_cv_cv_TrackerKCF_create(julia_to_cpp(parameters)))
end
TrackerKCF_create(; parameters::TrackerKCF_Params = (cpp_to_julia(TrackerKCFggParamsOP()))) = TrackerKCF_create(parameters)

#
# Manual Wrapping BEGIN
#
# Hand-authored Julia wrappers for functions the header-driven generator cannot
# emit. This section is the Julia counterpart of the "Manual Wrapping" block in
# binding_templates_cpp/cv_core.cpp: the C++ side registers the compiled symbols
# these call, and this side provides the Julia-facing API. It is appended
# verbatim to the generated cv_cxx_wrap.jl by gen3_julia_cxx.py.
#
# Why these are manual:
#   * the GUI callbacks need their Julia closures GC-protected for the lifetime
#     of the C++ callback (CxxWrap.gcprotect), which the parser knows nothing of;
#   * CascadeClassifier::detectMultiScale returns its result through an output
#     `vector<Rect>` built inside the C++ lambda.

function createButton(bar_name::String, on_change, userdata, type::Int32 = 0, initial_button_state::Bool = false)
    func =  (x)->on_change(x, userdata)
    CxxWrap.gcprotect(userdata)
    CxxWrap.gcprotect(func)
    CxxWrap.gcprotect(on_change)
    return jl_cpp_cv2.createButton(bar_name,func, type, initial_button_state)
end

function setMouseCallback(winname::String, onMouse, userdata)
    func =  (event, x, y, flags)->onMouse(event, x, y, flags, userdata)
    CxxWrap.gcprotect(userdata)
    CxxWrap.gcprotect(func)
    CxxWrap.gcprotect(onMouse)
    return jl_cpp_cv2.setMouseCallback(winname,func)
end

function createTrackbar(trackbarname::String, winname::String, value::Ref{Int32}, count::Int32, onChange, userdata)
    func =  (x)->onChange(x, userdata)
    CxxWrap.gcprotect(userdata)
    CxxWrap.gcprotect(func)
    CxxWrap.gcprotect(onChange)
    return jl_cpp_cv2.createTrackbar(trackbarname, winname, value, count, func)
end

function CascadeClassifier(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_CascadeClassifier(julia_to_cpp(filename)))
end


function detectMultiScale(cobj::CascadeClassifier, image::InputArray, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size{Int32}, maxSize::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale(cobj::CascadeClassifier, image::InputArray; scaleFactor::Float64 = Float64(1.1), minNeighbors::Int32 = Int32(3), flags::Int32 = Int32(0), minSize::Size{Int32} = (Size{Int32}(0,0)), maxSize::Size{Int32} = (Size{Int32}(0,0))) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)

function empty(cobj::CascadeClassifier)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_empty(julia_to_cpp(cobj)))
end

#
# Manual Wrapping END
#

# cv::dnn::Net methods taking cv::MatShape, which is a class in OpenCV 5; shapes are
# integer vectors on the Julia side. Aliased into OpenCV.dnn in src/OpenCV.jl.
_shapes(v) = [Int32.(collect(x)) for x in v]
dnn_setInputShape(cobj::Net, inputName::String, shape::AbstractVector{<:Integer}) =
    jlopencv_dnn_Net_setInputShape(cobj, inputName, Int32.(collect(shape)))
dnn_getFLOPS(cobj::Net, netInputShapes::AbstractVector, netInputTypes::AbstractVector{<:Integer}) =
    jlopencv_dnn_Net_getFLOPS(cobj, _shapes(netInputShapes), Int32.(collect(netInputTypes)))
dnn_getMemoryConsumption(cobj::Net, netInputShapes::AbstractVector, netInputTypes::AbstractVector{<:Integer}) =
    cpp_to_julia(jlopencv_dnn_Net_getMemoryConsumption(cobj, _shapes(netInputShapes), Int32.(collect(netInputTypes))))
dnn_getLayerShapes(cobj::Net, netInputShapes::AbstractVector, netInputTypes::AbstractVector{<:Integer}, layerId::Integer) =
    cpp_to_julia(jlopencv_dnn_Net_getLayerShapes(cobj, _shapes(netInputShapes), Int32.(collect(netInputTypes)), Int64(layerId)))



include("cv_Error_cxx_wrap.jl")
include("cv_aruco_cxx_wrap.jl")
include("cv_barcode_cxx_wrap.jl")
include("cv_ccm_cxx_wrap.jl")
include("cv_dnn_cxx_wrap.jl")
include("cv_fisheye_cxx_wrap.jl")
include("cv_internal_cxx_wrap.jl")
include("cv_ipp_cxx_wrap.jl")
include("cv_mcc_cxx_wrap.jl")
include("cv_ml_cxx_wrap.jl")
include("cv_motempl_cxx_wrap.jl")
include("cv_optflow_cxx_wrap.jl")
include("cv_samples_cxx_wrap.jl")
include("cv_segmentation_cxx_wrap.jl")
include("cv_traits_cxx_wrap.jl")
include("cv_utils_cxx_wrap.jl")
include("cv_xfeatures2d_cxx_wrap.jl")
include("cv_ximgproc_cxx_wrap.jl")
include("cv_xphoto_cxx_wrap.jl")