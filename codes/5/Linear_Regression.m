x=[1 2 4 5 6 8 9];
fx=[2 5 7 10 12 15 19];
n=size(x,2);
%array of zeros
dt=zeros(n,4)
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
a0=(yi*x2-xi*xy)/(n*x2-xi*xi);
a1=(n*xy - xi*yi)/(n*x2-xi*xi);
display('y1=a1x+a0');
