clear all;
close all;
clc;

t = (-1:0.01:1);
d = (-1:0.1:1);

unitstep = t >= 0;
impulse = t == 0;
unitramp = t.*unitstep;

dunitstep = d >= 0;
dimpulse = d == 0;
dunitramp = d.*dunitstep;

subplot(4, 2, 1);
plot(t, unitstep, "b", "LineWidth", 1.5);
xlabel("Time (s)");
ylabel("u(t)");
title("Unit step - Continous Time Unit")

subplot(4, 2, 3);
plot(t, impulse, "b", "LineWidth", 1.5);
xlabel("Time (s)");
ylabel("i(t)");
title("Impluse - Continous Time Unit")

subplot(4, 2, 5);
plot(t, unitramp, "b", "LineWidth", 1.5);
xlabel("Time (s)");
ylabel("r(t)");
title("Ramp - Continous Time Unit");

f = 50;
t_c = 0:0.000001:0.01;
y_c = 20*sin(30*pi*f*t_c);

subplot(4, 2, 7);
plot(t_c, y_c, "b", "LineWidth", 1.5);
xlabel("Time (s)");
ylabel("f(t)");
title("Continous Sig. f(t) = (20sin(30*pi*f*t) - Continous Time Unit");


subplot(4, 2, 2);
stem(d, dunitstep, "g", "filled", "MarkerSize", 5);
xlabel("Time (s)");
ylabel("u[t]");
title("Unit step - Discrete Time Unit")

subplot(4, 2, 4);
stem(d, dimpulse, "g", "filled", "MarkerSize", 5);
xlabel("Time (s)");
ylabel("i[t]");
title("Impluse - Discrete Time Unit")

subplot(4, 2, 6);
stem(d, dunitramp, "g", "filled", "MarkerSize", 5);
xlabel("Time (s)");
ylabel("r[t]");
title("Ramp - Discrete Time Unit")

t_d = 0:0.0001:0.01;
y_d = 20*sin(30*pi*f*t_d);

subplot(4, 2, 8);
stem(t_d, y_d, "g", "filled", "MarkerSize", 5);
xlabel("Time (s)");
ylabel("f(t)");
title("Discrete Sig. f(t) = (20sin(30*pi*f*t) - Discrete Time Unit");
