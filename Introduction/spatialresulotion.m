clear;
clc;
a=imread('/home/alla/Pictures/12036618_711409065626516_3484929502354041708_n.jpg');
x=100;
imshow(imresize(imresize(a,1/x),x));