clear
clc
close all

%%
for ni = 1:5 %1 = 0
x(ni) = (1/2)^(ni-1);
end
N = length(x);

y(1) = 8;

for ni = 2:N %y(1) -> ni = 2
y(ni) = x(ni-1) + (1/4)*y(ni-1);
end

n = -1:N-2;
figure
subplot(2,1,1)
stem(n,y,'filled','k');
xlabel('n');
ylabel('y[n]')
grid on
ylim([-1 8])
xlim([-1 3])

n = 0:N-1;
subplot(2,1,2)
stem(n,x,'filled','r')
xlabel('n')
ylabel('x[n]')
grid on
ylim([-1 4])
xlim([0 4])
