% AX=B 
A=[1 1 1; 2 1 3; 3 4 -2];
B=[4;7;9];
% Augmented matrix
AB=[A,B];
%% pivot 1 1
 alpha = AB(2,1)/AB(1,1);
 AB(2,:)=AB(2,:)-alpha*AB(1,:);
 alpha=AB(3,1)/AB(1,1); 
 AB(3,:)=AB(3,:)-alpha*AB(1,:);
 %% pivot 2 2
 alpha=AB(3,2)/AB(2,2);
 AB(3,:)=AB(3,:)-alpha*AB(2,:);
 %% Back Subs
 x=zeros(3,1);
 x(3) = AB(3,end)/AB(3,3);
 x(2) = (AB(2,end)-AB(2,3)*x(3))/AB(2,2);
 x(1) = (AB(1,end)-(AB(1,3)*x(3)+AB(1,2)*x(2)))/AB(1,1);
 
 