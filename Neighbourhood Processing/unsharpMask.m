%%
%   clear memory
clear;clc;
%%
%   Read Image
pic=imread('Fig0427(a)(woman).tif');
imtool(pic);
%%
%   Unsharp mask filtering
u=fspecial('unsharp',0.5);
enhancedPic=filter2(u,pic);
imtool(enhancedPic/255);
