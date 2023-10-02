@testset "Community creation" begin
    @testset "Community creation with input" begin
        id = 10
        lattice_size = 49

        resource = (0.1, 0.2, 0.3)
        resources = fill(resource, (lattice_size, lattice_size))
        variety = TABS.Variety()
        varieties = fill(variety, (lattice_size, lattice_size))

        community = TABS.Community(id, resources, varieties)

        @test community.id == id
        @test length(community.grid) == lattice_size^2
        @test community.grid[1, 1].resource == resource
        @test community.grid[1, 1].variety == variety
        @test community.grid[40, 40].resource == resource
        @test community.grid[40, 40].variety == variety
    end
end
