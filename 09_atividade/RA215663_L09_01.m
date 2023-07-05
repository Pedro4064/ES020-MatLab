function [A0, A1, B1, C1, dia_max] = RA215663_L09_01()
 % seu código aqui

 %  Clear env
 clc, clear, close all;

 % Data points
 t = [15 45 75 105 135 165 195 225 255 285 315 345];
 temp = [3.4 4.7 8.5 11.7 16 18.7 20.5 19.7 17.1 12.7 7.7 5.1];

 N = length(temp);  % The number of elements
 T = 365;           % 365 days
 F = 1/T;           % The frequency

 % Now to calculate the constants for the interpolation
 A0 = sum(temp)/N;
 A1 = (2/N) * sum(temp .* cos(2*pi*F .* t));
 B1 = (2/N) * sum(temp .* sin(2*pi*F .* t));
 C1 = sqrt(A1^2 + B1^2);

 % Find the day with the max value
 y = @(T) A0 + A1.*cos(2*pi*F .* T) + B1.*sin(2*pi*F .* T);
 dia_max = fminbnd(@(T) -y(T), 15, 345); 

end