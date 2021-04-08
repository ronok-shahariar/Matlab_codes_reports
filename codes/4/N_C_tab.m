x=[1921 1931 1941 1951 1961 1971];
fx=[35 42 58 84 120 165];
n=size(x,2);
%array of zeros
dt=zeros(n,n);
%% inserting x and fx in dt
for i=1:n
    dt(i,1)=x(i);
    dt(i,2)=fx(i);
end
dt
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
dt
%value for fx to find
x_int=1947;
%determining u=(x-x1)*h
u=(x_int-x(n/2))/(x(2)-x(1));
%% determining sum by formula
y_sum=dt(n/2,2)+u*(dt(n/2,3)+dt(n/2-1,3))/2+(u*u)/2*(dt(n/2-1,4));
a=0;b=0;l=1;t=1;
for i=3:n-1
    k=1;
    if((n/2-(i-2))<=0 || (n/2-(i-1))<=0)%cross limit dt(0,i)       
       break;
    else        
           a=(dt(n/2-(i-2),i+2)+dt(n/2-(i-1),i+2))/2;
           b=dt(n/2-(i-1),i+3);
        if(i<=n/2)   
          l=u*(u*u-t*t);
          t=t+1;      
        end
        for j=1:i
           k=k*j;       
        end
          y_sum=y_sum+(l/k)*a+u*l*b;
    end
end
y_sum
%% ploting the graph
plot(x, fx, 'bo', x_int, y_sum, 'r*')
axis([1900 2000 0 250])
xlabel('x')
ylabel('y')
