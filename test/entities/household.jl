@testset "Household creation" begin
    @testset "Household creation with input" begin
        id = 10
        linked_households = [1, 3, 7, 11]
        plot_fraction_owned = [1, 2, 3, 4, 5, 16, 17, 18, 19, 20]

        household = TABS.Household(id, linked_households, plot_fraction_owned)

        @test household.id == id
        @test household.linked_households == linked_households
        @test household.plot_fraction_owned == plot_fraction_owned
        @test household.quality_preference == 0.5273815371212156
    end
end
