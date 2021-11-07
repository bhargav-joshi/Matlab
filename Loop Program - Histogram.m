% Loop Program - Histogram
close all
clc
b=imread('https://i.pinimg.com/originals/a6/02/50/a60250125f778bd48c77c568aa681e1a.jpg');
a=double(b);
[row col]=size(a);
h=zeros(1,300);
for n=1:1:row
for m=1:1:col
if a(n,m)==0
a(n,m)=1;
end
end
end
for n=1:1:row
for m=1:1:col
t=a(n,m);
h(t)=h(t)+1;
end
end
subplot(1,2,1)
imshow(b)
subplot(1,2,2)
bar(h)
