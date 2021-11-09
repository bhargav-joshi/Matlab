%Image sharpening
clear all
clc
a=imread('https://i.pinimg.com/originals/a6/02/50/a60250125f778bd48c77c568aa681e1a.jpg');
b=imsharpen(a);
subplot(1,2,1)
imshow(a)
subplot(1,2,2)
imshow(b)
