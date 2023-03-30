% RA215663_L01_02 Tópicos de Mecatrônica
%   Introdução a Plotting em MATLAB.

%% PARTE I - Variáveis e Funções de Interesse 
roh = @(T_c) 5.5289e-8 .* (T_c.^3) - 8.5016e-6 .* (T_c.^2) + 6.5622e-5 .* T_c + 0.99987; % Equação que modela a dencidade da água, para uma temperatura Tc em ºC
f2c = @(T_f) (5/9) .* (T_f - 32);                                                        % Equação de conversão entre ºF -> ºC

%% PARTE II - Cálculos
t_f = 32:3.6:93.2;        % Vetor de Temperatura em ºF
t_c = f2c(t_f);           % Vetor da temp convertida de ºF para ºC

water_density = roh(t_c); % Calculo de densidade

%% PARTE III - Plotting
plot(t_c, water_density);
title("Densidade de Água: \rho \times T_c");
xlabel("Temperatura [ºC]"), ylabel("Densidade [g/cm^3]");
grid on;