clear all
clc
A = [1 2 3 4 1 3; 4 5 6 3 4 5; 7 8 1 1 2 1; 1 4 -1 -3 4 5; -1 3 0 3 1 9; 1 4 1 7 4 1]
b = [3 4 5 1 6 1]'
printf("Factorizarea LU \n")
[L U] = FactorizareLU(A)
[B c] = GEM(A, b)
x = upperSolve(B, c)
A*x - b
B*x - c
printf("Pivotare partiala \n")
[L U P] = FactorizareLUPivotarePartiala(A)
P*A - L*U
y = lowerSolve(L, P*b)
x = upperSolve(U, y)
A*x - b
