mutable struct Household
    # imutable
    id::Int
    quality_preference::Float64
    linked_households::Vector{Int}
    plot_fraction_owned::Vector{Int}

    # mutable
    scores::Vector{Float64}
    variety_owned::Vector{Variety}
end

"""
    Household(id::Int, linked_households::Vector{Int}, plot_fraction_owned::Vector{Int})

Create householf from id, ids of linked households and index of plot fraction owned.
"""
function Household(id::Int, linked_households::Vector{Int}, plot_fraction_owned::Vector{Int})
    distribution = truncated(Normal(0.5, 0.1), lower=0.0, upper=1.0)
    quality_preference = rand(TABS.rng, distribution)

    Household(id, quality_preference, linked_households, plot_fraction_owned, [], [])
end
