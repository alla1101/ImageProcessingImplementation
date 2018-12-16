%%
%   Trying to make a squarewave function using sin waves !
%
%%
% clear memory and command window
clear;clc;
%%
% identify x as input
x=[0:0.01:13];
%%
% identify output
y=0;
for i=1:2:1000000
    y=y+(1/i)*sin(i*x);
end
plot(x,y);