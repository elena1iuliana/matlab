clear all
clc
close all
a = 20;
b = 40;
aEr = -50;
bEr = 50;
dim = 300;
X = a + (b-a)*rand(dim, 1);
error = aEr + (bEr - aEr)*rand(dim, 1);
