function histogramimg=imghist(img)
histogramimg=zeros(256,1);
for i=1:256
    histogramimg(i)=sum(sum(img == i))
end
bar(histogramimg);
end