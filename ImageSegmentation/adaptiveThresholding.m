clear;clc;
%% Single Thresholding
%
%%
dir='../imdata/circles.png';
information=imfinfo(dir);
IM=imread(dir);
%%
% vary the background
x=ones(256,1)*[1:256];
c2=double(IM).*(x/2+50)+(1-double(IM)).*x/2;
IMN=uint8(255*mat2gray(c2));
t=graythresh(IMN);
IMt=im2bw(IMN,t);
%%
% Solution
fun=inline('im2bw(x,graythresh(x))');
t4=blkproc(IMN,[256,40],fun);
IM_4=uint8(255*mat2gray(t4));
%%
%   Printing results
information
A1=imtool(IMN);set(A1,'Name','Original Image');
A2=imtool(IMt);set(A2,'Name','threshed Image');
A3=imtool(IM_4);set(A3,'Name','blk-based threshed Image');