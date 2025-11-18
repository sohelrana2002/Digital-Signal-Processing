clear all;
close all;
clc;

t = -1 : 0.01 : 1;
d = -1 : 0.1 : 1;

unitimpulse = t == 0;
dunitimpulse = d == 0;

subplot(2, 1, 1);
plot(t, unitimpulse, 'b', 'LineWidth', 1.5);
xlabel('Time(s)');
ylabel('del(n)');
title('Unit impulse - Continous time signal');

subplot(2, 1, 2);
stem(d, dunitimpulse, 'r', 'filled', 'MarkerSize', 5);
xlabel('Time(s)');
ylabel('del[n]');
title('Unit impulse - Discrete time signal');