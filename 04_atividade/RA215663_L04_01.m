function [F] = RA215663_L04_01()

    % Relations between Variable and columns on matrix
    AB = 1;
    BC = 2;
    AD = 3;
    BD = 4;
    CD = 5;
    DE = 6;
    CE = 7;
    Ax = 8;
    Ay = 9;
    Ey = 10;

    % Base Matrixs
    A  = zeros(10, 10); % Matrix containing coeficients
    Fr = zeros(10, 1);  % Matrix containing resulting forces
    F  = zeros(10, 1);  % Matrix containing Node Forces variables
    

    % Coeficient matrix population
    A(1, Ax) = 1;
    A(1, AD) = 1;

    A(2, Ay) = 1;
    A(2, AB) = 1;

    A(3, BC) = 1;
    A(3, BD) = (3/5);
    Fr(3, 1) = -74;

    A(4, AB) = -1;
    A(4, BD) = (-4/5);

    A(5, BC) = -1;
    A(5, CE) = (3/5);

    A(6, CD) = -1;
    A(6, CE) = (-4/5);
    Fr(6, 1) = +24;

    A(7, AD) = -1;
    A(7, DE) = +1;
    A(7, BD) = (-3/5);

    A(8, CD) = 1;
    A(8, BD) = (4/5);

    A(9, DE) = -1;
    A(9, CE) = (-3/5);

    A(10, Ey) = 1;
    A(10, CE) = (4/5);

    % Solução do sistema
    F = A\Fr

end