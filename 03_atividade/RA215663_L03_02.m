function [H] = RA215663_L03_02()
 % Constantes
 g = 9.81;
 
 L = 4;
 V = 5;
 t = 2.5;

 % Função de v(t) na forma homogênea, para podermos achar a função fzero
 % para achar o H tal que a velocidade = V
 f = @(H) sqrt(2 .* g .* H) .* tanh(sqrt((2 .* g .* H) ./ (2 .* L)) .* t) - V;

 H = fzero(f, 2);
end