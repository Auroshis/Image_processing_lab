Image1=double(imread('cameraman.tif'))/255;
Image2=double(imread('coins.png'))/255;
subplot(221)
imshow(Image1);
subplot(222)
imshow(Image2);


[rows1, cols1] = size(Image1);
[rows2, cols2] = size(Image2);

rows = max(rows1, rows2);
cols = max(cols1, cols2);


Image1_FFT=fft2(Image1, rows, cols);
Image2_FFT=fft2(Image2, rows, cols);


mag1 = abs(Image1_FFT);
mag2 = abs(Image2_FFT);
pha1 = angle(Image1_FFT);
pha2 = angle(Image2_FFT);

Image1=double(imread('cameraman.tif'))/255;
Image2=double(imread('coins.png'))/255;
subplot(221)
imshow(Image1);
title('input img 1');
subplot(222)
imshow(Image2);
title('input img 2');


[rows1, cols1] = size(Image1);
[rows2, cols2] = size(Image2);

rows = max(rows1, rows2);
cols = max(cols1, cols2);


Image1_FFT=fft2(Image1, rows, cols);
Image2_FFT=fft2(Image2, rows, cols);


mag1 = abs(Image1_FFT);
mag2 = abs(Image2_FFT);
pha1 = angle(Image1_FFT);
pha2 = angle(Image2_FFT);


out1 = mag1 .* exp(j*pha2);
out2 = mag2 .* exp(j*pha1);


out1 = real(ifft2(out1));
out2 = real(ifft2(out2));



subplot(223)
imshow(out1);
title('phase of img2');

subplot(224)
imshow(out2);
title('phase of img1');