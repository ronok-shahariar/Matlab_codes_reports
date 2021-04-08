x=[-3 -1 0 3 5];
fx=[-30 -22 -12 330 3458];
%x=[.1 .2 .3 .4];
%fx=[1.005 1.020 1.045 1.081];
n=size(x,2);
dt=zeros(n+1,n+1);
for i=1:n
    dt(i,1)=x(i);
    dt(i,2)=fx(i);
end
z=3;i=1;l=0;k=2;
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
dt
