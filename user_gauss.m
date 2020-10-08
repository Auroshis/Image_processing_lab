function gaussian = user_gauss(sigma,m,n)
gaussian = []
for i = 1:m
    for j = 1:n
        gaussian(i,j) = (1/(2*pi*sigma*sigma))*exp((-1*(i^2+j^2))/(2*sigma^2));
    end
end
