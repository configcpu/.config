a=imread('cameraman.tif');

subplot(2,2,1);
imshow(a);

level=graythresh(a);

b=im2bw(a, level);

subplot(2,2,2);

imshow(b);

subplot(2,2,3);

imhist(a);

% Code2: 
figure;
a=imread('cameraman.tif'); 
a1=a>180;

subplot(2,2,1);
imshow(a);
title('original image');

subplot(2,2,2);
imshow(a1);
title('thresholded image');