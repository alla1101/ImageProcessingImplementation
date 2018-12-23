clear;clc;
%% Clearing Periodic noise
%
%%
% Loading image
dir='../imdata/kids.tif';
information=imfinfo(dir);
[val,map]=imread(dir);
kids=ind2gray(val,map);
%%
% Generating Noise
s=size(kids);
[x,y]=meshgrid(1:s(2),1:s(1));
PNoise=1+sin(x+y/1.5);
%%
% affecting picture
NoisedImage=(im2double(kids)*2 + PNoise)/4;
%%
% looking into frequency domain
zd=fftshift(fft2(NoisedImage));
%fftshow(zd);
%zo=fftshift(fft2(kids));
%fftshow(zo);
%% Band Reject filtering
z=sqrt((x-159).^2+(y-200).^2);
z(158,109)
z(244,210)
br=(z>67+10 | z< 65-10);
tbr=zd.*br;
%fftshow(tbr);
%fftshow(ifft2((tbr)),'abs');
%% Notch filtering
zd(:,109)=0;
zd(:,210)=0;
zd(158,:)=0;
zd(244,:)=0;
fftshow(zd);
fftshow(ifft2((zd)),'abs');
%%
% Printing results
%A1=imtool(kids);set(A1,'Name','Original Image');
%A2=imtool(mat2gray(NoisedImage));set(A2,'Name','Periodic noise effects');