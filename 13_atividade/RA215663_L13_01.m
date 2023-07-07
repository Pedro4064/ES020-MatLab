function [w, X] = RA215663_L13_01()
 %  Clear env
 clc, clear, close all;

 % Problemn Constants
 m1 = 1.25; % Mass of car 1
 m2 = 2.50; % Mass of car 2
 m3 = m1;   % Mass of car 3

 k1 = 20;   % Elastic Coef. of spring 1
 k2 = 45;   % Elastic Coef. of spring 2
 k3 = k2;   % Elastic Coef. of spring 3
 k4 = k1;   % Elastic Coef. of spring 4

 % Matrix Initialization 
 M = zeros(3, 3);

 M(1,1) = (k1+k2)/m1;
 M(1,2) = -k2/m1;
 
 M(2,1) = -k2/m2;
 M(2,2) = (k2+k3)/m2;
 M(2,3) = -k3/m2;

 M(3,2) = -k3/m3;
 M(3,3) = (k3+k4)/m3;

 % Calculate the eig values (refering to natural frequency) and vectors
 [X,w] = eig(M); % Calculate the eig values and freq

 w = w.^(1/2);   % Caclulate the square root of eigenvalues (that are the natural frequencies)
 w = diag(w);    % Return just the diagonal as a column vector
end