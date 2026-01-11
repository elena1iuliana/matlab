function x = solQR(A,b)
[Q,R,Qtil,Rtil] = FactorizareQR(A);

x=inv(Rtil)*Qtil'*b;
end