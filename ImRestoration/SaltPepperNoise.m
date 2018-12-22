clear;clc;
%% Cleaning Salt&Pepper Noise
%
%%
% Loading Image
dir='../imdata/kids.tif';
information=imfinfo(dir);
[val,map]=imread(dir);
IM=ind2gray(val,map);
%%
% Generating Noise
IM_N=imnoise(IM,'salt & pepper',0.2);
%%
% Removing Noise

% Using Average Filter
Avg_filter=fspecial('average',7);
IM_Avg=mat2gray(filter2(Avg_filter,IM_N));

% Using median filter
IM_Med=medfilt2(IM,[2,2]);

% Using Rank-Order filter
IM_Rank=ordfilt2(IM,3,[1 1;1 1]);

% Using Outlier
IM_Outlier=imcomplement(outlier(IM,0.7));
%%
% Printing Outputs
information
imhist(IM_N);
% Printing image without noise
A1=imtool(IM);
set(A1,'NumberTitle','off','Name','Normal Image');
% Printing Image With Noise
A2=imtool(IM_N);
set(A2,'NumberTitle','off','Name','Noised Image');
% Prining Image after Averaging
A3=imtool(IM_Avg);
set(A3,'NumberTitle','off','Name','Averaged Noised Image');
% Printing Image after Median filter
A4=imtool(IM_Med);
set(A4,'NumberTitle','off','Name','Median filter on Noised Image');
% Printing Image after Rank-Order filter
A5=imtool(IM_Rank);
set(A5,'NumberTitle','off','Name','Rank-Order filter on Noised Image');
% Printing image after being outliered
A6=imtool(IM_Outlier);
set(A6,'NumberTitle','off','Name','Outlier filter on noised image');