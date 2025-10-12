function [L U]=factd(A)
[m n]=size(A);
U=zeros(n);
L=eye(n);
if m~=n
error("A nu este patratica")
endif
U(1,1:n)=A(1,1:n)
L(2:n,1)=A(2:n,1)/U(1,1)
for i=1:n
  U(i,i)=A(i,i)-L(i,1:i-1)* U(1:i-1,i);
  if U(i,i)==0
   error("Algoritmul nu se aplica pt parametru de intrare")
   endif
  for j=i+1:n
    U(i,j)=A(i,j)-L(i,1:i-1)*U(1:i-1,j);
    L(j,i)=(A(j,i)-L(j,1:i-1)*U(1:i-1,i))/U(i,i);
  endfor
 endfor
 
 end