clear all;
close all;
clc;

f=@(x,y) -x*y^2;
x0=2;
y0=1;
n=4;
xn=2.2;

h=(xn-x0)/n;
yi=y0+h*f(x0,y0)

for i=1:n-1
    xi=x0+i*h;
    yi=yi+h*f(xi,yi)
end