% B317012 
%WAP to read, display and save an image
%with a 'user defined name'.
%Read an image
%Display it
%Save the image in a new name”B217XXX.jpg’

img = imread('dp.jpg')
figure,imshow(img)
title('original image')
imwrite(img,'B317012.jpg')
new_img = imread('B317012.jpg')
figure, imshow(new_img)
title('B317012.jpg')