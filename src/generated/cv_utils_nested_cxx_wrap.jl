
function Base.getproperty(m::ExportClassName, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::ExportClassName, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::OriginalClassName_Params, s::Symbol)
    if s==:int_value
        return cpp_to_julia(jlopencv_OriginalClassName_Params_get_int_value(m))
    end
    if s==:float_value
        return cpp_to_julia(jlopencv_OriginalClassName_Params_get_float_value(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::OriginalClassName_Params, s::Symbol, v)
    if s==:int_value
        jlopencv_OriginalClassName_Params_set_int_value(m, julia_to_cpp(v))
        return v
    end
    if s==:float_value
        jlopencv_OriginalClassName_Params_set_float_value(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end



