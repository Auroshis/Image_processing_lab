clc;
clear all;
close all;
ip = imread('cameraman.tif');
op = imgaussfilt(ip,1);
subplot(2,2,1);
imshow(ip);
title('input image');

subplot(2,2,2);
imshow(op);
title('Gaussian filter with variance 1');

op1 = imgaussfilt(ip,3);
subplot(2,2,3);
imshow(op1);
title('Gaussian filter with variance 3');

g_kernel = (1/16)*[1;2;1]*[1,2,1];
g_filt = user_gauss(1,3,3);
op_1_img = imfilter(ip, g_filt, 'same');
subplot(2,2,4);
imshow(op_1_img);
title('Gaussian filter user defined variance 3');