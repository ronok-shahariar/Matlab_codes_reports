%z=1/y=a0+a1x
x=[0 1 2 3 4 5 6 7 8 9];
fx=[11.0 3.33 2.20 1.52 1.00 0.91 0.82 0.66 0.56 0.49];
n=size(x,2);
%array of zeros
dt=zeros(n,4)
dt
%% inserting x and fx in dt
xi=0 ; yi=0 ; x2=0 ; xy=0 ;
for i=1:n
    dt(i,1)=x(i);
    xi=xi+x(i);
    dt(i,2)=fx(i);
    yi=yi+fx(i);
    dt(i,3)=x(i)*x(i);
    x2=x2+x(i)*x(i);
    dt(i,4)=x(i)*fx(i); 
    xy=xy+x(i)*fx(i);
end
dt
xi
yi
x2
xy
a0=(yi*x2-xi*xy)/(n*x2-xi*xi)
a1=(n*xy - xi*yi)/(n*x2-xi*xi)
display('z=a+bx');
