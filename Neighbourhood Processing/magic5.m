clear;clc;
x=uint8(10*magic(5));
for i=1:3
    for j=1:3
        t(i,j)=mean2(x(0+i:2+i,0+j:2+j));
    end
end
x
t