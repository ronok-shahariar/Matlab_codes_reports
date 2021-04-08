x=[-3 -1 0 3 5];
fx=[-30 -22 -12 330 3458];
n=size(x,2);
%array of zeros
dt=zeros(n,n);
%% inserting x and fx in dt
for i=1:n
    dt(i,1)=x(i);
    dt(i,2)=fx(i);
end
%% creating divided difference table
z=3;l=0;k=2;
for i=1:n-1   
   for j=k:n
        dt(j,z)=(dt(i+1,z-1)-dt(i,z-1))/(dt(i+1,1)-dt(i-l,1));
        i=i+1;
        if(i>=n)
            break;
        end
   end
   k=k+1;l=l+1;z=z+1;    
end
%value for fining fx
x_int=2.5; 
%% determining sum by formula
y_sum=dt(1,2);
for i=2:n
    d=1;
    for j=1:i-1
        d=d*(x_int - x(j));
    end
    y_sum=y_sum+dt(i,i+1)*d;
end
%% result
dt
y_sum
%% ploting the graph
plot(x, fx, 'bo', x_int, y_sum, 'r*')
axis([-10 10 -1000 4000])
xlabel('x')
ylabel('y')
