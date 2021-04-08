x=[.25 .5 .75 1.0 1.25 1.5 1.75 2 2.25 2.5];
fx=[3.1 1.7 1.0 .68 .42 .26 .14 .09 .04 .03];
n=size(x,2);
%array of zeros
dt=zeros(n,4);
%% inserting x and fx in dt
xi=0 ; xi2=0 ; logyi=0 ; xilogyi=0 ;
for i=1:n
    dt(i,1)=x(i);
    xi=xi+x(i);
    
    dt(i,2)=fx(i);
    
    dt(i,3)=x(i)*x(i);
    xi2=xi2+x(i)*x(i);
    
    dt(i,4)=log10(fx(i)); 
    logyi=logyi+log10(fx(i));
    
    dt(i,5)=x(i)*log10(fx(i)); 
    xilogyi=xilogyi+x(i)*log10(fx(i));
end
dt

a0=(logyi*xi2-xi*xilogyi)/(n*xi2-xi*xi)
a1=(n*xilogyi-xi*logyi)/(n*xi2-xi*xi)