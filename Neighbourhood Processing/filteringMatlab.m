clear;clc;
a=ones(3,3)/9;
x=uint8(10*magic(5));
same=filter2(a,x,'same');
same
valid=filter2(a,x,'valid');
valid
x2=zeros(7,7);
x2(2:6,2:6)=x;
sameUvalid=filter2(a,x2,'valid');
sameUvalid
orifull=filter2(a,x2,'same');
orifull
full=filter2(a,x,'full');
full
