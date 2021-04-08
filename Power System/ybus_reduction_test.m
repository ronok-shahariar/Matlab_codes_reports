a= [-76i 25i 50i 0; 
    25i -76.25i 50i 0; 
    50i 50i 112.5i 125.5i; 
    0 0 12.5i -12.5i];  
a
n=4;
for i=1:1:n
    for j=1:1:n-1
        c(i,j)= (a(i,j)-(a(i,n)*a(n,j))/a(n,n));
    end
end
c


  