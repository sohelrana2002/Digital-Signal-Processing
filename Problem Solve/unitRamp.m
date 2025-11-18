clear all;
close all;
clc;

n = -1 : 0.01 : 1;
d = -1 : 0.1 : 1;

unitstep = n >= 0;
dunitstep = d >= 0;

unitRamp = n.*unitstep;
dunitRamp = d.*dunitstep;

subplot(2, 1, 1);
plot(n, unitRamp, 'b', 'LineWidth', 1.5);
xlabel('Time(s)');
ylabel('Ur(n)');
title('Unit step - Continous time signal');

subplot(2, 1, 2);
stem(d, dunitRamp, 'r', 'filled','MarkerSize', 5);
xlabel('Time(s)');
ylabel('Ur[n]');
title('Unit step - Discrete time signal');