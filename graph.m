% === Importar datos ===
% Asegúrate de tener las variables:
% t: vector de tiempo
% u1, u2, u3: señales u_i(t)
% f1, f2, f3: señales f_i(t)
% Puedes importar tus datos aquí
% Ejemplo:
load('primera.mat'); % o usa readmatrix, etc.

% === Crear figura ===
figure;

% --- V-1 ---
subplot(3,1,1);
yyaxis left;
plot(t, u1, 'LineWidth', 2); % u_1(t)
ylabel('u_1(t)');
ylim([2 8]);

yyaxis right;
plot(t, f1, 'LineWidth', 2); % Naranjo
ylabel('f_1(t)');
ylim([0.4 1.6]);

title('V-1');
xlabel('t[s]');
grid on;
legend('u_1(t)', 'f_1(t)', 'Location', 'northeast');

% --- V-2 ---
subplot(3,1,2);
yyaxis left;
plot(t, u2, 'LineWidth', 2);
ylabel('u_2(t)');
ylim([2 8]);

yyaxis right;
plot(t, f2, 'LineWidth', 2);
ylabel('f_2(t)');
ylim([0.4 1.6]);

title('V-2');
xlabel('t[s]');
grid on;
legend('u_2(t)', 'f_2(t)', 'Location', 'northeast');

% --- V-3 ---
subplot(3,1,3);
yyaxis left;
plot(t, u3, 'LineWidth', 2);
ylabel('u_3(t)');
ylim([4.4 5.6]);

yyaxis right;
plot(t, f3, 'LineWidth', 2);
ylabel('f_3(t)');
ylim([0 3]);

title('V-3');
xlabel('t[s]');
grid on;
legend('u_3(t)', 'f_3(t)', 'Location', 'northeast');

% Ajustes generales
set(gcf, 'Position', [100 100 800 600]); % Tamaño de la figura
f_print(8.89, 9, "V-3", 8, "Serif", "t[s]", "u_3(t)", "primera", 1);
