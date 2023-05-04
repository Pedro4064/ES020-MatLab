function [R,a,b] = RA215663_L05_01()

% Known points of the circle
X = [-4.30 5.22 -1.14];
Y = [3.06  -3.30 2.27];

% System of equations where C(1)=a, C(2)=b and C(3)=R
circle_function = @(C) (X - C(1)).^2 + (Y - C(2)).^2 - C(3).^2;
solution = fsolve(circle_function,[1 1 1]);

a = solution(1);
b = solution(2);
R = solution(3);

end