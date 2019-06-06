clear all, close all

eta = [0,-10, 0]
g = eta*0;

for k = 1:length(eta)
    g(k)=exp(eta(k))/(sum(exp(eta)));
end
g