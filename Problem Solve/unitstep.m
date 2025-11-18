clear all;
close all;
clc;

n = -1 : 0.01 : 1;
d = -1 : 0.1 : 1;

unitstep = n >= 0;
dunitstep = d >=0;

subplot(2, 1, 1);
plot(n, unitstep, 'b', 'LineWidth', 1.5);
xlabel('Time(s)');
ylabel('u(n)');
title('Unit step - Continous time signal');

subplot(2, 1, 2);
stem(d, dunitstep, 'r', 'filled','MarkerSize', 5);
xlabel('Time(s)');
ylabel('u[n]');
title('Unit step - Discrete time signal');