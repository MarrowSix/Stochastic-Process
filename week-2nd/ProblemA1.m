% The pratice of stochastic process
% with problem A's 1
% Author: LiuHao
% Email: liuh295@mail2.sysu.edu.cn
% Platform: Matlab R2014a

% Create bino distribution object
binoobj_1 = makedist('Binomial', 4, 0.25);
binoobj_2 = makedist('Binomial', 20, 0.25);
binoobj_3 = makedist('Binomial', 50, 0.25);

% Calculate the cdf of these distribution
x = -1:20;
cdf_bino_1 = cdf(binoobj_1, x);
cdf_bino_2 = cdf(binoobj_2, x);
cdf_bino_3 = cdf(binoobj_3, x);

% Drawing the graphics
figure;
stairs(x/4, cdf_bino_1, 'Color', 'r', 'LineStyle', '--');
grid on;
hold on;
xlim([0,1]);
stairs(x/20, cdf_bino_2, 'Color', 'b', 'LineStyle', '-.');
stairs(x/50, cdf_bino_3, 'Color', 'k');

temp = legend('n=4', 'n=20', 'n=50');
set(temp, 'Location', 'SouthEast');