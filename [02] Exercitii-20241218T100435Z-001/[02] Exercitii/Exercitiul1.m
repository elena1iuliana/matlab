clear all
clc
close all
hold on
a = 1;
b = 30;
aEr = -1200;
bEr = 1200;
dim = 100;
X = a + (b-a)*rand(dim, 1);
error = aEr + (bEr - aEr)*rand(dim, 1);
Y = 4000 + 300*X + error;
%plot(X, Y, ".")
%dlmwrite("Exercitiul1.csv", [X, Y]);
Z = dlmread("Exercitiul1.csv");
%plot(Z(:, 1), Z(:, 2), ".r")
YY = 4000 + 20*X.^2 + error;
plot(X, YY, ".")
%dlmwrite("Exercitiul1v2.csv", [X, YY]);
