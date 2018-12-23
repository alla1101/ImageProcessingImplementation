clear;clc;
%% Single Thresholding
%
%%
dir='../imdata/cameraman.tif';
information=imfinfo(dir);
IM=imread(dir);
%%
% Single Thresholding
T=128;
IM_b=IM>=T;
%%
% Double Thresholding
T1=100; T2=155;
IM_Db=IM>=T1 & IM<=T2;
%%
%   Printing results
information
A1=imtool(IM);set(A1,'Name','Original Image');
A2=imtool(IM_b);set(A2,'Name','Single thresholding');
A3=imtool(IM_Db);set(A3,'Name','Double thresholding');