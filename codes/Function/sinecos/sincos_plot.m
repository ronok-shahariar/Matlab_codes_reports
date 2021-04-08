clc;
close all;
%% sine function
f=1;
a=5;
t=1:.01:10;
x1=a*sin(2*pi*f*t);
subplot(3,1,1);
plot(t,x1)
axis([-10 10 -10 10]);
xlabel('Time');
ylabel('Amplitude');
title('Sine Function');
%% cosine function
f=1;
a=5;
t=1:.01:10;
x2=a*cos(2*pi*f*t);
subplot(3,1,2);
plot(t,x2)
axis([-10 10 -10 10]);
xlabel('Time');
ylabel('Amplitude');
title('Cosine Function');
%% multiple plot
subplot(3,1,3);
plot(t,x1,'r',t,x2,'b>');
axis([-10 10 -10 10]);
xlabel('Time');
ylabel('Amplitude'); 


