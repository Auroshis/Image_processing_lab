clc;
clear all;
close all;

base = zeros(256,256);
[r c] = size(base);
start1 = (r/2)-25;
start2 = (c/2)-25;

for row = start1:(start1+50)
    for clm = start2:(start2+50)
        base(row,clm) = 1;
    end
end

img2 = ones(256,256);
[r c] = size(img2);
start1 = (r/2)-40;
start2 = (c/2)-40;

for row = start1:(start1+80)
    for clm = start2:(start2+80)
        img2(row,clm) = 0;
    end
end


subplot(3,2,1);
imshow(base);
title('ip image1');
subplot(3,2,2);
imshow(img2);
title('ip image2');
op = conv2(base,img2, 'same');
subplot(3,2,3);
imshow(op);
title('convolution output');

F1=fft2(base);
F2=fft2(img2);
subplot(3,2,4);
imshow(F1);
title('FFT of img1');

subplot(3,2,5);
imshow(F2);
title('FFT of img2');


I4=F1.*F2;
IF=ifft2(I4);
IFS =fftshift(IF);
subplot(3,2,6);
imshow(IFS);
title('Convolution verified using FFT');