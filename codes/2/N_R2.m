clear all
clc

syms x;
fun=input('Enter the fun:');
f=inline(fun);
z=diff(f(x));
f1=inline(z);
%%one initial value
x=input('Enter initial value:');

x_arr=[];
y_arr=[];
fx_arr=[];
fx1_arr=[];

display(' No.     y        f(a)       f1(a)        x')
display('----   -----     -----      -----       -----')

for i=1:1:15
    y=x;
    x=y-(f(x)/f1(x));
    if abs(x-y)<=0.00001
        break
    else fprintf(' %d   %f   %f   %f   %f \n',i,y,f(x),f1(x),x);
    end
    y_arr(i)=y;
    fx_arr(i)=f(x);
    fx1_arr(i)=f1(x);
    x_arr(i)=x;
end
datatable = table(y_arr', fx_arr', fx1_arr', x_arr','VariableNames',{'y','fa','f1a','x'});