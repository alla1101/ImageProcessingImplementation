clear;clc;
addpath(genpath('/home/alla/ImageProcessing/GeneralFunctions'));
%% Butterworth filtering
%
%%
% loading camera man
dir='../imdata/cameraman.tif';
CameraMan=imread(dir);
%%
% Filter Creation

bl=lbutter(CameraMan,15,1);
bh=hbutter(CameraMan,15,1);
% Gaussian Filter
g1=mat2gray(fspecial('gaussian',256,50));
gH=1-g1;
%%
% DFT
fCM=fftshift(fft2(CameraMan));
%%
% filter data
fCMlb=fCM.*bl;
fCMhb=fCM.*bh;

fCMg=fCM.*g1;

fCMgH=fCM.*gH;

%%
% print results
fftshow(fCMlb,'log');
fftshow(fCMhb,'log');
fftshow(fCMg,'log');
fftshow(ifft2(fCMlb),'abs');
fftshow(ifft2(fCMhb),'abs');
fftshow(ifft2(fCMg),'abs');