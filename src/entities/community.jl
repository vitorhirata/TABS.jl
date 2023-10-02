mutable struct Community
    id::Int
    grid::Matrix{PlotFraction}
end

"""
    Community(id::Int, resources::Matrix{Tuple{Float64, Float64, Float64}}, varieties::Matrix{Variety})

Create community based on id, matrix of resources and varieties.
"""
function Community(id::Int, resources::Matrix{Tuple{Float64, Float64, Float64}}, varieties::Matrix{Variety})
    lattice_size = trunc(Int, sqrt(length(varieties)))
    grid = Matrix{PlotFraction}(undef, lattice_size, lattice_size)

    for row in 1:lattice_size
        for col in 1:lattice_size
            grid[row, col] = PlotFraction(resources[row, col], varieties[row, col])
        end
    end

    Community(id, grid)
end
