function res=outlier(IM,D)

f=1/8 * [1 1 1;1 0 1;1 1 1];
IM_double=im2double(IM);
IM_F=filter2(f,IM_double);
r=abs(IM_double-IM_F)-D>0;
res=mat2gray(r.*IM_F+(r-1).*IM_double);