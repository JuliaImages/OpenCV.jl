## Covariant Vector overloads for drawing functions whose auto-generated
## signatures use the invariant `Array{InputArray, 1}` and therefore reject
## natural inputs like `Vector{Array{Int32, 3}}`. See issue #18.

_as_input_vec_drawing(v::AbstractVector{<:InputArray}) = collect(InputArray, v)

function polylines(img::InputArray,
                   pts::AbstractVector{<:InputArray},
                   isClosed::Bool, color::Scalar, args...; kwargs...)
    polylines(img, _as_input_vec_drawing(pts), isClosed, color, args...; kwargs...)
end

function fillPoly(img::InputArray,
                  pts::AbstractVector{<:InputArray},
                  color::Scalar, args...; kwargs...)
    fillPoly(img, _as_input_vec_drawing(pts), color, args...; kwargs...)
end

function drawContours(image::InputArray,
                      contours::AbstractVector{<:InputArray},
                      contourIdx::Int64, color::Scalar, args...; kwargs...)
    drawContours(image, _as_input_vec_drawing(contours), contourIdx, color,
                 args...; kwargs...)
end
