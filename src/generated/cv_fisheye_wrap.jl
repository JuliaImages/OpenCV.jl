module fisheye
import ..OpenCV


const initUndistortRectifyMap = OpenCV.fisheye_initUndistortRectifyMap
const undistortImage = OpenCV.fisheye_undistortImage
const projectPoints = OpenCV.fisheye_projectPoints
const distortPoints = OpenCV.fisheye_distortPoints
const undistortPoints = OpenCV.fisheye_undistortPoints
const estimateNewCameraMatrixForUndistortRectify = OpenCV.fisheye_estimateNewCameraMatrixForUndistortRectify
const stereoRectify = OpenCV.fisheye_stereoRectify
const calibrate = OpenCV.fisheye_calibrate
const stereoCalibrate = OpenCV.fisheye_stereoCalibrate
    const CALIB_CHECK_COND = OpenCV.cv_fisheye_CALIB_CHECK_COND
    const CALIB_FIX_FOCAL_LENGTH = OpenCV.cv_fisheye_CALIB_FIX_FOCAL_LENGTH
    const CALIB_FIX_INTRINSIC = OpenCV.cv_fisheye_CALIB_FIX_INTRINSIC
    const CALIB_FIX_K1 = OpenCV.cv_fisheye_CALIB_FIX_K1
    const CALIB_FIX_K2 = OpenCV.cv_fisheye_CALIB_FIX_K2
    const CALIB_FIX_K3 = OpenCV.cv_fisheye_CALIB_FIX_K3
    const CALIB_FIX_K4 = OpenCV.cv_fisheye_CALIB_FIX_K4
    const CALIB_FIX_PRINCIPAL_POINT = OpenCV.cv_fisheye_CALIB_FIX_PRINCIPAL_POINT
    const CALIB_FIX_SKEW = OpenCV.cv_fisheye_CALIB_FIX_SKEW
    const CALIB_RECOMPUTE_EXTRINSIC = OpenCV.cv_fisheye_CALIB_RECOMPUTE_EXTRINSIC
    const CALIB_USE_INTRINSIC_GUESS = OpenCV.cv_fisheye_CALIB_USE_INTRINSIC_GUESS
    const CALIB_ZERO_DISPARITY = OpenCV.cv_fisheye_CALIB_ZERO_DISPARITY



end