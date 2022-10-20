function l = logTransform(img, c)
i=changeclass('double', img);
l=c*log(1+i);
end

