x = [1 2 3 4 5 6];
y = [33 16 35 25 35 26];
x_int = 3.7;

for i=2:7
    if(x_int <= x(i))
        i=i-1;
        f=(y(i+1)*(x_int - x(i))-y(i)*(x_int-x(i+1)))/(x(i+1)-x(i));
        break;
    end   
end

x_int
f