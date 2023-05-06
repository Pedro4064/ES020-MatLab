function [ri] = RA215663_L06_01()
    clc, clear;

    q    = 80;
    rw   = 7.5e-3;
    k    = 0.18;
    h    = 14;
    Tair = 298;

    T = @(ri) Tair + (q/(2*pi)).*((1/k) .* log((rw+ri)./(rw)) + ((1/h) .* (1./(rw + ri))));
    ri = fminunc(T, 1e-2);
end