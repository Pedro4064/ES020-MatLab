function [P_crit, V] = RA215663_L13_02()
 %  Clear env
 clc, clear, close all;

 % Problemn Constants
 E = 10e9;
 I = 1.5e-5;
 L = 3.5;
 Dx = L/5;

 % Matrix Initialization 
 A = zeros(4,4);

 A(1,1) = 2/(Dx^2);
 A(1,2) = -1/(Dx^2);

 A(2,1) = A(1,2);
 A(2,2) = A(1,1);
 A(2,3) = A(1,2);

 A(3,2) = A(1,2);
 A(3,3) = A(1,1);
 A(3,4) = A(1,2);

 A(4,3) = A(1,2);
 A(4,4) = A(1,1);

 % Calculate eig values and vectors
 [V, w] = eig(A);
 w = diag(w);

 P_crit = E .* I .* w

end