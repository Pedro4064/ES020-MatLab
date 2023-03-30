% RA215663_L01_02 Tópicos de Mecatrônica
%   Introdução a Plotting e Differenciais em MATLAB.

%% PARTE I - Variáveis e Cálculos Básicos de Interesse 
L = 500e-2;                     % Comprimento em m
E = 50000 .* (1e3)/(1e-2).^2;   % Módulo de Elasticidade em N/m^2
I = 35000 .* (1e-2).^4;         % Momento de inércia em m^4
W_0 = 2.75 .* (1e3)/(1e-2);     % W_0 em N/m
D_x = 10 .* 1e-2;               % Delta x em metros

x = 0:D_x:L;
y = (W_0 ./ (120 .* E .* I .* L)) .* (-x.^5 + 2 .* L.^2 .* x.^3 - L.^4 .* x);

%% PARTE II - Cálculos Avançados Plotting Items A-B

% ITEM A - Deflexão
clf; 
subplot(2, 1, 1);
plot(x, y);

title("Deflexão de uma Viga Bi-Apoiada (Rolete e Engaste)");
xlabel("Distância [m]"), ylabel("Deflexão [M]");



% ITEM B - Momento Fletor
theta = diff(y) ./ D_x;

subplot(2, 1, 2);
plot(x(2:end), theta, Color='#FF4F00');

title("Inclinação \theta");
xlabel("Distância [m]"), ylabel("Inclinação \theta");

%% PARTE III - Cálculos Avançados Plotting Items C-E

% Item C
clf;
subplot(3, 1, 1);

M = E .* I .* (diff(y, 2) ./ (D_x .^ 2));
plot(x(3:end), M .* 1e-3);

title("Momento Fletor");
xlabel("Distância [m]"), ylabel("Momento Fletor [KN\cdot m]");

% Item D
subplot(3, 1, 2);

V = E .* I .* (diff(y, 3) ./ (D_x .^ 3));
plot(x(4:end), V .* 1e-3);

title("Esforço Cortante");
xlabel("Distância [m]"), ylabel("Esforço Cortante [KN \cdot m]");

%  Item E
subplot(3, 1, 3);

W = -E .* I .* (diff(y, 4) ./ (D_x .^ 4));
plot(x(5:end), W ./ 1e3);

title("Carregamento");
xlabel("Distância [m]"), ylabel("Carregaoemnto[KN \cdot m]");

sgtitle("Propriedades de Deflexão - Viga Bi-Apoiada [Rolete e Engaste]");