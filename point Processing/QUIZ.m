clear;clc;
v=imread('Fig0422(newspaper_shot_woman).tif');
imhist(v);
gammaLow=imadjust(v,[],[0,1],1.5);
figure,imhist(gammaLow);