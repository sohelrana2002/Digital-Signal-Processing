clear all;
close all;
clc;

f = 50;
t = 0 : 0.0001 : 0.01;
y = 20*sin(30*pi*f*t);

subplot(1, 1, 1);
stem(t, y, "g", "filled", "MarkerSize", 5);
xlabel("Time (s)");
ylabel("f(t)");
title("f(t) = (20sin(30*pi*f*t) - Discrete Time Unit");