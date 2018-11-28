clear;
clc;
v=imread('Fig0232(a)(partial_body_scan).tif');
ph=histeq(v);
imtool(ph);
imtool(v);
figure,imhist(v),figure,imhist(ph)