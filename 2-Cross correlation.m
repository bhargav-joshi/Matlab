% Cross correlation:
clear all;
clc;
n1=input("enter the start of x1");
x1=input("enter elements of x1");
N1=length(x1);
n2=input("enter the start of x2");
x2=input("enter elements of x2");
N2=length(x2);
ni=n1-(N1+n2-1);
nf=ni+(N1+N2-2);
N=ni:nf;
nf1=n1+N1-1;
nf2=n2+N2-1;
N1=n1:nf1;
N2=n2:nf2;
y=xcorr(x1,x2);
subplot(3,1,1);
stem(N1,x1)
title('x1 signal')
subplot(3,1,2)
stem(N2,x2)
title('x2 signal')
subplot(3,1,3)
