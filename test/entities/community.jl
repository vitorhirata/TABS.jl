@testset "Community creation" begin
    @testset "Community creation with input" begin
        id = 10

        community = TABS.Community(id)

        @test community.id == id
        @test community.grid == [;;]
    end
end
