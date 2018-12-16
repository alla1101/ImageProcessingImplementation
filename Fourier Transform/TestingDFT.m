clear;clc;
%% 
% creating picture

%a=[zeros(256,128),ones(256,128)]; imtool(a);
%b=zeros(256,256); b(78:178,78:178)=1; imtool(b);
%[x,y]=meshgrid(1:256,1:256); c=(x+y>182)&(x+y<329)&(x-y>-67)&(x-y<73); imtool(c);
[x,y]=meshgrid(-128:127,-128:127); z=sqrt(x.^2+y.^2)<15; imtool(z);

%%
% Performing fourier transform and shifting value

%af=fftshift(fft2(a));
%bf=fftshift(fft2(b));
%cf=fftshift(fft2(c));
zf=fftshift(fft2(z));
%%
% calling homemade function lol

% fftshow(af,'log');
%fftshow(bf,'log');
%fftshow(cf,'log');
fftshow(zf,'log');
