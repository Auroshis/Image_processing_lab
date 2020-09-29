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

a=100;
b=200;
[r,c] = size(grayimg);

clipimg=grayimg;
for i=1:r
    for j=1:c
        if (grayimg(i,j)<=a)
            clipimg(i,j)=0;
        elseif (grayimg(i,j)>=b)
            clipimg(i,j)= 255;
        end
    end
end
clipimg=uint8(clipimg);
subplot(2,2,2);
imshow(clipimg);
title('Clipped Image');
subplot(2,2,4);
imhist(clipimg);
title('clipped histogram');
subplot(2,2,3);
imhist(grayimg)
title('grayscale histogram')