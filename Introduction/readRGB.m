clear;
clc;
a=imread('/home/alla/Pictures/12036618_711409065626516_3484929502354041708_n.jpg');
imtool(a);
x=[];
for i=1:1:3
    x(i)=a(200,100,i);
end
x
impixel(a,100,200)