rgbImage = imread('peppers.png');
redChannel = rgbImage(:, :, 1);
greenChannel = rgbImage(:, :, 2);
blueChannel = rgbImage(:, :, 3);
subplot(2,2,1)
imshow(rgbImage)
title('RGB IMAGE')
subplot(2,2,2)
brgImage = cat(3, blueChannel,redChannel, greenChannel);
imshow(brgImage)
title('BRG IMAGE')
subplot(2,2,3)
grbImage = cat(3, greenChannel,redChannel, blueChannel);
imshow(grbImage)
title('GRB IMAGE')
subplot(2,2,4)
bgrImage = cat(3, blueChannel,greenChannel,redChannel);
imshow(bgrImage)
title('BGR IMAGE')