clear;clc;
addpath(genpath('/home/alla/ImageProcessing/GeneralFunctions'));

%% ideal filtering
%
%%
% loading camera man
dir='../imdata/cameraman.tif';
CameraMan=imread(dir);
%% 
% Low Pass Filter
[x,y]=meshgrid(-128:127,-128:127); z=sqrt(x.^2+y.^2); c=z<15;
%%
% high pass Filter
h=z>15;
%%
% Calculate DFT
fCM=fftshift(fft2(CameraMan));
% ideal low pass filter implementation
fCMl=fCM.*c;
% ideal high pass filter
fCMh=fCM.*h;
%%
% Printing Results
imtool(CameraMan);
fftshow(fCM,'log');
fftshow(fCMl,'log');
fftshow(fCMh,'log');
fftshow(ifft2((fCMl)),'abs');
fftshow(ifft2((fCMh)),'abs');