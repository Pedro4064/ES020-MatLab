function [h] = RA215663_L03_03()

    % Dados do problema
    ho_w = 1e3;
    ho_b = 2e2;

    r = 1;
    v_total = (4/3) .* pi .* r.^3;

    f = @(h) (v_total - (((pi .* h.^2) ./ 3) .* (3 .* r - h))) - ((ho_b .* v_total)./ho_w);
    h = fzero(f, 1);

end