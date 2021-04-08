clear all;
close all;
clc;

f=@(x,y)-2.2067*10^-12*(y^4-81*10^8);
h=60;
n=7;
y0=1200;
x0=0;
xi=x0;
yi=y0;
for i=0:n
    s1=f(xi,yi);
    s2=f(xi+h,yi+s1*h);
    yi=yi+h/2*(s1+s2);
    xi=xi+60;
end
xi
yi

