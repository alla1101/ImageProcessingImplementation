function fftshow(f,type)

if nargin<2
    type='log';
end
if type=='log'
    f1=log(1+abs(f));
    fm=max(f1(:));
    imtool(im2uint8(f1/fm));
elseif type=='abs'
    fa=abs(f);
    fm=max(fa(:));
    imtool((fa/fm));
else
    error('Type must be abs or log');
end;