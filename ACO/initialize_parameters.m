function params = initialize_parameters()
    % Función para inicializar todos los parámetros del algoritmo ACO
    
    % Parámetros del ACO
    params.n_ants = 30;          % Reducido de 50 a 30
    params.n_iterations = 100;    
    params.rho = 0.1;            % Tasa de evaporación de feromona
    params.alpha = 1;            % Influencia de la feromona
    params.beta = 2;             % Influencia de la información heurística
    
    % Parámetros del problema
    params.n_variables = 5;       % Reducido a 5 variables
    params.lb = zeros(1, params.n_variables);    % Límites inferiores
    params.ub = ones(1, params.n_variables);     % Límites superiores
    
    % Inicialización de la matriz de feromonas
    params.tau_initial = 1;
    params.tau = ones(params.n_variables, params.n_variables) * params.tau_initial;
end