f1 =@(x,y,z) (1/20)*(17-y+2*z);
f2 =@(x,y,z) (1/20)*(-18-3*x+z);
f3 =@(x,y,z) (1/20)*(25-2*x+3*z);

a_arr = [];
b_arr = [];
c_arr = [];

x=0;y=0;z=0;
for i=1:20
    a=f1(x,y,z);
    b=f2(x,y,z);
    c=f3(x,y,z);
    if(abs(x-a)<0.001)
        break;
    end
    a_arr(i) = a;
    b_arr(i) = b;
    c_arr(i) = c;
    
    x=a;y=b;z=c;
    
end
datatable = table(a_arr', b_arr', c_arr','VariableNames',{'x','y','z'});