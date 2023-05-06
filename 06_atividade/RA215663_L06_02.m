function [x1,x2] = RA215663_L06_02()
    clc, clear;
    
    ka = 9e2;
    kb = 2e2;

    La = 10e-2;
    Lb = 10e-2;

    F1 = 2;
    F2 = 4;

    U = @(X) ((1/2) .* ka .* sqrt(X(1).^2 + (La - X(2)).^2) - La).^2 + ((1/2) .* kb .* sqrt(X(1).^2 + (Lb + X(2)).^2) - Lb).^2 -F1.*X(1) -F2.*X(2);

    result = fminsearch(U, [1 1]);
    x1 = result(1);
    x2 = result(2);

end