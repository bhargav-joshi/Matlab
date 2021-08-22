%  circular convolution 
clc;
x=input('Enter the sequence 1:');
h=input('Enter the sequence 2:');
y=cconv(x,h)
figure;
title('Circular Convolution');
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
