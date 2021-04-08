clear all
clc

syms x;
fun=input('Enter the fun:');
f=inline(fun);
z=diff(f(x));
f1=inline(z);

while(1)
    a=input('Enter the value of 1st assumption:');
    b=input('Enter the value of 2nd assumption:');
    
    if f(a)*f(b)>0
       disp('Wrong');
    elseif f(a)*f(b)<=0
        break;      
    end
end
display(' No.     y        f(a)       f1(a)        x');
display('----   -----     -----      -----       -----');

x=a;
for i=0:1:50
    y=x;
    x=y-(f(x)/f1(x));
    if x==y
        break
    else fprintf(' %d      %f      %f      %f      %f \n',i,y,f(x),f1(x),x);
    end
end
