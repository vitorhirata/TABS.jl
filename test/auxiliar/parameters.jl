@testset "Parameters creation" begin
    @testset "Setup parameters creation without input" begin
        setup_parameters = TABS.SetupParameters()

        @test setup_parameters.lattice_size == 49
    end

    @testset "Model parameters creation without input" begin
        model_parameters = TABS.ModelParameters()

        @test model_parameters.time_interval == 30
    end
end
