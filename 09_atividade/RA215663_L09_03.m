function [dt, tn, df, fmin, fmax, h] = RA215663_L09_03()
    %  Clear env
    clc, close all;

    % Problem data
    n = 64;
    fs = 128;
    dt = 1/fs;
    tn = n/fs;
    t = (0:n-1)/fs;
    f = 1.5 + 1.8 * cos(2*pi*(12).*t) + 0.8 * sin(2*pi*(20).*t) - 1.25 * cos(2*pi*(28).*t);
    
    fmax = 0.5 * fs;
    fmin = 1/tn;
    df = fmax-fmin;
    
    % FFT Analysis
    ff = fft(f, n) / n;
    ff = ff(1:n/2);
    
    freq = linspace(fmin, fmax, n/2);
    
    % PLotting
    subplot(2, 1, 1);
    stem(freq, abs(ff));
    ylabel('Magnitude [abs]');

    subplot(2, 1, 2);
    stem(freq, angle(ff));
    xlabel('frequency [Hz]'), ylabel('phase [^\circ]');

    sgtitle('Fast Fourier Analysis');
    h = gcf;

end