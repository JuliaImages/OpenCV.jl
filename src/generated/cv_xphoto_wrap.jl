module xphoto
import ..OpenCV


const balanceWhite = OpenCV.xphoto_balanceWhite
const getInputMin = OpenCV.xphoto_getInputMin
const setInputMin = OpenCV.xphoto_setInputMin
const getInputMax = OpenCV.xphoto_getInputMax
const setInputMax = OpenCV.xphoto_setInputMax
const getOutputMin = OpenCV.xphoto_getOutputMin
const setOutputMin = OpenCV.xphoto_setOutputMin
const getOutputMax = OpenCV.xphoto_getOutputMax
const setOutputMax = OpenCV.xphoto_setOutputMax
const getP = OpenCV.xphoto_getP
const setP = OpenCV.xphoto_setP
const getSaturationThreshold = OpenCV.xphoto_getSaturationThreshold
const setSaturationThreshold = OpenCV.xphoto_setSaturationThreshold
const extractSimpleFeatures = OpenCV.xphoto_extractSimpleFeatures
const getRangeMaxVal = OpenCV.xphoto_getRangeMaxVal
const setRangeMaxVal = OpenCV.xphoto_setRangeMaxVal
const getHistBinNum = OpenCV.xphoto_getHistBinNum
const setHistBinNum = OpenCV.xphoto_setHistBinNum
const getSaturation = OpenCV.xphoto_getSaturation
const setSaturation = OpenCV.xphoto_setSaturation
const getContrast = OpenCV.xphoto_getContrast
const setContrast = OpenCV.xphoto_setContrast
const getSigmaSpace = OpenCV.xphoto_getSigmaSpace
const setSigmaSpace = OpenCV.xphoto_setSigmaSpace
const getSigmaColor = OpenCV.xphoto_getSigmaColor
const setSigmaColor = OpenCV.xphoto_setSigmaColor
const createSimpleWB = OpenCV.xphoto_createSimpleWB
const createGrayworldWB = OpenCV.xphoto_createGrayworldWB
const createLearningBasedWB = OpenCV.xphoto_createLearningBasedWB
const applyChannelGains = OpenCV.xphoto_applyChannelGains
const createTonemapDurand = OpenCV.xphoto_createTonemapDurand
const oilPainting = OpenCV.xphoto_oilPainting
const inpaint = OpenCV.xphoto_inpaint
const dctDenoising = OpenCV.xphoto_dctDenoising
const bm3dDenoising = OpenCV.xphoto_bm3dDenoising
    const BM3D_STEP1 = OpenCV.cv_xphoto_BM3D_STEP1
    const BM3D_STEP2 = OpenCV.cv_xphoto_BM3D_STEP2
    const BM3D_STEPALL = OpenCV.cv_xphoto_BM3D_STEPALL
    const HAAR = OpenCV.cv_xphoto_HAAR
    const INPAINT_FSR_BEST = OpenCV.cv_xphoto_INPAINT_FSR_BEST
    const INPAINT_FSR_FAST = OpenCV.cv_xphoto_INPAINT_FSR_FAST
    const INPAINT_SHIFTMAP = OpenCV.cv_xphoto_INPAINT_SHIFTMAP



end