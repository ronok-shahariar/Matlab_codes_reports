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
    si=f(xi,yi);
    yi=yi+h*f(xi+h/2,yi+si*(h/2));
    xi=xi+60;
end
xi
yi