# Convenience overloads supplying OpenCV's standard default arguments for factory
# functions whose generated wrappers only expose the all-arguments form.

# ORB_create convenience overload with defaults (OpenCV 4.13.0+)
function ORB_create(;
    nfeatures::Int64 = 500,
    scaleFactor::Float64 = 1.2,
    nlevels::Int64 = 8,
    edgeThreshold::Int64 = 31,
    firstLevel::Int64 = 0,
    WTA_K::Int64 = 2,
    scoreType::ORB_ScoreType = ORB_FAST_SCORE,
    patchSize::Int64 = 31,
    fastThreshold::Int64 = 20)
    ORB_create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, scoreType, patchSize, fastThreshold)
end

# SimpleBlobDetector_create convenience overload with defaults (OpenCV 4.13.0+)
function SimpleBlobDetector_create(;
    parameters::SimpleBlobDetector_Params = SimpleBlobDetector_Params())
    SimpleBlobDetector_create(parameters)
end
