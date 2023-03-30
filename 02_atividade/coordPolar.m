function [r,theta] = coordPolar(x,y)
% COORDPOLAR transforma coordenadas retangulares em polar
%
% [r, theta] = coordPolar(x,y) retornar o r e theta, respectivamente, para
% as coordenadas retangulares/cartesianas x,y
%
% See also CART2POL

%  Calculate the radius
r = sqrt(x^2 + y^2);

% Calculate the angle, keeping in mind
arc_tan = @(x) meu_atan(x, 1e-10);

    switch true
    
        case x<0 && y>0
            theta = arc_tan(y/x) + pi;
        
        case x<0 && y<0
            theta = arc_tan(y/x) - pi;
        
        case x<0 && y ==0
            theta = pi;
        
        case x == 0 && y>0
            theta = pi/2;
    
        case x == 0 && y < 0
            theta = -pi*2;
        
        case x == 0 && y == 0
            theta = 0;
        
        otherwise
            theta = arc_tan(y/x);
    end
end