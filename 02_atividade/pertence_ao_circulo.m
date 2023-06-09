function [saida] = pertence_ao_circulo(xy)
% PERTENCE_AO_CIRCULO checa se os pontos fazem parte do primeiro quadrante
% do circulo unitário ou não.
%
%   [saida] = PERTENCE_AO_CIRCUITO([1 2; 3 4]) checa se os pontos {1,3} e
%   {2,4} fazem parte do primeiro quadrante do círculo unitário, retorna
%   uma matriz linha contendo 1 se faz parte e 0 se não faz parte para cada
%   par de pontos.
%


%  Primeiro, para facilitar a leitura, iremos separar a entrada em duas
x = xy(1, :);
y = xy(2, :);

% Agora podemos verificar se está dentro do circulo de uma maneira vetorizada
% Para tal, podemos usar logic indexing por ser mais otizado que um for
% loop, mas que também poderia ser uilizando usando for index = 1:length(xy)
% e a partir disso usar indexing normal para fazer a verificação e
% construir uma matriz saida se passar em todos os testes com 1 else 0
saida = (x >= 0 & y >= 0) & ((x.^2 + y.^2) <= 1);

end