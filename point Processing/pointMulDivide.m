clear;clc;
v=imread('Fig0241(c)(einstein high contrast).tif');
mul=immultiply(v,2);
div=imdivide(v,2);
%immultiply(v,0.5) aslo works
imtool(v);
imtool(mul);
imtool(div);

