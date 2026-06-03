

function ipp_useIPP()
	return cpp_to_julia(jlopencv_cv_ipp_cv_ipp_useIPP())
end

function ipp_setUseIPP(flag::Bool)
	return cpp_to_julia(jlopencv_cv_ipp_cv_ipp_setUseIPP(julia_to_cpp(flag)))
end

function ipp_getIppVersion()
	return cpp_to_julia(jlopencv_cv_ipp_cv_ipp_getIppVersion())
end

function ipp_useIPP_NotExact()
	return cpp_to_julia(jlopencv_cv_ipp_cv_ipp_useIPP_NotExact())
end

function ipp_setUseIPP_NotExact(flag::Bool)
	return cpp_to_julia(jlopencv_cv_ipp_cv_ipp_setUseIPP_NotExact(julia_to_cpp(flag)))
end



