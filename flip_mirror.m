% B317012 flip, mirror and scale the image

img = imread('peppers.png');

subplot(2,2,1);
imshow(img)
title('original image')

subplot(2,2,2);
vertFlip_img = flip(img, 1); 
imshow(vertFlip_img);  
title('Vertically flipped image');

subplot(2,2,3);
mirror_img = flip(img,2);
imshow(mirror_img);
title('mirrored image')


