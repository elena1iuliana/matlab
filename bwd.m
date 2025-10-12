function x=bwd(U,b)

[m, n]=size(U);
if m~=n
    error('U nu este patratica');
end
p=length(b);
if m~=p
    error('U nu este compatibil cu b');
    
end
b=b(:);
if prod(diag(U))==0
    error('U este neinversabil');
    
end
for i=1:1:m
    for j=1:1:n
        if i>j
            if U(i,j)~=0
                error('U nu este superior triunghiulara');
            end
        end
    end
end

x(n)=b(n)/U(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum=sum+U(i,j)*x(j);
    end

    x(i)=(b(i)-sum)/U(i,i);
end

x=x(:);
end