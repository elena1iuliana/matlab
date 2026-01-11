function x=interjscobire(A,b,x0,tol,omg)
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
Bjomg=eye(m)-omg*inv(P)*A;
f=omg*inv(P)*b';
xold=x0';
xnew=Bjomg*xold+f;

while norm(xnew-xold)>tol
  xold=xnew;
  xnew=Bjomg*xold+f;
endwhile
x=xnew;
end