x=[-.6 -.5 -.4 -.3 -.2 -.1 0 .1 .2 .3];
fx=[4 2 3 8 4 -2 2 3 5 8];
l=size(x,2);
a=x(1); b=x(l); n=b-a; h=x(2)-x(1);
sum1=0;sum2=0;y_sum=0;
if(mod(l,2)==0)
   y_sum1=h/2*(fx(1)+fx(2));
end
for i=1:2:l/2+2
   e= fx(i+1);
   sum2=sum2+e;
   o=fx(i+2);
   sum1=sum1+o;
end
%i=1 so y=
y_sum=y_sum1+(h/3)*(fx(1)+fx(l)+2*sum1+4*sum2)
