x=[-.6 -.5 -.4 -.3 -.2 -.1 0 .1 .2 .3];
fx=[4 2 3 8 4 -2 2 3 5 8];
l=size(x,2);
a=x(1); b=x(l); n=b-a; h=x(2)-x(1);
sum1=0;sum2=0;y_sum=0;
if(mod(l,2)==0)
   y_sum1=h/2*(fx(1)+fx(2));
end
for i=2:l-1
    if(mod(i,3)==0)
        sum2=sum2+fx(i);
        a=fx(i)
    else
        sum1=sum1+fx(i);
        b=fx(i);
    end
end
y_sum=y_sum1+(3*h/8)*(fx(1)+fx(l)+3*sum1+2*sum2)
