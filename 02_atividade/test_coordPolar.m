x = [2 2 0 -3 -2 -1 0 0 2];
y = [0 1 3 1 0 -2 0 -2 2];

tic
[target_theta, target_r]  = cart2pol(x, y);
toc

tic
[testing_r, testing_theta] = arrayfun(@coordPolar, x, y);
toc

a = [target_r' testing_r'];
b = [target_theta' testing_theta'];