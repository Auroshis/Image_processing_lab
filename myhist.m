function histogram_vector = myhist(img)
histogram_vector = zeros(256,1);
[r c] = size(img);
for i = 1:r
    for j = 1:c 
        histogram_vector(img(i,j)) = histogram_vector(img(i,j)) + 1;
    end
end
bar(histogram_vector);
end