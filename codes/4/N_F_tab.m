x=[1921 1931 1941 1951 1961 1971 1981];
fx=[35 42 58 84 120 165 220];
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
%value for fx to find
x_int=1925;
%determining u=(x-x1)*h
u=(x_int-x(1))/(x(2)-x(1));
%% determining sum by formula
y_sum=dt(1,2);
for i=2:n
    d=1;k=1;  
    for j=0:i-2
        d=d*(u - j);
        k=k*j+1;
    end
    y_sum=y_sum+(dt(1,i+1)/k)*d;
end
%% result
dt
y_sum
%% ploting the graph
plot(x, fx, 'bo', x_int, y_sum, 'r*')
axis([1900 2000 0 250])
xlabel('x')
ylabel('y')

