clc;
clear;
close all;

x1 = [1 2 3 4];
x2 = [1 1 1 1];

N = length(x1) + length(x2) - 1;

X1 = fft(x1, N);
X2 = fft(x2, N);


Y = X1 .* X2;

y = ifft(Y);

disp('x1(n) = ');
disp(x1);
disp('x2(n) = ');
disp(x2);
disp('Convolved Output y(n) = ');
disp(y);

subplot(3,1,1);
stem(x1, 'filled');
title('Input Sequence x1(n)');
xlabel('n'); ylabel('Amplitude');

subplot(3,1,2);
stem(x2, 'filled');
title('Input Sequence x2(n)');
xlabel('n'); ylabel('Amplitude');

subplot(3,1,3);
stem(real(y), 'filled');
title('Linear Convolution using Frequency Domain');
xlabel('n'); ylabel('Amplitude');