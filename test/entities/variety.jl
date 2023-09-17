@testset "Variety creation" begin
    @testset "Variety creation with input" begin
        quality = 0.7
        half_saturation = (0.0, 0.1, 0.2)
        id = 2010013

        variety = TABS.Variety(quality, half_saturation)

        @test variety.quality == quality
        @test variety.half_saturation == half_saturation
        @test variety.id == id
    end

    @testset "Variety creation without input" begin
        quality = 0.6785401821479415
        half_saturation = (0.807226956168386, 0.6713976354300798, 0.5689123430610621)
        id = 5060813

        variety = TABS.Variety()

        @test variety.quality == quality
        @test variety.half_saturation == half_saturation
        @test variety.id == id
    end
end
