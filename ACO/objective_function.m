function cost = objective_function(solution)
    % Calcula el valor de la función objetivo
    % Entrada:
    %   solution: vector de solución a evaluar
    % Salida:
    %   cost: valor de la función objetivo
    
    % Función objetivo simple: minimizar la suma de los cuadrados
    cost = sum(solution.^2);
    
    % Penalización suave para soluciones cerca del límite
    if sum(solution) > 4.9  % Cerca del límite de 5
        cost = cost * (1 + 0.1 * (sum(solution) - 4.9));
    end
end