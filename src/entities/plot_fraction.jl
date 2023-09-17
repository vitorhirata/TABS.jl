mutable struct PlotFraction
    resource::Tuple{Float64, Float64, Float64}
    variety::Union{Variety, Nothing}
    productivity::Float64
end

"""
    PlotFraction(resource::Tuple{Float64, Float64, Float64}, variety::Variety)

Create plot_fraction from resource and variety.
"""
function PlotFraction(resource::Tuple{Float64, Float64, Float64}, variety::Union{Variety, Nothing})
    PlotFraction(resource, variety, 0)
end

function compute_productivity(plot_fraction::PlotFraction)
    if plot_fraction.variety == nothing
        productivity = 0;
        return
    end
    productivities = [_productivity(r, h) for (r, h) in zip(plot_fraction.resource, plot_fraction.variety.half_saturation)]
    plot_fraction.productivity = min(productivities...)
end

function _productivity(resource::Float64, half_saturation::Float64)::Float64
    return resource / (resource + half_saturation)
end
