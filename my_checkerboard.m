% Experiment 1 - creating images || Roll no- B317012
% write a user defined function 'my_checkerboard' instead of using the
% inbuilt function
% 20 is number of pixels in each  tile, 5 rows and 7 columns, each small
% box contains 20 pixels
%Hope this helps you. 
function a = my_checkerboard(n, p, m)
img = [zeros(n),ones(n);ones(n),zeros(n)]
pic = repmat(img, p, m)
imshow(pic)
end