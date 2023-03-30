% RA215663_L01_01 Tópicos de Mecatrônica
%   Introdução a conceitos de MATLAB.

%% PARTE A - Operação Com Matrizes

A = [2:4;3:2:7;5:-1:3];       % Gera uma matriz 3x3 onde : A primeira linha vai de 2 a 4, A segunda vai de 3 a 7 em passos de 2, A última vai de 5 a 3, decrescente
A = A';                       % Transposição da matriz criada
A(:,2) = []  ;                % Limpa todos os elementos na coluna dois
A = [A(:,2) [0 7 2]' A(:,1)]; % Muda a matriz A para que a primeira coluna seja a segunda coluna (anteriormente), a segunda seja [0 7 2] transposta e a última coluna seja a antiga primeira

%% PARTE B - Slicing
A = [1 2; 3 4; 5 6];          % Gera uma matriz 3x2
A(3, :)'                      % Retorna todos os valores na terceira linha e os transpõe para uma matriz coluna

%% PARTE C - Transposição
y = [0:0.6:4]'                % Gera uma matriz linha do zero até o 4, a passos de 0.6 e depois o transpões para uma matriz coluna

%% PARTE D - Operações Básicas com Escalares
a = 1; b = 4; c = 5;          % Inicializa as variáveis com seus respectivos valores
a + b/c                       % Faz a operação a + (b/c) devido à ordem de operações no matlab, ans = 1.8