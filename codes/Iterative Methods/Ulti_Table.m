
y= @(x) 2*x^2-15*x+3 ;


while(1)
    a=input('Enter the value of 1st assumption:');
    b=input('Enter the value of 2nd assumption:');
    if y(a)*y(b)>0
    fprintf('WRONG!!\n');
    elseif y(a)*y(b)<0
        break;      
    end
end
if y(a)==0
    fprintf('Root')
    return
elseif y(b)==0;
    fprintf('Root')
    return
end
display('No.    a         b         c        y')
display('------------------------------------------')
a_arr = [];
b_arr = [];
c_arr = [];
y_arr = [];
i_arr = [];
col={'a','b','c','y'};

for i=1:1:100
    c=(a+b)/2;
     if abs(y(c))<.001
        break;
    end
    c_arr(i) = c;
    y_arr(i) = y(c);
    i_arr(i)=i;
    if y(a)*y(c)>0
        a=c;
        a_arr(i) = c;
        if i == 1
            b_arr(i) = b;
        else
            b_arr(i) = b_arr(i-1);
        end
    else
        b=c;
        b_arr(i) = c;
        if i == 1
            a_arr(i) = a;
        else
            a_arr(i) = a_arr(i-1);
        end
    end
   
    fprintf('%d  %f  %f  %f  %f \n',i,a,b,c,y(c));
    uitable('columnname',col,'rowname',i_arr,'data',[ a_arr',b_arr',c_arr',y_arr'],'position', [500 200 335 238] );%x,y,table decrease from right to left,
end

datatable = table(a_arr', b_arr', c_arr', y_arr','VariableNames',{'a','b','c','y'});


