clear all, close all

%% define pts
x = [0, 50, 100, 150, 200, 250, 300, 350, 400, 450, 500];
y = [20, 10, 5,   3,   2,    1,  .5,  .25,.125, 1/16, 1/32;
     20, 16, 13, 11,  8,   7,    5,   4,   2,   1.5,  1.25;
     20, 9, 7,   5, 4.5, 4.25,   4, 3.8, 3.7, 3.5, 3.2;
     20, 8, 6.5, 13, 25, nan, nan, nan,  nan,  nan, nan]+3;

%%pl
figure()
plot(x, y(1,:), 'ko-', ...
     x, y(2,:), 'bo-', ...
     x, y(3,:), 'ro-', ...
     x, y(4,:), 'go-', ...
     x, 0*x+3, 'k:')
legend(["Good \alpha", "Low \alpha", "Large \alpha", "Huge \alpha"]);
set(gca, 'ytick', []);
axis([-1 501 0 25])
xlabel('Epochs')
ylabel('Loss')
