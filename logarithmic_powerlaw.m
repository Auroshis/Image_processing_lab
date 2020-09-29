clc
clear all
close all
I=imread('peppers.png');
figure();
subplot(2,2,1);
imshow(I);
title('Original Image');

grayimg=rgb2gray(I);
doubleimg=im2double(grayimg);

logimg=(log2(doubleimg+1));
subplot(2,2,3);
imshow(logimg);
title('Logarithmic Image');

gamma=3;
powerimg=power(doubleimg,gamma);
subplot(2,2,2);
imshow(powerimg);
title('Power Law transformation: Gamma =3');

gamma=0.5;
powerimg=power(doubleimg,gamma);
subplot(2,2,4);
imshow(powerimg);
title('Power Law transformation: Gamma =0.5');