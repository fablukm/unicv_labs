clear all, close all

xax=.01:.01:1;
opt = 3*(xax - .5).^2 + .6;
bias = (xax-1.02).^2 +.1 ;
var = xax.^2 + .1;

baly = -1:.1:10;
balx = .5+0*baly;

plot(xax, opt, 'k-', xax, bias, 'r-', xax, var, 'b-', balx, baly, 'k:')
legend(["Total Error", "Squared Bias", "Variance", "Perfect Balance"],"Location", "Best")
axis([-.1, 1.1, -.1, 1.4])
xlabel("Complexity")
ylabel("Error")
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])