% un exercitiu

A = [1 2 3 ; 2 5 5 ; 5 8 6];
[m ,~]=size(A);
e1=zeros(m,1);
e1(1)=1;
a1=A(:,1);
u1=a1-norm(a1)*e1;
U1=eye(m)-2/(norm(u1)^2)*u1*u1';
display(U1*a1);
display(norm(a1));