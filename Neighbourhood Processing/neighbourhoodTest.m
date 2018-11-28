clear;clc;
x=im2double(imread('Fig0422(newspaper_shot_woman).tif'));
a=size(x);

for i=2:a(1)-1
   for j=2:a(2)-1
      b(i,j)=(1/9)*(x(i-1,j-1)+x(i-1,j)+x(i-1,j+1)+x(i,j-1)+ x(i,j) + x(i,j+1)+x(i+1,j-1)+x(i+1,j)+x(i+1,j+1));
   end
end
imtool(b);
imtool(x);
imhist(x);
figure,imhist(b);