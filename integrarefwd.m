function u=integrarefwd(v,h,u0)
n=length(v);
A=eye(n+1)-diag(ones(n,1),-1);
b=[u0;h*v'];
u=fwd(A,b);
u0=u(1);
t=1+[0:1:n]*h;
plot(t,u);
end