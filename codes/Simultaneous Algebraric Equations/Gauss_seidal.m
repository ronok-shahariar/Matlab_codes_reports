f1 =@(x,y,z) (1/20)*(17-y+2*z);
f2 =@(x,y,z) (1/20)*(-18-3*x+z);
f3 =@(x,y,z) (1/20)*(25-2*x+3*z);

a_arr = [];
b_arr = [];
c_arr = [];

x=0;y=0;z=0;
for i=1:20
    a=x;
    x=f1(x,y,z);
    if(abs(x-a)<0.001)
        break;
    end
    y=f2(x,y,z);
    z=f3(x,y,z);
    a_arr(i) = x;
    b_arr(i) = y;
    c_arr(i) = z;
    
    
end
datatable = table(a_arr', b_arr', c_arr','VariableNames',{'x','y','z'});