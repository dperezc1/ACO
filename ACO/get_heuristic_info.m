function h = get_heuristic_info(i)
    % Calcula la información heurística para la construcción de soluciones
    % Entrada:
    %   i: índice de la variable actual
    % Salida:
    %   h: vector de información heurística
    
    h = ones(1, size(i,2));
    
    % Aquí puedes personalizar la información heurística según tu problema
    % Por ejemplo:
    % h = 1 ./ (1 + distancia_al_objetivo);
end