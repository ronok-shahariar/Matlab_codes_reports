%x=[.1 .2 .3 .4 .5];
%fx=[.09983 .19867 .29552 .38942 .47943];
%x=[0 2 4 6 8 10];
%fx=[0 4 56 204 496 980];
%x=[.10 .15 .20 .25 .30];
%fx=[.1003 .1511 .2027 .25530 .3093]; 
x=[.1 .2 .3 .4];
fx=[1.005 1.020 1.045 1.081];

n=size(x,2);
dt=zeros(n+1,n+1);
dt

for i=1:n
    dt(i,1)=x(i);
    dt(i,2)=fx(i);
end
dt

z=3;k=2;
for i=1:n-1   
   for j=k:n
        dt(j,z)=(dt(i,z-1)-dt(i+1,z-1))
        i=i+1;
        if(i>=n)
            break;
        end
   end
   k=k+1;z=z+1;    
end

x_int=.16;
u=(x_int-x(1))/(x(2)-x(1));
y_sum=dt(n,2);

for i=2:n
    d=1;k=1;  
    for j=0:i-2
        d=d*(u + j);
        k=k*j+1;
    end
    y_sum=y_sum+(dt(n,i+1)/k)*d;
end
y_sum

