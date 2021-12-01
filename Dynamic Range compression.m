%Dynamic Range compression
a=imread('https://i.pinimg.com/originals/a6/02/50/a60250125f778bd48c77c568aa681e1a.jpg');
subplot(3,2,1)
imshow([a,255-a]);
gray_img=rgb2gray(a);
subplot(3,2,2)
imshow(gray_img);
F = fft2(gray_img);
subplot(3,2,3)
imshow(abs(F), []);
%Shift Zero Frequency Component
%Get the centered spectrum
Fsh = fftshift(F);
subplot(3,2,4)
imshow(abs(Fsh), []);
% Applying Log function to see patterns in image
%apply log transform
log_img = log(1+abs(Fsh));
subplot(3,2,5)
imshow(log_img,[]);
%reconstructing original image (Gray Scale) from Fourier coefficients
%reconstruct the Image
F = ifftshift(Fsh);
f = ifft2(F);
subplot(3,2,6)
imshow(f, []);
