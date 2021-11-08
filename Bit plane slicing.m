% Bit plane slicing
clear all
clc
b=imread('https://i.pinimg.com/originals/a6/02/50/a60250125f778bd48c77c568aa681e1a.jpg');
a=double(b);
r=1;
[row col]=size(a);
for x=1:1:row
for y=1:1:col
c=dec2bin(a(x,y),8);
d=c(r);
w(x,y)=double(d);
if w(x,y)==49
w(x,y)=255;
else
w(x,y)=0;
end
end
end
subplot(1,2,1)
imshow(b)
subplot(1,2,2)
imshow(w)
