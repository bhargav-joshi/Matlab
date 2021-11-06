image = imread('https://cdn.mos.cms.futurecdn.net/VRv8ab66tAfezxvXdXVpfe-1200-80.jpg');
stretched_Image = imadjust(image, stretchlim(image, [0.05, 0.95]),[]);
subplot(1,2,1);
imshow(image);
title('Original Image');
subplot(1,2,2);
imshow(stretched_Image);
title('Strethced Image');
