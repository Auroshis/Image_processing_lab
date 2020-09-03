% B317012 divide into 4 parts

I = imread('B317012.jpg')
I1=I(1:size(I,1)/2,1:size(I,2)/2,:);
I2=I(size(I,1)/2+1:size(I,1),1:size(I,2)/2,:);
I3=I(1:size(I,1)/2,size(I,2)/2+1:size(I,2),:);
I4=I(size(I,1)/2+1:size(I,1),size(I,2)/2+1:size(I,2),:);
subplot(2,2,1);
imshow(I1);
subplot(2,2,2);
imshow(I3);
subplot(2,2,3);
imshow(I2);
subplot(2,2,4);
imshow(I4);