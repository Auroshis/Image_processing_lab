%point operation
clc
clear all
close all
I=imread('peppers.png');
figure();
subplot(221);
imshow(I);
title('Original Image');
grayimg=rgb2gray(I);
[r c]=size(grayimg);
neagatimg=0;
for i=1:r
    for j=1:c
        negatimg(i,j)=255-grayimg(i, j);
    end
end
subplot(212);
imshow(negatimg);
title('Negation of image using userdefined function');
subplot(222);
imshow(imcomplement(grayimg));
title('Negation of image using inbuilt function');