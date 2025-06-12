function feasible = check_constraints(solution)
    % Verificación de restricciones del problema
    % Entrada:
    %   solution: vector de solución a verificar
    % Salida:
    %   feasible: true si la solución cumple todas las restricciones
    
    feasible = true;
    
    % Ejemplo de restricción más realista:
    % Restricción 1: la suma de las variables debe ser menor o igual a 5
    if sum(solution) > 5
        feasible = false;
    end
    
    % Restricción 2: todas las variables deben estar entre 0 y 1
    if any(solution < 0) || any(solution > 1)
        feasible = false;
    end
end