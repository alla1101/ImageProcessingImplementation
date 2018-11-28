clear;
%clc;
v=[];
z=64;
for i=1:1:8
  for k=1:1:8
    v((i-1)*z+1:1:i*z,(k-1)*z+1:1:k*z)=rem(i+k,2);
  end
  end
imshow(v);