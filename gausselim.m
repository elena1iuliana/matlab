function [U, d]=gausselim(A, b)

[m, n]=size(A);
if m~=n
    error('A nu este patratica');
end

l=length(b);
if m~=l
    error('A nu este compatibil cu b');
end

U=A;
d=b;

for k=1:n-1
    if U(k,k)==0
        error('GEM not working"')
    end
    for i=k+1:n
        p=U(i,k)/U(k,k);
        for j=1:n
            U(i,j)=U(i,j)-p*U(k,j);
        end
    end
end
