clear all
clc
close all
a = 0;
b = 100;
aEr = -6;
bEr = 0;
dim = 200;
X = (a+b)/2 +((a+b)/6)*randn(dim, 1);
error = aEr + (bEr - aEr)*rand(dim, 1);
f = @(x)(410/sqrt(2*16.53^2*pi)*e.^(-((X-50).^2)./(2*16.53^2)))
Y = f(X)+error.*X.*(100-X)./10000;
plot(X, Y, ".")
%dlmwrite("Padure.csv", [X, Y]);
