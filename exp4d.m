clc;
clear all;
close all;
subplot(3,2,1);
ip_img = imread('coins.png');
imshow(ip_img);
title('input image');

subplot(3,2,2);
op = imnoise(ip_img,'salt & pepper',0.05);
imshow(op);
title('adding salt & pepper noise');

mean_filt = (1/9)*eye(3);
op_img = imfilter(op, mean_filt, 'same');
%op_1 = imfilter(op_img, mean_filt, 'same');
subplot(3,2,3);
imshow(op_img);
title('mean filter 3x3');

mean_5_filt = (1/25)*eye(5);
op_img_5 = imfilter(op, mean_5_filt, 'same');
subplot(3,2,4);
imshow(op_img_5);
title('mean filter 5x5');

op_img_median = medfilt2(op,[3,3]);
subplot(3,2,5);
imshow(op_img_median);
title('median filter 3x3');

op_img_median = medfilt2(op,[5,5]);
subplot(3,2,6);
imshow(op_img_median);
title('median filter 5x5');