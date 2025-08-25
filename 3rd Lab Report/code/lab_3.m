clear all;
close all;
clc;

n = (-5: 1: 5);
x = [13, 8, 7, 2, 0, 10, -4, -8, 6, -5, 14];

subplot(3, 1, 1);
stem(n, x);
title("Orginal signal x[n]");
xlabel("Time (t)")
ylabel("Amplitude");
xlim([-8, 8]);
ylim([-15, 15]);

grid on;
grid minor;

n1 = n + 2;
subplot(3, 1, 2);
stem(n1, x);
title("Right shift signal x[n - 2]");
xlabel("Time (t)");
ylabel("Amplitude");
xlim([-8, 8]);
ylim([-15, 15]);

grid on;
grid minor;

n2 = n - 3;
subplot(3, 1, 3);
stem(n2, x);
title("Left shift signal x[n + 3]");
xlabel("Time (t)");
ylabel("Amplitude");
xlim([-8, 8]);
ylim([-15, 15]);

grid on;
grid minor;