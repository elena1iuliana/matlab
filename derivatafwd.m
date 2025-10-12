function v=derivatafwd(u,h)
n=length(u);
for i=1:n-1
v(i)=(u(i+1)-u(i))/h;

end