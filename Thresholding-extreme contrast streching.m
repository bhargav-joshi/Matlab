%%Thresholding-extreme contrast streching
clear all
clc
a=imread('https://cdn.mos.cms.futurecdn.net/VRv8ab66tAfezxvXdXVpfe-1200-80.jpg');
[row,col]=size(a);
t=50;
for x=1:1:row
for y=1:1:col
if(a(x,y)<t)
g(x,y)=0;
else
g(x,y)=255;
end
end
end
subplot(1,2,1)
imshow(a)
subplot(1,2,2)
imshow(g)
