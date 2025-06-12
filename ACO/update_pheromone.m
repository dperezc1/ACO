function tau = update_pheromone(params, solutions, costs)
    % Función para actualizar la matriz de feromonas
    
    % Evaporación
    tau = (1-params.rho) * params.tau;
    
    % Depósito de feromona
    for k = 1:size(solutions,1)
        if costs(k) < inf
            delta_tau = 1 / (costs(k) + eps);
            for i = 1:size(tau,1)
                tau(i,:) = tau(i,:) + delta_tau;
            end
        end
    end
end