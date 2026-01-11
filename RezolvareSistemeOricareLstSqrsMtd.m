function x = RezolvareSistemeOricareLstSqrsMtd(A,b)

Aplus=PseudoInversa(A);

x=Aplus*b;