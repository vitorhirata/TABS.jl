# Add TABS src directory to PATH so files are found
push!(LOAD_PATH,"../src/")

using Documenter
using TABS

makedocs(
   sitename="TABS.jl",
   format = Documenter.HTML(prettyurls = false)
)
