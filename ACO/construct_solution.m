function solution = construct_solution(params)
    % Función para construir una solución individual
    % Entrada:
    %   params: estructura con los parámetros del algoritmo
    % Salida:
    %   solution: vector de solución construida
    
    solution = zeros(1, params.n_variables);
    
    for i = 1:params.n_variables
        % Generar un valor aleatorio entre los límites
        solution(i) = params.lb(i) + (params.ub(i) - params.lb(i)) * rand();
        
        % Asegurar que la suma hasta ahora no exceda 5
        if i > 1
            remaining = 5 - sum(solution(1:i-1));
            solution(i) = min(solution(i), remaining);
        end
    end
    
    % Normalizar si es necesario
    total = sum(solution);
    if total > 5
        solution = solution * (5/total);
    end
end