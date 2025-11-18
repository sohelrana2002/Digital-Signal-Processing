clear all;
close all;
clc;

n = 0 : 3;

unitstep = n >= 0;
unitRamp = n.*unitstep;

subplot(1, 1, 1);
stem(n, unitRamp, 'r', 'filled','MarkerSize', 5);
xlabel('Time(s)');
ylabel('Ur[n]');
title('Unit step - Discrete time signal');
xlim([-1, 4]);
ylim([-1, 4]);