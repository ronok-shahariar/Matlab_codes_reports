x = [-3 -2 -1 0 1 2 3];
y = [-15 1 5 3 1 5 21]; 

n = size(x, 2);
x_int = -1.65;
y_int = 0;
for i = 1:n
    p = y(i);
    for j = 1:n
        if i ~= j
            p = p * ((x_int - x(j)) / (x(i) - x(j)));
        end
    end
    y_int = y_int + p;
end
y_int

plot(x, y, 'bo', x_int, y_int, 'ro')
axis([-4 4 -17 23])
title('y = x^3 – 3x + 3')
xlabel('x')
ylabel('y')
