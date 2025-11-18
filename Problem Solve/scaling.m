clear all;
close all;
clc;

sample = [-3, 2, 4, 1, 2, 0, 4, -5, 7];
n1 = -3:5;

scaled = [];
n2 = [];

for i = 1:length(n1)
    x = 3 * n1(i);
    selected = find(n1 == x);
    if ~isempty(selected)
        n2 = [n2, x];
        scaled = [scaled, sample(selected)]
    end
end

n2 = n2 / 3;

subplot(2, 1, 1);
stem(n1, sample, 'b','filled','MarkerSize', 5, 'linewidth', 2);
title('Original signal');
xlabel('n');
ylabel('amplitude');
grid on;
xlim([-4, 6]);
ylim([-6, 8]);

subplot(2, 1, 2);
stem(n2, scaled, 'b', 'linewidth', 2);
title('Time scaled signal: x(2n)');
xlabel('n');
ylabel('amplitude');
grid on;
xlim([-4, 6]);
ylim([-6, 8]);