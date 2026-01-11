randn('seed',314);
x=linspace(0,1,30)';
y=2*x.^2-3*x+1+0.05*randn(size(x));
plot(x,y,'*');
hold on;
D=[x.^2  x  ones(30,1)];
r=inv(A'*A)*A'*y;
t=0:0.1:1;
f=r(1)*t.^2+r(2)*t+r(3)*ones(size(1));
plot(t,f)