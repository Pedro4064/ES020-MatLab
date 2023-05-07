function [y] = RA215663_L06_03()
clc, clear;

    % Constants
    H = 75e-3;

    % Constrains for max
    A = [1; -1]; % y <= H, -y <= 0 therefore y >= 0
    b = [H;  0];

    y = fmincon(@(y) -s_calculate(y), 1, A, b); % In order to maximize we need to minimize the negative of the function
end