function x=solsvd(A,b)
Aplu=pseudo(A);
x=Aplu*b;