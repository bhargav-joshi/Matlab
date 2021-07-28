clc;
clear all;
f0=3;
fs=30;
T = 1/f0;
t=0:0.001:5*T;
xt=cos(2*pi*f0*t);
Ts=1/fs;
n=0:Ts:5*T;
xn=cos(2*pi*f0*n);
subplot(3,1,1)
plot(t, xt);
subplot(3,1,2)
stem(n,xn);
%Reconstruction of signal:
p=input("enter the value of no. of samples");
i=p*3.1415;
j=p*10*3.1415;
Ts=1/100000;
t=0:Ts:0.02;
x1=cos(i*t);
x2=cos(j*t);
x=x1+x2;
subplot(3,1,3)
plot(t,x)
