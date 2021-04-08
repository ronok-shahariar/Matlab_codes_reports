clc;
close all;

%% unit function
t=-10:10;
u=[zeros(1,10) ones(1,11)];
subplot(2,1,1);
stem(t,u)
axis([-12 12 -1 2])
xlabel('Time');
ylabel('Amplitude');
title('Step Function');
%% build in function
y=heaviside(t);
subplot(2,1,2);
stem(t,u)
axis([-12 12 -1 2])
xlabel('Time');
ylabel('Amplitude');
title('Step Function build in');
%% another buildin function
t=linspace(-10,10,2^12);
u1 =  heaviside(t+3);
u2 = -2*heaviside(t-4);
u3 = 6*heaviside(-t+5); %-t mean 0 before 5 time then 1.
u4 = 2*heaviside(t+0);
figure (2)
plot(t,u1,'r','linewidth',2)
grid on;
hold on;
plot(t,u2,'b','linewidth',2);
plot(t,u3,'k','linewidth',2); %black 
plot(t,u4,'c','linewidth',2); %caramel
axis([-8 8 -8 8]);
%% by heaviside
t = (-1:0.01:5)'; 
% Start with all zeros: 
unitstep = zeros(size(t)); 
% But make everything corresponding to t>=1 one:
unitstep(t>=1) = 1;
figure (3);
subplot(2,1,1);
plot(t,unitstep,'b','linewidth',3) 
% Repeat, with everything shifted to the right by 1 unit: 
unitstep2 = zeros(size(t)); 
unitstep2(t>=2) = 1; 
hold on
grid on
plot(t,unitstep2,'r:','linewidth',2)
box off
%% heaviside()
n = -10 : 10;
y = 4 * heaviside(n) + 3*heaviside(n-2);
subplot(2,1,2);
plot(n, y,'linewidth',2)
hold on
grid on
axis([-15 15 -1 8])
