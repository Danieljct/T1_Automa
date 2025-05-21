% === Importar datos ===
% Asegúrate de tener:
% t: vector de tiempo
% T: señal T(t)
% h: señal h(t)
% Puedes importar tus datos aquí (ej. load, readmatrix, etc.)
load("salidasTyHinicial.mat");
% === Crear figura ===
figure;

% --- Primer subplot: T(t) ---
subplot(2,1,1);
plot(t, T, 'LineWidth', 2);
xlabel('t [s]', 'FontSize', 10);
ylabel('T(t)', 'FontSize', 10);
legend('T(t)', 'Location', 'northeast');
grid on;
xlim([0 180]);

% --- Segundo subplot: h(t) ---
subplot(2,1,2);
plot(t, h, 'LineWidth', 2);
xlabel('t [s]', 'FontSize', 10);
ylabel('h(t)', 'FontSize', 10);
legend('h(t)', 'Location', 'northeast');
grid on;
xlim([0 180]);

% Ajustes generales para publicación
set(gcf, 'Position', [100 100 600 800]); % Tamaño figura
set(findall(gcf, '-property', 'FontSize'), 'FontSize', 10); % Fuente IEEE
set(gcf, 'Units', 'centimeters', 'Position', [1, 1, 8.89, 10]);
exportgraphics(gcf, 'figuras/salidasTyHinicial.pdf', 'ContentType', 'vector');