clear all;
close all;
clc;

x = [13, 8, 7, 2, 0, 10, -4, -8, 6, -5, 14];
n = -5 : 1 : 5;

subplot(2, 1, 1);
stem(n, x, 'r');
xlabel('Time(s)');
ylabel('Amplitude');
title('Orginal signal');
xlim([-6, 6]);
ylim([-9, 15]);


n2 = n + 2;

subplot(2, 1, 2);
stem(n2, x, 'r');
xlabel('Time(s)');
ylabel('Amplitude');
title('Delay by 2 unit');
xlim([-4, 8]);
ylim([-9, 15]);