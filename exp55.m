clc;
clear all;
close all;
img = im2double(imread('cameraman.tif'));
dctimg = dct2(img);

subplot(2,2,1);
imshow(img);
title('input');

subplot(2,2,2);
imshow(dctimg);
title('applying DCT');

reimg = idct2(dctimg);
subplot(2,2,3);
imshow(reimg);
title('IDCT recovered image');
temp = dctimg;
[r c] = size(img);
for i = 1:r
    for j = 1:c
        if i> 150 || j> 150
            temp(i,j) = 0;
        end
    end
end
subplot(2,2,4);
imshow(idct2(temp));
title('idct cropped above 150');
%show the result with different values