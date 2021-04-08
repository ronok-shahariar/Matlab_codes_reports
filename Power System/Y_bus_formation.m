clc
clear all
disp('Y Bus Construction');
x=input('Enter the number of nodes: ');
a=complex(0);

g=0;
for i=1:1:x
    for j=1:1:x
        if(i==j)
            g =  input(strcat('Enter the value of Impedance (x+yi) for',int2str(i),int2str(j),':'));
               if g==0
                a(i,j)=complex(0);
               else
                 a(i,j)= 1/g;
               end
        else
            g =  input(strcat('Enter the value of Impedance (x+yi) for',int2str(i),int2str(j),':'));
                if g==0
                    a(i,j)=complex(0);
                else
                 a(i,j)= 1/g;
                end
        end
    end
end
b=a;y=0;
for i=1:1:x
    for j=1:1:x
        if i==j
            for k=1:1:x
                y=y+b(i,k);
            end
            a(i,j)=y;
            y=0;
        else
            a(i,j)= -b(i,j);
        end
    end
end

b
Y_BUS=a
a= Y_BUS;

disp('Y Bus Reduction');
n=4;
for i=1:1:n
    for j=1:1:n-1
        c(i,j)= (a(i,j)-(a(i,n)*a(n,j))/a(n,n));
    end
end
c
                
                
                
                
                
                