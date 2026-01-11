clear all
clc
close all
dim = 200;
X = 0:10:dim;
Y = -150 + 20*rand(size(X));
plot(X, Y, '*r')
axis([0 dim -170 0])
dlmwrite("Paleontologie.csv", [X, Y]);
