clear;clc;
%% Noises
% Loading image
dir='../imdata/kids.tif';
information=imfinfo(dir);
[val,map]=imread(dir);
Dgray=ind2gray(val,map);
%% Noise Adding
% adding binary noise
Dg_sp=imnoise(Dgray,'salt & pepper');
% adding gaussian noise
Dg_gau=imnoise(Dgray,'gaussian');
% adding multiplicative noise
Dg_speckle=imnoise(Dgray,'speckle');
%%
% Periodic Noise
s=size(Dgray);
[x,y]=meshgrid(1:s(2),1:s(1));
Pnoise=sin(x/3+y/5)+1;
Dg_pn=(im2double(Dgray)+Pnoise/2)/2;
%%
% printing results
information

A1=imtool(Dgray);
set(A1,'NumberTitle','off','Name','Normal Image');

A2=imtool(Dg_sp);
set(A2,'NumberTitle','off','Name','Image with salt and pepper Noise');

A3=imtool(Dg_gau);
set(A3,'NumberTitle','off','Name','Image with gaussian Noise');

A4=imtool(Dg_speckle);
set(A4,'NumberTitle','off','Name','Image with speckle Noise');

A5=imtool(Dg_pn);
set(A5,'NumberTitle','off','Name','Image with periodic Noise');