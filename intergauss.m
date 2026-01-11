function x=intergauss(A,b,x0,tol)
[m,n]=size(A);
if det(A)==0 
  error("nu")
endif
for i=1:n
    if 2*abs(A(i,i))<sum(abs(A(i,:)))
      error("nu")
    endif
 endfor


P=diag(diag(A));
Bgs=inv(tril(A))*(-triu(A)+P);
f=inv(P)*b';
xold=x0';
xnew=Bgs*xold+f;

while norm(xnew-xold)>tol
  xold=xnew;
  xnew=Bgs*xold+f;
endwhile
x=xnew;
end