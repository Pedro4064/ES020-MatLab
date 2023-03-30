function [atan_x] = meu_atan(x,eps)
 %

 % First check if value x is within the series domain
 % If not, use its identity for the inverse of x, as seen bellow
 if abs(x) > 1
     atan_x = pi/2 - meu_atan(1./x, eps);
     return 
 end
 
 % If within domain, set Starting Values for the summation
 n = 0;                % Index of the sum
 sign = 1;             % The number that determines if it is a sum or subtratrcion
 atan_x = 0;           % The final sum
 in_range = true;      % Stopping criteria
 numerator = x;        % The numeator for the serires, starts at x
 
 while in_range

     % To make it easier so we can compare later with the stopping
     % condition, we calculate the current summation element first and then
     % we add with the rest of the summed values
     current_element = (numerator ./ (2*n + 1));  % The element inside de summation for the current n
     atan_x = atan_x + (sign .* current_element); % Add the current calculated element to the rest of the summed values

 
    % Update values for next iteration
    numerator = numerator .* (x .* x);
    in_range = current_element > eps;
    sign = -sign;
    n = n + 1;
 end
end