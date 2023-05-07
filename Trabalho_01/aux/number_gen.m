function [n] = number_gen(RA)
% NUMBER_GEN Returs the numbers to be used for beam modeling
%   [n] = NUMBER_GEN('215663') Returns [2 1 5 6 6 3], 1x6 row vector

    s_RA  = regexp(RA, '\d', 'match'); % Get as a cell array all the number charcters on the string
    s_RA  = string(join(s_RA, ' '));   % Join all the char separated with a space to be compliant with the str2 num function

    n = str2num(s_RA);                 % Convert the number from char to numeric
end