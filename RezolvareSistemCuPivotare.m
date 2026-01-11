function x=RezolvareSistemCuPivotare(A,b)
[L, U, P]=pivotarePartiala(A);
Y= fwd(L,P*b);
norm(L*Y-b)
x=bwd(U,Y);
end