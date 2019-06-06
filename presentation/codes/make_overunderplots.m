clear all, close all

n=20;
noise_weight = .75;

x = sort(rand([n, 1]));
noise = rand([n,1]);
y = -(2*(x-1/2)).^2+.5;
y_noised = y.*(1+noise_weight*noise);


xax = 0:.01:1;

pol=polyfit(x, y_noised, 12);
y_over = polyval(pol, xax);

plot(xax, -(2*(xax-.5)).^2+.5, 'k-',...
    xax, 0*xax+mean(y_noised), 'g-',...
    xax, y_over, 'r-',...
    x, y_noised, 'kx')
xlabel('x')
ylabel('y')
legend(["Perfect fit", "Underfit", "Overfit"])
ylabel("Error")
set(gca,'xtick',[])
set(gca,'xticklabel',[])
set(gca,'ytick',[])
set(gca,'yticklabel',[])