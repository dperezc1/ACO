function [ant_solutions, ant_costs] = generate_ant_solutions(params)
    % Función para generar soluciones para todas las hormigas
    
    ant_solutions = zeros(params.n_ants, params.n_variables);
    ant_costs = zeros(params.n_ants, 1);
    
    valid_solutions = 0;
    
    for k = 1:params.n_ants
        % Construir solución para cada hormiga
        solution = construct_solution(params);
        
        % Verificar restricciones y calcular costo
        if check_constraints(solution)
            cost = objective_function(solution);
            ant_solutions(k,:) = solution;
            ant_costs(k) = cost;
            valid_solutions = valid_solutions + 1;
        else
            ant_costs(k) = inf;
        end
    end
    
    % Mostrar información de depuración
    if valid_solutions == 0
        fprintf('Advertencia: No se encontraron soluciones válidas en esta iteración\n');
    else
        fprintf('Soluciones válidas en esta iteración: %d/%d\n', valid_solutions, params.n_ants);
    end
end