function [Q, R,Qtil,Rtil]=FactorizareQR(A)

[m,n] = size(A);
Q=eye(m);
R = A;
e = eye(m);

for k = 1:n
    a = [zeros(k-1,1);R(k:m,k)];
    u = a-norm(a)*e(:,k);
    U = eye(m) - 2/(norm(u))^2 * u*u';
    R = U * R;
    Q = Q * U;
end
Qtil = Q(:,1:n);
Rtil = R(1:n,:);
%display(R);
%display(Q);
end