clear;
clc;
v=imread('Fig0232(a)(partial_body_scan).tif');
%imhist(v);
imtool(v);

xLess=imadjust(v,[0.04 1],[0,1],0.5);
xmore=imadjust(v,[0.04 1],[0,1],1.5);
x1=imadjust(v,[0.04 1],[0,1],1);

imtool(x1);imtool(xLess);imtool(xmore);
imhist(x1),figure,imhist(xLess),figure,imhist(xmore),figure,imhist(v);