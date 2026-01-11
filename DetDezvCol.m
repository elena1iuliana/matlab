function d=DetDezvCol(A)

[m,n] = size(A);

if m~=n
    error('Matricea nu e patratica')
elseif m==1
    d=A(1,1);
else
    d=0;
    for j=1:n
        d=d+A(1,j)*(-1)^(1+j)*DetDezvCol(A(2:n,[1:j-1,j+1:n]));
    end
end
end
