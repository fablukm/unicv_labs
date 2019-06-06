clear all, close all

x = linspace(-5, 5, 1e3);
relu = 1./(1+exp(-x));

ax = linspace(-5,5,1e3);

plot(x, relu, 'k-', 0*ax, ax, 'k:', ax, 0*ax, 'k:')
xlabel('x')
ylabel('\sigma(x)')
axis([-5, 5, -.1, 1.1])