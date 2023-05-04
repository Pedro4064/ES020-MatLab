function [v, theta, t] = RA215663_L05_03()
    % Constants
    g = 9.81;
    w = 300;
    h = 61;

    % System of equations where X(1) = t, X(2) = v, X(3) = theta
    f = @(X) [(X(2) .* cosd(X(3)).*X(1)) - w;
              ((-1/2).*g.*X(1).^2 + X(2) .* sind(X(3)).*X(1)) - h;
              ((-g .* X(1) + X(2) .* sind(X(3)))./(X(2) .* cosd(X(3)))) - tand(-45)
             ];

    solution = fsolve(f, [50; 50; 8]);
    t = solution(1)
    v = solution(2)
    theta = solution(3)
end