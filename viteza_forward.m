function v = viteza_forward(u,h)

% u repr. outputul functiei,h repr. diviziunea intervalului

n = length(u);

v(n-1)=0;

for i = 1:n-1

    v(i) = (u(i+1)-u(i))/h ;
end