clear all, close all

x = linspace(-5, 5, 1e3);
relu = x.*(x>=0);

ax = linspace(-5,5,1e3);

plot(x, relu, 'k-', 0*ax, ax, 'k:')
xlabel('x')
ylabel('ReLu(x)')
axis([-5, 5, -.5, 5])