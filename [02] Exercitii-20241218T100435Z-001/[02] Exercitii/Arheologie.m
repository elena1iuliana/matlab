clear all
clc
close all
a = 0;
b = 2*pi;
aEr = -0.5;
bEr = 0.5;
dim = 100;
T = a + (b-a)*rand(dim, 1);
error1 = aEr + (bEr - aEr)*rand(dim, 1);
error2 = aEr + (bEr - aEr)*rand(dim, 1);
X = 25 + 7*cos(T) + error1;
Y = -10 + 7*sin(T) + error2;
plot(X, Y, ".")
axis("equal")
%dlmwrite("Arheologie.csv", [X, Y]);


