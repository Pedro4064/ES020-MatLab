function [L, Izz, M0, h, b] = modeling_data_gen(d)
% MODELING_DATA_GEN Generates all the necessay parameters for the modeling
% of a beam
% [L, Izz, M0] = MODELING_DATA_GEN([2 1 5 6 6 3]) Returns L = length, Izz =
% Second Area Moment of Inertia, M0 = Moment being applied

    % Calculate L
    L = 10 .* d(5) + d(6);
    
    % Calculate Izz
    b = (10 .* d(3) + 2 .* d(4)) .* 1e-2;
    h = 3 .* b;
    Izz = (b .* h.^3)./12;

    % Calculate M0
    M0 = (10 .* d(1) + d(2)) .* 1e3;

end