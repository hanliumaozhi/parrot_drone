addpath('utility\');

t = 0:0.005:41;

% z axis is down, begin is -0.046

z_up = single(ones(size(0:0.005:10, 2), 1)*-1.5);
%z_up = single(min_jerk(-0.046, -1.1, 0:0.005:10));
z_down = single(min_jerk(-1.5, -0.046, 30:0.005:40));
z_hold = single(ones(size(10.005:0.005:29.995, 2), 1)*-1.5);
z_touchdown = single(ones(size(40.005:0.005:41, 2), 1)*1.5);
x_and_y = single(zeros(size(t, 2), 1));
trajectory = timeseries([x_and_y, x_and_y, [z_up; z_hold; z_down;z_touchdown]], t);

