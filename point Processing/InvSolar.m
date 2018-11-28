clear;
clc;
v=imread('Fig0464(a)(car_75DPI_Moire).tif');
inv=imcomplement(v);
[col,row]=size(v);
solar1=v;
solar2=v;
for i=1:col
   for j=1:row
       if v(i,j)>=128
           solar1(i,j)=uint8(v(i,j));
           solar2(i,j)=uint8(128-v(i,j));
       end
       if v(i,j)<128
           solar2(i,j)=v(i,j);
           solar1(i,j)=uint8(128-v(i,j));
       end
   end
end

imtool(v);
imtool(inv);
imtool(solar1);
imtool(solar2);