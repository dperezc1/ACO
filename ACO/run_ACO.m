function [best_solution, best_cost, convergence] = run_ACO(params)
    % Función principal que ejecuta el algoritmo ACO
    
    % Inicialización de mejores soluciones
    best_solution = [];
    best_cost = inf;
    convergence = zeros(params.n_iterations, 1);
    
    % Bucle principal del ACO
    for iter = 1:params.n_iterations
        % Soluciones de las hormigas
        [ant_solutions, ant_costs] = generate_ant_solutions(params);
        
        % Actualizar mejor solución
        [iter_best_cost, idx] = min(ant_costs);
        if iter_best_cost < best_cost
            best_cost = iter_best_cost;
            best_solution = ant_solutions(idx,:);
        end
        
        % Actualización de feromonas
        params.tau = update_pheromone(params, ant_solutions, ant_costs);
        
        % Guardar convergencia
        convergence(iter) = best_cost;
        
        % Mostrar progreso
        fprintf('Iteración %d: Mejor costo = %.4f\n', iter, best_cost);
    end
end