clear;clc;
addpath(genpath('/home/alla/ImageProcessing/GeneralFunctions'));
%%
% Load image
dir='../imdata/board.tif';
information=imfinfo(dir);
IM_rgb=imread(dir);
IM=rgb2gray(IM_rgb);
PIM=IM(100:355,50:305);
%%
% Blur the Image
m=fspecial('motion',7,0);
NPIM=imfilter(PIM,m);
%%
% Deblur using fft ifft 
m2=zeros(256,256);
m2(1,1:7)=m;
mf=fft2(m2);
FNPIM=fftshift(fft2(NPIM));
d=0.02;
mf(find( abs(mf)<d ))=1;
FPIM=FNPIM./mf;
%%
% Deblur it using weiner filtering
K=0.05;
fIM=FNPIM;
b=fft2(m2);
w1x=fIM.*(abs(b).^2./(abs(b).^2+K)./b );
fftshow(ifft2(w1x),'abs');
%%
% Print results
information
A1=imtool(PIM);set(A1,'Name','Original Image');
A2=imtool(NPIM);set(A2,'Name','motion-blured Image');
fftshow(FNPIM,'log');
fftshow(fftshift(mf),'log');
fftshow(ifft2(FPIM),'abs');