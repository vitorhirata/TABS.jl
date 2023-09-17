struct Variety
    quality::Float64
    half_saturation::Tuple{Float64, Float64, Float64}
    id::Int
end

"""
    Variety(quality::Float64, half_saturation::Tuple{Float64, Float64, Float64})
    Variety()

Create variety from quality and half_saturation tuple or create variety with random parameters.
"""
function Variety(quality::Float64, half_saturation::Tuple{Float64, Float64, Float64})
    id = _variety_id(quality, half_saturation)
    Variety(quality, half_saturation, id)
end
function Variety()
    quality, half_saturation = _random_variety()
    Variety(quality, half_saturation)
end

# TODO: Improve this function
function _variety_id(quality::Float64, half_saturation::Tuple{Float64, Float64, Float64})::Int
    step = 0.1
    scale = (1 / step)^2
    current_scale = scale

    id = floor(quality / (step / 2))

    for i in half_saturation
        id += current_scale * floor(i / step);
        current_scale *= scale;
    end

    return id
end

function _random_variety()::Tuple{Float64, Tuple{Float64, Float64, Float64}}
    distribution = truncated(Normal(0.5, 0.15), lower=0.0, upper=1.0)

    quality = rand(TABS.rng, distribution)
    half_saturation::Tuple{Float64, Float64, Float64} = tuple(rand(TABS.rng, distribution, 3)...)

    return quality, half_saturation
end
