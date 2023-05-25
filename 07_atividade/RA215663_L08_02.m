function [ha, vb] = RA215663_L08_02()
 % Calculates the K and m values for a problem
 clc, clear all;

 % Collected Data
 v = [0.13730 0.14222 0.14710];
 h = [286.24 295.45 304.79];

 % Calculate Height 
 ha = interp1(v, h, 0.141);

 % Calculate V
 vb = interp1(h, v, 300);
end