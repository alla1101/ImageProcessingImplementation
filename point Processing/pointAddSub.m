clear;
clc;
v=imread('Fig0222(a)(face).tif');
whos v
%works x=v+128;
x=imadd(v,128);
%works z=v-128;
z=imsubtract(v,128);
%inv=255-v;
inv=imcomplement(v);
imtool(v);
imtool(x);
imtool(z);
imtool(inv);
