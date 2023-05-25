function [K, m] = RA215663_L08_01()
 % Calculates the K and m values for a problem
 clc, clear all;
 
 % Constants
 A0 = 1.25e-4;
 L0 = 0.0125;

 % Measures Data
 F = 1e3  * [24.6 29.3 31.5 33.3 34.8 35.7 36.6 37.5 38.8 39.6 40.4];
 L=  1e-3 *[12.58 12.82 12.91 12.95 13.05 13.21 13.35 13.49 14.08 14.21 14.48];

 % Calculated values
 sigma = (F./A0).*(L./L0);
 def   = log(L./L0);

 % Since they have a log relation, take the log of all datapoints to
 % liearize them and use a linear interpolation approach
 ln_sigma = log(sigma);
 ln_def   = log(def);

 coef = polyfit(ln_def, ln_sigma, 1);
 m = coef(1);
 K = exp(coef(2));

end