%Function declaration
f= @(x) 3*x^2+3;
a=0;b=6;
n=b-a;
%height
h = (b - a) / n;
%simpson's formula
sum_x1 = 0;sum_x2=0;
for i=0:1:n
    x = a + i * h;
    if(i>1 && i<n && mod(i,3)==0)
    sum_x2=sum_x2+f(x);
    end
    if (i>0 && i<n && mod(i,3)~=0)
        sum_x1 = sum_x1 + f(x);
    end
end
xi = 3*h / 8 * (f(a) + 3 * sum_x1 +2*sum_x2+ f(b));
%Output
xi
