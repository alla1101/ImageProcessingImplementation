clear;clc;
%% Cleaning Gaussian Noise
%
%% 
% Loading image
dir='../imdata/kids.tif';
information=imfinfo(dir);
[val,map]=imread(dir);
KidsIm=ind2gray(val,map);
%%
% Adding 10 different versions of Noise
s=size(KidsIm);
t_ga10=zeros(s(1),s(2),10);
for i=1:100
   t_ga10(:,:,i)=imnoise(KidsIm,'gaussian'); 
end
%%
% Removing Noise
t_ga10_av=mean(t_ga10,3);
%%
% looking into frequency domain
% zf=fftshift(fft2( t_ga10(:,:,2) ));
% fftshow(zf);
% zf=fftshift(fft2( KidsIm ));
% fftshow(zf);
%%
% Printing outputs
information

A1=imtool(KidsIm);
set(A1,'NumberTitle','off','Name','original Image');

z= imtool(mat2gray(t_ga10(:,:,10)));
set(z,'NumberTitle','off','Name','sample of noised gaussian Image');

A2=imtool(mat2gray(t_ga10_av));
