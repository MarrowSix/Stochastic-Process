% The pratice of stochastic process
% with problem A's 2
% Author: LiuHao
% Email: liuh295@mail2.sysu.edu.cn
% Platform: Matlab R2014a

mean = 0.25;
variance = 3/16;

% Create bino distribution object
binoobj_1 = makedist('Binomial', 4, 0.25);
binoobj_2 = makedist('Binomial', 20, 0.25);
binoobj_3 = makedist('Binomial', 50, 0.25);

% Calculate the cdf of these distribution
x = -1:20;
cdf_bino_1 = cdf(binoobj_1, x);
cdf_bino_2 = cdf(binoobj_2, x);
cdf_bino_3 = cdf(binoobj_3, x);

figure;
x1 = (x - 4*mean) / sqrt(4*variance);
x2 = (x - 20*mean) / sqrt(20*variance);
x3 = (x - 50*mean) / sqrt(50*variance);
stairs(x1, cdf_bino_1, 'Color', 'r', 'LineStyle', '--');
grid on;
hold on;
stairs(x2, cdf_bino_2, 'Color', 'b', 'LineStyle', '-.');
stairs(x3, cdf_bino_3, 'Color', 'k');
xlim([-5,5]);

temp = legend('n=4', 'n=20', 'n=50');
set(temp, 'Location', 'SouthEast');