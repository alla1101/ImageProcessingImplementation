%%
% Clear Memory and commandline
clear;clc;
%fspecial('average',11)
%fspecial('average',[5,7])
%%
%Read Picture
pic=imread('Fig0417(a)(barbara).tif');
imtool(pic);
%%
% Average Filters
Afilter=fspecial('average');
filter9=fspecial('average',25);
cf1=filter2(Afilter,pic);
cf2=filter2(filter9,pic);
imtool(cf1/255);
imtool(cf2/255);
%%
%HighPass Filter
filterHighPass1=[1;-2;1]*[1,-2,1];
filterHighPass=fspecial('laplacian');
pp=filter2(filterHighPass,pic,'same')/255;
pp1=filter2(filterHighPass1,pic);
imtool(pp);
imtool(mat2gray(pp1));
imtool(pp1/60);
%%
% HighPass Log Filter
logfilter=fspecial('log');
pplog=filter2(logfilter,pic)/255;
imtool(pplog);