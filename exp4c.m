clc;
clear all;
close all;
ip = imread('cameraman.tif');
op = imgaussfilt(ip,1);
subplot(3,2,1);
imshow(ip);
title('input image');
subplot(3,2,2);
imshow(op);
title('Gaussian filter with sigma 1');

op1 = imgaussfilt(ip,3);
subplot(3,2,3);
imshow(op1);
title('Gaussian filter with sigma 3');

Output = userdefined_gauss(ip,3,3);
subplot(3,2,4);
imshow(Output);
title('user defined Gausssian - sigma 3');

op2 = userdefined_gauss(ip,1,3);
subplot(3,2,5);
imshow(op2);
title('user defined Gaussian - sigma 1');