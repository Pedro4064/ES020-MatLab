function [theta] = RA215663_L05_02()
    % Param value
    t_3 = 75;

    % System of equations
    f_x = @(x) [150 .* cos(deg2rad(x(1))) + 180 .* cos(deg2rad(x(2))) - 200 .* cos(deg2rad(t_3)) - 200;
                150 .* sin(deg2rad(x(1))) + 180 .* sin(deg2rad(x(2))) - 200 .* sin(deg2rad(t_3))];

    % Solving the system of equations
    solution = fsolve(f_x, [1 1]);
    theta = solution';
end