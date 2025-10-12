function [L U] = LUfact(A)

[p, n]=size(A);

if p~=n
    error('A nu este patratica');
end
 
det=DetDezvCol(A);

if det==0
    error('Determinantul matricei este nul, nu adminte factorizare LU')
end

L = eye(n);


for k=1:n-1
    if A(k,k)==0
        error('nu se poate face factorizare LU');
    end
    m=zeros(n,1);
   % m = m(:)
    for j=k+1:n
        m(j)=A(j,k)/A(k,k);
    end
    e=zeros(1,n);
    e(k)=1;
    M=eye(n)-m*e
    L=L+m*e;
    A=M*A
end

U=A;
end