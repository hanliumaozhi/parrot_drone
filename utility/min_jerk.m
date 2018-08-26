function output = min_jerk(xi, xf, t)
% Generate a minimum jerk trajectory from xi to xf.
% xi: starting position, 1x1 matrix
% xf: final position, 1x1 matrix
% t: the time vector, Nx1 matrix
% output: the generated trajectory, Nx1 matrix

d = (t(end)-t(1));
N = length(t);
a = repmat((xf - xi), N, 1);
b = repmat((10 * ((t-t(1))/d).^3 - 15 * ((t-t(1))/d).^4 + 6 * ((t-t(1))/d).^5)',1,1);
output = repmat(xi, N, 1) + a .* b;

end