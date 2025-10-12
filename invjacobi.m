function X=invjacobi(A)
[n,m]=size(A);
for i:1:n
  for j:1:n
     M(i,j)=A(i,j);
   end
 end
 for i:n:2*n
   for j:1:n
     M(i,j)=eye(i,j/n)
 

     
