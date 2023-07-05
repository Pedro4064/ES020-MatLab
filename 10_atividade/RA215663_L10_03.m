function [v_206, a_206] = RA215663_L10_03()
% Calculate the total length L necessary for the stell sheet

% Clear workspace before function start
clc, clear all;

% Recorded Data
T = [200:2:210];
THETA = [0.75 0.72 0.7 0.68 0.67 0.66];
R = [5120 5370 5560 5800 6030 6240];

% Calculate the derivatives
theta_ponto = [0, diff(THETA)/2];          % First derivative of theta
theta_2pontos = [0, diff(theta_ponto)/2];  % Second derivative of theta

r_ponto = [0, diff(R)/2];                  % First derivative of R
r_2ponto = [0, diff(r_ponto)/2];           % Second derivative of R


% Calculate the vector and acceleration vectors
v = [r_ponto; R.*theta_ponto];
a = [(r_2ponto-R.*theta_ponto.^2); (R.*theta_2pontos+2.*r_ponto.*theta_ponto)];

v_206 = v(:,4)  % Specify the target return velocity vector
a_206 = a(:,4)  % Specify the target return acceleration vector
end