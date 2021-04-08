%Function declaration
f= @(x) 3*x^2+3 ;
a=0;b=6;
n=b-a;
%height
h = (b - a) / n;
%Trapizoidal formula
sum_x = 0;
    for i = 1:(n - 1)
        x = a + i * h;
        sum_x = sum_x + f(x);
    end
xi = h / 2 * (f(a) + 2 * sum_x + f(b));
%Output
xi
