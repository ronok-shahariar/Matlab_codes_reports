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
    yi=yi+h*f(xi,yi);
    xi=xi+60;
end
xi
yi