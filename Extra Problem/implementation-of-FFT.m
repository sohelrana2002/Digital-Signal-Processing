clc;
clear;
close all;
                        
x = [1 2 3 4 2 1 0 1];
N = 8;                             
n = 0:N-1;  

X = fft(x, N);                       

magX = abs(X);
phaseX = angle(X);

k = 0:N-1;

subplot(3,1,1);
stem(n, x, 'filled');
title('Input Sequence x(n)');
xlabel('n'); 
ylabel('Amplitude');
xlim([-1 N]);

subplot(3,1,2);
stem(k, magX, 'filled');
title('Magnitude Spectrum |X(k)|');
xlabel('Frequency Index k'); 
ylabel('|X(k)|');
xlim([-1 N]);

subplot(3,1,3);
stem(k, phaseX, 'filled');
title('Phase Spectrum ∠X(k)');
xlabel('Frequency Index k'); 
ylabel('Phase (radians)');
xlim([-1 N]);

x_reconstructed = ifft(X, N);

disp('Original Sequence x(n):');
disp(x);

disp('Reconstructed Sequence using IFFT:');
disp(x_reconstructed);

figure;
subplot(2,1,1);
stem(n, x, 'filled');
title('Original Sequence x(n)');
xlabel('n'); ylabel('Amplitude');

subplot(2,1,2);
stem(n, real(x_reconstructed), 'filled');
title('Reconstructed Sequence using IFFT');
xlabel('n'); ylabel('Amplitude');