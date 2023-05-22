function [f_x] = sing_function(f,n)
% SING_FUNCTION Returs the resulting values for the Singularity function
% <f>^n, which is zero for f<0 and f^2 otherwise.
%
% [f_x] = SIGN_FUNCTION(X - L./4, 2) Returns, over the X vector,
% the result of the singularity function <x - L/4>^2, which is zero for 
% x< L/4 and (x - L/4)^2 for x>= L/4

    f_x = (f >= 0) .* (f .^ n); % If f(x) greater than 0, y = f(x)^n, else y = 0
end