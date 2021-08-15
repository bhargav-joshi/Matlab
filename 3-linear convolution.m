% linear convolution                                   
clc;
x=input('Enter the sequence 1:');
h=input('Enter the sequence 2:');
y=conv(x,h)
figure;
title('Linear convolution');
subplot(3,1,1);
stem(x);
ylabel('Amplitude->');
xlabel('N->');
subplot(3,1,2);
stem(h);
ylabel('Amplitude->');
xlabel('N->');
subplot(3,1,3);
stem(y);
ylabel('Amplitude->');
xlabel('N->');
disp('The resultant signals:');
