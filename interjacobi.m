function x=interjacobi(A,b,x0,tol)
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
Bj=eye(m)-inv(P)*A;
f=inv(P)*b';
xold=x0';
xnew=Bj*xold+f;

while norm(xnew-xold)>tol
  xold=xnew;
  xnew=Bj*xold+f;
endwhile
x=xnew;
end
   