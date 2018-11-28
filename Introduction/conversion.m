clear;
clc;
a=imread('/home/alla/Pictures/12036618_711409065626516_3484929502354041708_n.jpg');
imtool(a);
b=rgb2gray(a);
imtool(b);
[em,emap]=cmunique(a);
imtool(em,emap); 