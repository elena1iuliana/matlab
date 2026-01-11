function x=RezolvareSistLiniar(A,b)

[TmpMat,Tmpvect]=gausselim(A,b);

x=bwd(TmpMat,Tmpvect);
x=x(:);