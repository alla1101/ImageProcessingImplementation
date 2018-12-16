%%
% clear the memory and command window
clear;
clc;
%%
% Loading an image
% image directory
ImDir='../imdata/car_1.jpg';
% is it grayscale, index or rgb
PicInfo=imfinfo(ImDir);
% load the image
Pic=imread(ImDir);
%%
% Show the loaded picture
imtool(Pic);