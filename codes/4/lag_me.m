x = [1.5 3 6];
y = [-.25 2 20]; 
n = size(x, 2);
%value for fining fx
x_int = 4;
%% determining sum by formula
y_int = 0;
for i = 1:n
    p = y(i);
    for j = 1:n
        if i ~= j
            p = p*((x_int - x(j))/(x(i) - x(j)));
        end
    end
    y_int = y_int + p;
end
y_int
%% ploting the graph
plot(x, y, 'bo', x_int, y_int, 'r*')
axis([1 20 -.1 30])
xlabel('x')
ylabel('y')
