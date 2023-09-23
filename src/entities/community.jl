mutable struct Community
    id::Int
    grid::Matrix{PlotFraction}
end

"""
    Community(id::Int)

Create community based on id.
"""
# TODO: implement plot_fractions setup
function Community(id::Int)
    Community(id, [;;])
end
