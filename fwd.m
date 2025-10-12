function x=fwd(L,b)

[m, n]=size(L);
if m~=n
    error('L nu este patratica');
end
p=length(b);
if m~=p
    error('L nu este compatibil cu b');
    
end
b=b(:);
if prod(diag(L))==0
    error('L este neinversabil');
    
end
for i=1:1:m
    for j=1:1:n
        if i<j
            if L(i,j)~=0
                error('L nu este inferior triunghiulara');
            end
        end
    end
end
x(1)=b(1)/L(i,i);
for i=2:n
    sum=0;
    for j=1:i-1
        sum=sum+L(i,j)*x(j);
    end

    x(i)=(b(i)-sum)/L(i,i);
end

x=x(:);
end