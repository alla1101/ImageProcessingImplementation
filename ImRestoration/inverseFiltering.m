clear;clc;
addpath(genpath('/home/alla/ImageProcessing/GeneralFunctions'));
%% Inverse Filtering
% 
%%
% Load image
dir='../imdata/flamingos.jpg';
information=imfinfo(dir);
IM_rgb=imread(dir);
IM=rgb2gray(IM_rgb);
%%
% blur it with lowpass filter
IMF=fftshift(fft2(IM));
B=lbutter(IM,15,2);
imb=IMF.*B;
IMB_O=uint8(255*mat2gray(abs(ifft2(imb))));
% get it back to original state
w1=fftshift(fft2(IMB_O))./B;% we could multiply it by lpass filter .*lbutter(IMB_O,60,10);
d=0.005;
b=lbutter(IM,15,2); b(find(b<d))=1;
w1=fftshift(fft2(IMB_O))./b;
fftshow(ifft2(w1),'abs');
%%
% Printing results
information
A1=imtool(IM);set(A1,'Name','Gray image');
A2=imtool(IMB_O);set(A2,'Name','blured image');
