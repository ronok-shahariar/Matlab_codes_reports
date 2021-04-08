clear all
clc
syms x;
fun=input('Enter the fun:');
f=inline(fun);
while(1)
    a=input('Enter the value of 1st assumption:');
    b=input('Enter the value of 2nd assumption:');
    
    if f(a)*f(b)>0
       disp('Wrong');
    elseif f(a)*f(b)<=0
        break;      
    end
end
if f(a)==0
    fprintf('Root')
    return
elseif f(b)==0;
    fprintf('Root')
    return
end

a_arr = [];
b_arr = [];
c_arr = [];

display(' No.      a          b        xn   ')
display('----    -----      -----     ----- ')

for i=1:1:100
    x=a-b;
    z=f(a)-f(b);
    xn=a-(x/z)*f(a);
    if abs(xn-a)<0.0001
        break
    else fprintf(' %d    %f   %f   %f\n',i,a,b,xn);
    end
    a_arr(i)=a ;
     b_arr(i)=b;
     c_arr(i)=xn;
     b=a;
     a=xn;    
end
datatable = table(a_arr', b_arr', c_arr','VariableNames',{'a','b','xn'});
    
    
    
    

