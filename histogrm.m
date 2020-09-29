clc
clear all
close all
I=imread('peppers.png');
figure();
grayimg=rgb2gray(I);
subplot(1,3,1);
imshow(grayimg);
title('Grayscale Image');
subplot(1,3,2);
imhist(grayimg);
title('Histogram using inbuilt function');
subplot(1,3,3);
histogramimg=imghist(grayimg);
title('Histogram using user defined function');