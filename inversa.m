function B = inversa(A)

[n,~]=size(A);
B=[]
for i=1:n-1
    e=zeros(n,1);
    e(i,1)=1;
    X=solutie(A,e);
    B=[B X];
end

end
