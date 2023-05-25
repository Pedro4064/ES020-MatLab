function [Ta, Tb] = RA215663_L08_03()
    % Calculates the K and m values for a problem
    clc, clear all;

    % Collected Data
    x = [0 2 4 6 8];
    y = [0 2 4 6 8];
    T = [100.00 90.00 80.00 70.00 60.00
        85.00 64.49 53.50 48.15 50.00
        70.00 48.90 38.43 35.03 40.00
        55.00 38.78 30.39 27.07 30.00
        40.00 35.00 30.00 25.00 20.00];

    % Iterpolate to find non measured values
    Ta = interp2(x, y, T, 6.0, 5.4);
    Tb = interp2(x, y, T, 1.6, 3.2);
end