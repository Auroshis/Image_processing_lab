clc;
clear all;
close all;
ip = imread('cameraman.tif');
op = imgaussfilt(ip,1);
subplot(3,1,1);
imshow(ip)
title('Gaussian filter with variance 1');
subplot(3,1,2);
imshow(op);