function [m,rho_avg] = RA215663_L10_01()
% Calculate the total mass and the average rho of earth

% Clear workspace before function start
clc, clear all;

% Recorded Data 
R = [0 1100 1500 2450 3400 3630 4500 5380 6060 6280 6380].*1e3;
RHO = [13 12.4 12 11.2 9.7 5.7 5.2 4.7 3.6 3.4 3].*1e3;

% Calculate desired values
f = RHO .* R.^2;             % Calculate the function inside the integral
m = 4 * pi * trapz(R, f);    % Calculate the integral and the mass

v = (4/3)*pi*((6380*1e3)^3); % Calculate the volume of the earth as a sphere
rho_avg = m/v;               % Calculate the average density of earth

end