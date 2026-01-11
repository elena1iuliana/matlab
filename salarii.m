%A=[vec(:),rol(:),educatie(:),ones(17,1)];
%B=[3000 1000 3200 500 1200 2000 3500 3750 3000 4000 4500 2000 1000 2500 7000 6000 3250];
%x=inv(A'*A)*A'*B'
%display(x);
%sal=x(1)*4.5+x(2)*3+x(3)*3+x(4);

%plot(A(:,1),B,'*')
%hold on
%plot(4.5,sal,'o')
%t=[1:0.1:9];
%f=a*t+b;
%plot(t,f)

er=a*A(:,1)+b*ones(17,1);
norm(B-er)/17;

randn('seed',314);
z=linspace(0,1,30)';
l=2*z.^2-3*z+1+0.05*randn(size(z));
plot(z,l,'*');
hold on;
D=[z.^2  x  ones(30,1)];
r=inv(A'*A)*A'*l;
t=0:0.1:1;
f=r(1)*t.^2+r(2)*t+r(3)*ones(size(1));
plot(t,f)

