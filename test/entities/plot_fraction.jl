@testset "PlotFraction creation" begin
    @testset "PlotFraction creation with variety input" begin
        variety = TABS.Variety()
        resource = (0.1, 0.2, 0.3)

        plot_fraction = TABS.PlotFraction(resource, variety)

        @test plot_fraction.resource == resource
        @test plot_fraction.variety == variety
        @test plot_fraction.productivity == 0
    end
end

@testset "PlotFraction compute_productivity" begin
    @testset "PlotFraction compute_productivity with variety" begin
        quality = 0.7
        half_saturation = (0.2, 0.3, 0.4)
        variety = TABS.Variety(quality, half_saturation)
        resource = (0.1, 0.2, 0.3)

        plot_fraction = TABS.PlotFraction(resource, variety)

        TABS.compute_productivity(plot_fraction)

        @test plot_fraction.productivity == 0.3333333333333333
    end

    @testset "PlotFraction compute_productivity without variety" begin
        resource = (0.1, 0.2, 0.3)

        plot_fraction = TABS.PlotFraction(resource, nothing)

        TABS.compute_productivity(plot_fraction)

        @test plot_fraction.productivity == 0.0
    end
end
