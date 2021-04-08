x=[.2 .25 .3 .35];
fx=[.1987 .2474 .2955 .3429];
n=size(x,2);
%array of zeros
dt=zeros(n,n);
%% inserting x and fx in dt
for i=1:n
    dt(i,1)=x(i);
    dt(i,2)=fx(i);
end
%% creating Newton forward difference table
z=3;
for k=1:n-1
    i=1;
    for j=1:n-k
        dt(j,z)=(dt(i+1,z-1)-dt(i,z-1));
        i=i+1;
        if(j>n)
            break;
        end
    end
    z=z+1;k=k+1;
end
h=dt(2,1)-dt(1,1);
%value for fx to find
x_int=.27;
for i=1:n
    for j=1:n
        if( x_int>dt(j,i) && x_int<dt(j+1,i))
            break;
        end
    end
    y_sum=(dt(j,i+2)/h) + (dt(j,i+3)*(2*x_int - x(j)-x(j+1)))/(2*h*h);
    break;
end

%% result
dt
y_sum

