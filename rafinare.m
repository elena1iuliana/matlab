function  x = rafinare(A, b)
x = RezolvareSistemCuPivotare(A, b);
x = x(:);
z = RezolvareSistemCuPivotare(A, b - A * x);
z = z(:);
x = x + z;
tol = 10^-3
while norm(z) / norm(x) > tol
    z = RezolvareSistemCuPivotare(A, b - A * x);
    z = z(:);
    x = x + z;
end
end