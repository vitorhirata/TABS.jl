function create_network(setup_parameters::SetupParameters)::Vector{Vector{Int64}}
    if setup_parameters.network_type == "WS"
        network = barabasi_albert(setup_parameters.number_household, setup_parameters.m_BA)
    elseif setup_parameters.network_type == "ER"
        network = erdos_renyi(setup_parameters.number_household, setup_parameters.probabily_connection_ER)
    elseif setup_parameters.network_type == "BA"
        network = watts_strogatz(setup_parameters.number_household, setup_parameters.k_WS, setup_parameters.beta_WS)
    else
        throw(ArgumentError("argument does not match valid type of network."))
    end

    return Graphs.SimpleGraphs.adj(network)
end
