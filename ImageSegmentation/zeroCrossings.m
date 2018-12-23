clear;clc;
addpath(genpath('/home/alla/ImageProcessing/GeneralFunctions'));
%%
%  Loading Images
dir='../imdata/trailer.jpg';
im=loadImage2gray(dir);
%% Laplacian
l=fspecial('laplacian',0);
im_l=edge(im,'zerocross',l);
imtool(im_l);
%%use Log filter first
log=fspecial('log',13,2);
x=edge(im,'zerocross',log);
imtool(x);
imtool(im);