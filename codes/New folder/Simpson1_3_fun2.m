%Function declaration
f= @(x) 3*x^2+3;
a=0;b=6;
n=b-a;
%height
h = (b - a) / 2;
xi = h / 3 * (f(a) + 4*f((a+b)/2) + f(b));
%Output
xi

