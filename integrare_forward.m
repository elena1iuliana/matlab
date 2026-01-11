function u=integrare_forward(v,h,cond_init)

%v repr. derivata, h reprezinta diviziunea (de obicei 0.1 / 0.01 )

n = length(v);
A = eye(n)-diag(ones(n-2,1), -2);
A(2,1) = -1;

u1=h*v(1);

b = [cond_init;u1;2*h*v(2:n-1)'];

u = fwd(A,b);
u = u';

end