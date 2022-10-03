clear
clc
close all

%%
x = [0 0.5 1 1.5 1 0.5 0 -0.5 -1 -1.5 -1 -0.5 0 0.5 1 1.5 1 0.5 0 -0.5 -1 -1.5 -1 -0.5 0 0.5 1 1.5 1 0.5 0 -0.5 -1 -1.5 -1 -0.5 0 0.5 1 1.5 1 0.5 0 -0.5 -1 -1.5 -1 -0.5 0];
N = length(x);

y(1) = -2.5;

for ni = 2:N
y(ni) = y(ni-1) + x(ni);
end

n = -1:N-2;

figure
subplot(2,1,1)
stem(n,y,'filled','k');
xlabel('n');
ylabel('y[n]')
grid on
ylim([-3 2.5])

subplot(2,1,2)
stem(n,x,'filled','r')
xlabel('n')
ylabel('y[n]')
grid on
ylim([-3 2.5])
