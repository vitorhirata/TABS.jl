module TABS

using Random
using Distributions
using Parameters
using Graphs

rng = MersenneTwister(123)

include("entities/entities.jl")
include("auxiliar/parameters.jl")
include("dynamics/setup.jl")
end
