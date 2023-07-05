function [t, y] = RA215663_L09_02(A0, T, n)
 %  Clear env
 clc, close all;
 
 % Create param. vectors
 t = [0:0.01:4*pi]';
 N = 1:n;

 % Problem functions
 A = @(t) (4*A0)./((2.* N - 1) * pi);
 B = @(t) sin((2 * pi * (2 .* N - 1) .* t) ./ (T));

 y = sum(A(t) .* B(t), 2);

end