x=[-1 0 1 2 3 4 5 6 7];
fx=[-3 -1 5 27 77 167 309 515 797];
dt=zeros(9,10);
for i=1:9
    dt(i,1)=x(i);
    dt(i,2)=fx(i);
end
n=8;
for j=3:9
    for i=1:n
        dt(i,j)=dt(i+1,j-1)-dt(i,j-1);
    end
    n=n-1;
end
dt(i,j)=dt(i+1,j-1)-dt(i,j-1)