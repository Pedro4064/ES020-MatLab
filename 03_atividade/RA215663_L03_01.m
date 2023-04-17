function [d] = RA215663_L03_01()
 % seu código aqui

 k1 = 40e3;
 k2 = 40;

 m = 95;
 g = 9.81;
 h = 0.43;

 y = @(d) ((2 .* k2 .* d .^(5/2)) ./ 5) + ((1/2) .* k1 .* d.^2) - (m .* g .* d) - (m .* g .* h);
 d = fzero(y, 1);
end