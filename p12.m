i = imread('cancercell.jpg');
% i = im2double(i); 
i = rgb2gray(i);
figure;
subplot(2, 2, 1);
imshow(i);
title('original image');

saltPepperNoiseImage = imnoise(i, 'salt & pepper', 0.05); 

subplot(2, 2, 2);
imshow(saltPepperNoiseImage);
title('salt and pepper noise');


gaussianNoiseImage = imnoise(saltPepperNoiseImage, 'gaussian', 0, 0.01); 

subplot(2, 2, 3);
imshow(gaussianNoiseImage);
title('gaussian noise');

s = imnoise(gaussianNoiseImage, 'speckle', 0.05);

subplot(2, 2, 4);
imshow(s);






%spatial filters
g1 = fspecial('average', [10 10]);
mean = imfilter(s, g1, 'symmetric');

median = medfilt2(s, [10 10]);

g2 = fspecial('gaussian', [10 10], 1.0);
gaussian = imfilter(s, g2, 'symmetric');

figure;
subplot(2, 2, 1);
imshow(s);
title('original noisy image');

subplot(2, 2, 2);
imshow(mean);
title('after mean filter');

subplot(2, 2, 3);
imshow(median);
title('after median filter');

subplot(2, 2, 4);
imshow(gaussian);
title('after gaussian filter');

