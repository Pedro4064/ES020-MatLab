function [S] = s_calculate(y)

    B = 54e-3;
    H = 75e-3;

    a = (B .* (H - y))./H; % Base do Retangulo
    b = (B - a)./2;        % Base do Triangulo
    A = ((B + a) .* y)./2; % Area

    Qx = ((a .* y).*y)./2 + (2.*((b.*y)./2) .* y)./3; % Primeiro Momento

    d = Qx ./ A; % Location do centroid
    c = y - d;   % Distancia para calculo do S

    Ix = (a .* y.^3)./3 + 2.*(b.*y.^3)./12; % Segudno Momento
    Ix_bar = Ix - A .* d.^2;                % Teoria dos Eixos Paralelos

    S = Ix_bar ./ c;                        %Modulo de Resistencia a flxao

end