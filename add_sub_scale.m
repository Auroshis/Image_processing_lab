% B317012 addition, subtraction 
% B317012
I = imread('dp.jpg') ;
I1 = I+100 ;
I2 = I-100;
I3 = I*0.7;
subplot(2,2,1);
imshow(I) ;
title('original');

subplot(2,2,2);
imshow(I1) ;
title('addition');

subplot(2,2,3);
imshow(I2);
title('subtraction');

subplot(2,2,4);
imshow(I3);
title('scaling');
