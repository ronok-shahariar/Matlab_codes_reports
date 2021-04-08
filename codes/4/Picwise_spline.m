x = [1 2 3 4 5 6];
y = [33 16 35 25 35 26];
%value for fx to find
x_int = 3.7; 
%% using formula
for i=2:7
    if(x_int <= x(i))
        i=i-1;
        f=(y(i+1)*(x_int - x(i))-y(i)*(x_int-x(i+1)))/(x(i+1)-x(i));
        break;
    end   
end
%% result
x_int
f
%% ploting the graph
hold on
plot(x, y, x_int, f,'r*')
axis([0 10 10 50])
xlabel('x')
ylabel('y')