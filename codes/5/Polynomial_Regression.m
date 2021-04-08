x=[-4 -3 -2 -1 0 1 2 3 4 5];
fx=[21 12 4 1 2 7 15 30 45 67];
n=size(x,2);
%array of zeros
dt=zeros(n,4)
%% inserting x and fx in dt
xi=0;yi=0;xi2=0;xi3=0;;xi4=0;xiyi=0;xi2yi=0;
for i=1:n
    dt(i,1)=x(i);
    xi=xi+x(i);
    dt(i,2)=fx(i);
    yi=yi+fx(i);
    dt(i,3)=x(i)*x(i);
    xi2=xi2+x(i)*x(i);
    dt(i,4)=x(i)*x(i)*x(i); 
    xi3=xi3+x(i)*x(i)*x(i);
    dt(i,5)=x(i)*x(i)*x(i)*x(i); 
    xi4=xi4+x(i)*x(i)*x(i)*x(i);
    dt(i,6)=x(i)*fx(i);
    xiyi=xiyi+x(i)*fx(i);
    dt(i,7)=x(i)*x(i)*fx(i);
    xi2yi=xi2yi+x(i)*x(i)*fx(i);   
end
dt
xi
yi
xi2
xi3
xi4
xiyi
xi2yi
A=[n  xi  xi2;
  xi xi2 xi3;
  xi2 xi3 xi4];
A
B=[ yi;
    xiyi;
    xi2yi];
B

% Augmented matrix
AB=[A,B];
%% pivot 1 1
 alpha = AB(2,1)/AB(1,1);
 AB(2,:)=AB(2,:)-alpha*AB(1,:);
 alpha=AB(3,1)/AB(1,1); 
 AB(3,:)=AB(3,:)-alpha*AB(1,:);
 %% pivot 2 2
 alpha=AB(1,2)/AB(2,2);
 AB(1,:)=AB(1,:)-alpha*AB(2,:);
 alpha=AB(3,2)/AB(2,2);
 AB(3,:)=AB(3,:)-alpha*AB(2,:);
 %% pivot 3 3
 alpha=AB(1,3)/AB(3,3);
 AB(1,:)=AB(1,:)-alpha*AB(3,:);
 alpha=AB(2,3)/AB(3,3);
 AB(2,:)=AB(2,:)-alpha*AB(3,:);
 %% Back Subs
 x=zeros(3,1);
 x(3) = AB(3,end)/AB(3,3);
 x(2) = (AB(2,end)-AB(2,3)*x(3))/AB(2,2);
 x(1) = (AB(1,end)-(AB(1,3)*x(3)+AB(1,2)*x(2)))/AB(1,1);
 x
 