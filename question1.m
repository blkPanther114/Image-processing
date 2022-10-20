%i)
% the four Basic intensity transformations functions we have learnt include:
%  Image Negatives, Log transformations ,Power-Law (Gamma) transformations
% and Piecewise-Linear transformations(Contrast Stretching, Intensity-level
% Slicing, Bit-plane Slicing)
% for the first image, I choose gamma or log function to enhance the image,
%     because the image is a bit blurring and gamma it is useful for contrast
%     enhancement,also the log transformation can maps a narrow range of low 
%     intensity values in the input into a wider range of output levels, so 
%     the log transformation can expend the values of dark pixels in an 
%     image while compress the higher-level values. 
%     for the second image, because it is too dark, so we want to brighten
%         the image. log function is chosen in this case, because it can 
% map a narrow range of low intenstity into a wider range.

%ii)
a=imread("ImageA.jpg");
b=imread("ImageB.jpg");

NewA=logTransform(a, 1.8);
NewB=GammaTrans(b, 1, 0.6);
figure;
subplot(2,3,1);imshow(a);title("ImageA");
subplot(2,3,2);imshow(NewA);title(" log ImageA")
NewAG=GammarTrans(a, 1, 1);
subplot(2,3,3);imshow(NewAG);title("ImageA with Gamma function")

subplot(2,3,4);imshow(b);title("ImageB");
subplot(2,3,5);imshow(NewB);title("gamma ImageB");
NewBL=LogTransform(b, 3);
subplot(2,3,6);imshow(NewBL);title("ImageB with Log function");


