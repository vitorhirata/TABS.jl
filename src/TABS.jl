module TABS

using Random
using Distributions
using Parameters

rng = MersenneTwister(123)

include("entities/entities.jl")
include("auxiliar/parameters.jl")
end
