clear;clc;
x=[0:0.01:1];
a=0.05;
b=0.8;
c=0.2;
d=0.5;
gamma=1.5;
y=(((x-a)/(b-a)).^gamma)*(d-c)+c;
plot(x,y),grid on;