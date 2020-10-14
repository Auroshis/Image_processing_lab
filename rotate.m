clc;
clear all;
close all;

a = zeros(256,256);
[r c] = size(a);
start1 = (r/2)-40;
start2 = (c/2)-40;

for row = start1:(start1+80)
    for clm = start2:(start2+80)
        a(row,clm) = 1;
    end
end
b=imrotate(a,45,'bilinear','crop');
a1=log(1+abs(fftshift(fft2(a))));
b1=log(1+abs(fftshift(fft2(b))));

subplot(2,2,1);
imshow(a);
title('original image');

subplot(2,2,2);
imshow(b);
title('image rotated by 45 degree');

F1 = fft2(a);
F2 = fft2(b);
subplot(2,2,3);
imshow(F1);
title('FFT of ip');
subplot(2,2,4);
imshow(F2);
title('FFT of rotated');