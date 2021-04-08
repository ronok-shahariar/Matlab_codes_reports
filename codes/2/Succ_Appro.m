clear all
clc
syms x;
fun=input('Enter the fun:');
f=inline(fun);
   a=input('Enter the value of initial assumption:');
   
if f(a)==0
    fprintf('Root')
    return
end
display(' No.      a          xn   ')
display(' --     -----       ----- ')


for i=1:1:100
    xn=f(a);
    if abs(xn-a)<0.001
        break;
    else fprintf('  %d    %f    %f\n',i,a,xn);
        a=xn;
    end
end