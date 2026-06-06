
function Base.getproperty(m::ClassWithKeywordProperties, s::Symbol)
    if s==:lambda
        return cpp_to_julia(jlopencv_ClassWithKeywordProperties_get_lambda(m))
    end
    if s==:except
        return cpp_to_julia(jlopencv_ClassWithKeywordProperties_get_except(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ClassWithKeywordProperties, s::Symbol, v)
    if s==:except
        jlopencv_ClassWithKeywordProperties_set_except(m, julia_to_cpp(v))
    end
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::FunctionParams, s::Symbol)
    if s==:lambda
        return cpp_to_julia(jlopencv_FunctionParams_get_lambda(m))
    end
    if s==:sigma
        return cpp_to_julia(jlopencv_FunctionParams_get_sigma(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FunctionParams, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function utils_dumpInputArray(argument::InputArray)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInputArray(julia_to_cpp(argument)))
end

function utils_dumpInputArrayOfArrays(argument::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInputArrayOfArrays(julia_to_cpp(argument)))
end

function utils_dumpInputOutputArray(argument::InputArray)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInputOutputArray(julia_to_cpp(argument)))
end

function utils_dumpInputOutputArrayOfArrays(argument::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInputOutputArrayOfArrays(julia_to_cpp(argument)))
end

function utils_dumpBool(argument::Bool)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpBool(julia_to_cpp(argument)))
end

function utils_dumpInt(argument::Int64)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpInt(julia_to_cpp(argument)))
end

function utils_dumpSizeT(argument::size_t)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpSizeT(julia_to_cpp(argument)))
end

function utils_dumpFloat(argument::Float64)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpFloat(julia_to_cpp(argument)))
end

function utils_dumpDouble(argument::Float64)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpDouble(julia_to_cpp(argument)))
end

function utils_dumpCString(argument::Cstring)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_dumpCString(julia_to_cpp(argument)))
end

function utils_testAsyncArray(argument::InputArray)
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_testAsyncArray(julia_to_cpp(argument)))
end

function utils_testAsyncException()
	return cpp_to_julia(jlopencv_cv_utils_cv_utils_testAsyncException())
end



include("cv_utils_fs_cxx_wrap.jl")
include("cv_utils_nested_cxx_wrap.jl")
