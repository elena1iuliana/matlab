function x=solutie(A,b)
[L, U]=LUfact(A);
Y= fwd(L,b);
norm(L*Y-b)
x=bwd(U,Y);