% RA215663_L01_02 Tópicos de Mecatrônica
%   Introdução a Plotting em MATLAB.

%% PARTE I - Variáveis e Funções de Interesse 

v = 10:10:80;                              % Matrix Lina de Velocidade
f = [25 70 380 550 610 1220 830 1450];     % Valores coletados de força

f_theo = 0.2741 .* (v.^1.9842);            % Calculo teórica que relaciona força de arrasto e a velocidade do vento

%% PARTE II - plotting
clf; hold on;

scatter(v, f, 'filled','green', '^', 'MarkerEdgeColor','red');
plot(v, f_theo, ':','Color','#808080', 'LineWidth',2.5);

title('Força de Arrasto F(v) - Medição V.S Teórico');
xlabel('Velocidade [m/s]'), ylabel('Força [N]');
legend('Data','Eq');