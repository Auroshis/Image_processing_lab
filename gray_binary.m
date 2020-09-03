% B317012 WAP to perform RGB to gray scale and then to binary image.
% Subplot, colour image, grayscale image, binary image

img = imread('peppers.png')
subplot(2,2,1);
imshow(img)
title('original')

rgb1 = rgb2gray(img);
subplot(2,2,2);
imshow(rgb1)
title('grayscale')

BW = im2bw(img,0.4)
subplot(2,2,3);
imshow(BW)
title('binary image')

