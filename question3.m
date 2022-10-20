% (i)
% the Local Binary Pattern(LBP) method is used to detect the face figures
% in an image.The original LBP operator is defined as a window in the 3*3, with the 
% window center pixel as the threshold, to compare the grayscale value of the
% adjacent 8 pixels with it, and if the surrounding pixel value is greater
% than the center pixel value, the position of the pixel point is marked as
% 1, otherwise 0. In this way, 8 points in the 3*3 neighborhood can produce 
% 8-bit binary numbers by comparison (typically converted to decimal numbers,
% or LBP codes, a total of 256), that is, the LBP value of the center pixel
% of the window is obtained, and this value is used to reflect the texture
% information of the region.We can put a pixel point with theThe difference
% relationship between 8 adjacent points is expressed in one number, and the
% range of this number is 0-255. Because LBP records the difference between
% the center pixel point and the domain pixel point, the LBP change is not 
% obvious when the illumination change causes the pixel grayscale value to 
% increase and decrease. Therefore, it can be considered that LBP is not
% sensitive to the change of illumination, LBP detection is only the texture 
% information of the image, so the LBP can also be made histogram statistics,
% this histogram can be used as a feature operator of texture analysis.
% steps are:
% 1) First, the detection window is divided into a small area of 16x16 (cell); 
% (2) for one pixel in each cell, compare the grayscale value of the 
% adjacent 8 pixels with it, and if the surrounding pixel value is 
% greater than the center pixel value, the position of the pixel point
% is marked as 1, otherwise it is 0. In this way, the 8 points in the
% 3*3 neighborhood can produce a 8-bit binary number by comparison,
% that is, the LBP value of the center pixel of the window is obtained.
% (3) Then calculate the histogram for each cell, that is, the frequency
% at which each number (assuming the decimal number LBP value) appears, 
% and then normalize the histogram. 
% (4) Finally, the statistical histogram of each cell obtained is 
% connected into a eigenvector, that is, the LBP texture eigenvectors of 
% the whole graph;


