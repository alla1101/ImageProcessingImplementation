clear;clc;
addpath(genpath('/home/alla/ImageProcessing/GeneralFunctions'));
%%
%  Loading Images
dir='../imdata/trailer.jpg';
im=loadImage2gray(dir);

%% Prewitt Filter
% Apply derivative filters
%px=[1;1;1]*[-1,0,1];
%py=[-1;0;1]*[1,1,1];
%IMx=filter2(px,im);
%IMy=filter2(py,im);
%edge_p=sqrt(IMx.^2+IMy.^2); 
% thresholding
%edge_t=im2bw(edge_p/255,0.3);
%imtool(edge_t);
%%
% Or
edgeb3=edge(im,'prewitt');
imtool(edgeb3);
%% robert filter
edge_r=edge(im,'roberts');
imtool(edge_r);
%% sobel
edge_s=edge(im,'sobel');
imtool(edge_s);
%% Laplacian
l=fspecial('laplacian',0);
im_l=filter2(l,im);
lap=mat2gray(im_l);
imtool(lap);

%%
%
imtool(im);
