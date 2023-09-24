@with_kw mutable struct SetupParameters
    # Base setup variables
    lattice_size::Int = 49 # Size of the grid
    number_initial_variety::Int = 10 # Initial number of varieties in the community
    number_initial_variety_HD::Int = 5 # Initial number of varieties per household
    number_resource::Int = 3 # Number of existing resources
    number_habitat::Int = 1 # Ambient heterogeneity
    number_household::Int = 49 # Number of households

    # Network variables
    network_type::String = "WS" # Algorithm used to create network: ER, WS, BA is Erdos-Renyi, Watts-Strogatz and Barabasi-Albert
    probabily_connection_ER::Float64 = 0.15 # Probability of connection of the Erdos-Renyi model
    k_WS::Int = 4 # Number of connections of the initial regular network of the Watts-Strogatz model
    beta_WS::Float64 = 0.2 # Rewiring probability of the Watts-Strogatz model
    m_BA::Int = 2 # Number of initial connected nodes of the Barabasi-Albert model
end

@with_kw struct ModelParameters
    # Time variables
    time_interval::Int = 30 # Time interval in which metrics are computed
    max_time::Int = 3000 # Number of agricultural cycles (iterations)
    number_run::Int = 200 # Number of simulations runned

    # Model run variables
    death_probability::Float64 = 0.2 # Base death probability
    base_exchange_probability::Float64 = 0.32 # Base exchange probability
    selection_strength::Int = 10 # Intensity of selection
    alpha::Float64 = 0.6 # Importance of productivity on variety score
    probability_new_var::Float64 = 0.06 # Total probability of new variety
    percentage_new_random_var::Float64 = 0.1 # Percentage of new variety randomly initialized
    crossingDeviation::Float64 = 0.005 # Traits matting deviation
end
