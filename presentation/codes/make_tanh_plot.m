clear all, close all

x = linspace(-5, 5, 1e3);
res = tanh(x);

ax = linspace(-5,5,1e3);

plot(x, res, 'k-', 0*ax, ax, 'k:', ax, 0*x, 'k:')
xlabel('x')
ylabel('tanh(x)')
axis([-5, 5, -1.1, 1.1])