function plot_results(convergence)
    % Función para visualizar la convergencia del algoritmo
    
    figure('Name', 'Convergencia ACO');
    plot(convergence, 'b-', 'LineWidth', 2);
    grid on;
    xlabel('Iteración');
    ylabel('Mejor Costo');
    title('Curva de Convergencia ACO');
end