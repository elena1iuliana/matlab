function B=pseudo(A)
[U,S,V]=svd(A);
[m,n]=size(A);
Sp=zeros(n,m);
p=rank(A);
for i=1:p
 if S(i,i)>0
   Sp(i,i)=1/S(i,i);
  end
 end
B=V*Sp*U';