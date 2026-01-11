function u = derivata_backward(v,h,cond_init)

%v repr. derivata, h reprezinta diviziunea (de obicei 0.1 / 0.01 )

n = length(v);
A = eye(n+1)-diag(ones(n,1), -1);

b = [cond_init h*v];

u = fwd(A,b);
u = u';

end