function [f_x] = sing_function(x, f, n)
% SING_FUNCTION Returs the resulting values for the Singularity function
% <f>^n over the x domain.
%
% [f_x] = SIGN_FUNCTION(0:10, @(x) x - L./4, 2) Returns, over the x vector,
% the result of the singularity function <x - L/4>^2, which is zero for 
% x< L/4 and (x - L/4)^2 for x>= L/4

    f_x = (f(x) >= 0) .* (f(x) .^ n); % If f(x) greater than 0, y = f(x)^n, else y = 0
end