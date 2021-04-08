y=@(x)  2*x^2-15*x+3;
x1 = input('Enter the value of x1: ');
x2 = input('Enter the value of x2: ');
error=input('Enter error allowed in the answer: ');
if y(x1)*y(x2)<0
    fprintf('No roots exists of the funtion');
    return
end
 
if y(x1)==0
    fprintf('xi is one of the roots');     % checking
    return
elseif y(x2)==0
    fprintf('x2 is one of the roots');     % checking
    return
end
 fprintf('Iteration\t  x_1\t        x_2\t       xp\t      y(x)\n');
for i=1:100
    xp=(x1+x2)/2; % bisection
    if y(x1)*y(xp)<0
        
fprintf('\n%d\t       %f\t   %f\t   %f\t   %f\t   %f\n ',i,x1,x2,xp,y(xp) );
        x2=xp;
        
    else
        
fprintf('\n%d\t       %f\t   %f\t   %f\t   %f\t   %f\n ',i,x1,x2,xp,y(xp) );
        x1=xp;
    end
    if abs(y(x1))< error
        break
    end
end
fprintf(' The root is %f \n The number of bisections %d \n',x1,i)
