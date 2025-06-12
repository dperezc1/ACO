% Script principal para ejecutar el algoritmo ACO
clear all;
close all;
clc;

% Mostrar información inicial
fprintf('Iniciando algoritmo ACO para optimización con restricciones\n');
fprintf('Fecha y hora: %s\n', datestr(now, 'yyyy-mm-dd HH:MM:SS'));
fprintf('Usuario: %s\n\n', getenv('USERNAME'));

% Definición de parámetros del algoritmo
params = initialize_parameters();

% Mostrar configuración
fprintf('Configuración del problema:\n');
fprintf('Número de variables: %d\n', params.n_variables);
fprintf('Número de hormigas: %d\n', params.n_ants);
fprintf('Número de iteraciones: %d\n\n', params.n_iterations);

% Ejecutar el algoritmo ACO
[best_solution, best_cost, convergence] = run_ACO(params);

% Visualización de resultados
plot_results(convergence);

% Mostrar resultados finales
fprintf('\nResultados finales:\n');
fprintf('Mejor solución encontrada:\n');
disp(best_solution);
fprintf('Mejor costo: %.4f\n', best_cost);
fprintf('Suma de la solución: %.4f\n', sum(best_solution));