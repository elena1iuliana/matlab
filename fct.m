function u=fct(v,h,u0)
n=length(v)
A=eye(n)-diag(ones(n-2,1),-2);
A(2,1)=-1;
A
u1=h*v(1);
b=[u0;u1;2*h*v(2:n-1)'];
u=fwd(A,b);
end