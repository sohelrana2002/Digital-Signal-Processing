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
stem(n1, x, 'r', 'LineWidth', 2);
xlabel('Time(s)');
ylabel('Amplitude');
title('Input signal');
xlim([-3, 5]);
ylim([-7, 8]);

subplot(3, 1, 2);
stem(n2, h, 'r', 'LineWidth', 2);
xlabel('Time(s)');
ylabel('Amplitude');
title('Impulse response');
xlim([-3, 3]);
ylim([-1, 7]);

subplot(3, 1, 3);
stem(y_n, y, 'r', 'LineWidth', 2);
xlabel('Time(s)');
ylabel('Amplitude');
title('Impulse response');
xlim([-5, 7]);
ylim([-60, 60]);