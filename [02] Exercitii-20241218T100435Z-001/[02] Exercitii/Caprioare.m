clear all
clc
close all
a = 90;
b = 140;
aEr = -3;
bEr = 3;
dim = 300;
X = (a+b)/2 +((b+a)/30)*randn(dim, 1);
error = aEr + (bEr - aEr)*rand(dim, 1);
f = @(x) (26 + (20*(x-116))./sqrt(5*(x-116).^2+800)) + error.*(0.8+1./X)
Y = f(X);
plot(X, Y, ".")
dlmwrite("Caprioare.csv", [X, Y]);
