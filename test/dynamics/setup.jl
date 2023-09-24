@testset "Setup of the model" begin
    @testset "#create_network" begin
        @testset "create_network with WS model" begin
            setup_parameters = TABS.SetupParameters()
            network = TABS.create_network(setup_parameters)

            @test network isa(Vector{Vector{Int64}})
            @test length(network) == setup_parameters.number_household
        end

        @testset "create_network with ER model" begin
            setup_parameters = TABS.SetupParameters()
            setup_parameters.network_type = "ER"

            network = TABS.create_network(setup_parameters)

            @test network isa(Vector{Vector{Int64}})
            @test length(network) == setup_parameters.number_household
        end

        @testset "create_network with BA model" begin
            setup_parameters = TABS.SetupParameters()
            setup_parameters.network_type = "BA"

            network = TABS.create_network(setup_parameters)

            @test network isa(Vector{Vector{Int64}})
            @test length(network) == setup_parameters.number_household
        end

        @testset "create_network with invalid model" begin
            setup_parameters = TABS.SetupParameters()
            setup_parameters.network_type = "wrong type of network"

            @test_throws ArgumentError TABS.create_network(setup_parameters)
        end
    end
end
