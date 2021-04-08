%trouble shooting of fiff_div_table

x=[-3 -1 0 3 5];
fx=[-30 -22 -12 330 3458];
dt=zeros(6,6);
dt
for i=1:5
    dt(i,1)=x(i);
    dt(i,2)=fx(i);
end

dt
i=1;
for j=2:5
    dt(j,3)=(dt(i+1,2)-dt(i,2))/(dt(i+1,1)-dt(i,1));
    if(i<6)
        i=i+1;
    end
end
x1=dt
i=2;
for j=3:5
    dt(j,4)=(dt(i+1,3)-dt(i,3))/(dt(i+1,1)-dt(i-1,1));
    if(i<6)
        i=i+1;
    end
end
x2=dt
i=3;
for j=4:5
    dt(j,5)=(dt(i+1,4)-dt(i,4))/(dt(i+1,1)-dt(i-2,1));
    if(i<6)
        i=i+1;
    end
end
x3=dt
i=4;
for j=5:5
    dt(j,6)=(dt(i+1,5)-dt(i,5))/(dt(i+1,1)-dt(i-3,1));
    if(i<6)
        i=i+1;
    end
end

x4=dt
