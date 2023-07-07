function [L, B, a, w0, E] = dados_de_entrada(RA, T)
% DADOS_DE_ENTRADA returns all the necessary information to solve the
% problem by passing your RA (as string) and saved data (as table)
%
%   [L, B, a, w0, E] = dados_de_entrada('215663', T) returns the data for
%   the student with RA 215663

target_data = T(strcmp(T.RA, RA), :);

L  = target_data.L;
B  = target_data.B;
a  = target_data.a;
w0 = target_data.w0;
E  = target_data.E;

end