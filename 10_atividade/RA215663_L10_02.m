function [L] = RA215663_L10_02()
% Calculate the total length L necessary for the stell sheet

% Clear workspace before function start
clc, clear all;

% Calculate the length L
F = @(x) sqrt(1+(cos(x)).^2); % The function necessary to calculate the length of the sin function
L = integral(F, 0, 48);       % Integrate the function to calculate the total length 
end