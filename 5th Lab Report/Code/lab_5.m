clear all;
close all;
clc;

x = [2, 3, -1, -4, 5, 7, -6];
n1 = -2 : 4;

h = [1, 2, 3, 4, 6];
n2 = -2 : 2;

y = conv(x, h);
y_n = n1(1) + n2(1) : n1(end) + n2(end);

subplot(3, 1, 1);
stem(n1, x, 'b', 'lineWidth', 1.5);
title('Input Signal x(n):');
xlim([-3, 5]);
ylim([-10, 10]);


subplot(3, 1, 2);
stem(n2, h, 'red', 'lineWidth', 1.5);
title('Impulse Response Orginal h(n):');
xlim([-3, 3]);
ylim([-10, 10]);


subplot(3, 1, 3);
stem(y_n, y, 'g', 'lineWidth', 1.5);
title('Output y(n) = x(n) * h(n):');
xlim([-5,7]);
ylim([-60, 60]);
