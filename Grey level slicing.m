%Grey level slicing without background
close all
clc
a=imread('https://cdn.mos.cms.futurecdn.net/VRv8ab66tAfezxvXdXVpfe-1200-80.jpg');
b=double(a);
[row, col]=size(b);
for x=1:1:row
 for y=1:1:col
 if((b(x,y)>128))&&(b(x,y)<240)
 b(x,y)=255;
 else
 b(x,y)=0;
 end
 end
end
subplot(2,1,1)
imshow(a)
subplot(2,1,2)
imshow(b)
