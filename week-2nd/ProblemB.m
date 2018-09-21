% The pratice of stochastic process
% with problem B
% Author: LiuHao
% Email: liuh295@mail2.sysu.edu.cn
% Platform: Matlab R2014a

result = exprnd(1, [5, 10]);

for i = 1:5
    for j = 2:10
        result(i,j) = result(i,j) +  result(i,j-1);
    end
end

y = [0:10];
figure;
% for i = 1:5
%     x = result(i,:);
%     stairs(x,y);
%     hold on;
% end
x = [0,result(1, :)];
stairs(x, y, 'Color', 'm');
hold on;
x = [0,result(2, :)];
stairs(x, y, 'Color', 'c');
x = [0,result(3, :)];
stairs(x, y, 'Color', 'r');
x = [0,result(4, :)];
stairs(x, y, 'Color', 'g');
x = [0,result(5, :)];
stairs(x, y, 'Color', 'b');

temp = legend('1st', '2nd', '3th', '4th', '5th');
set(temp, 'Location', 'SouthEast');