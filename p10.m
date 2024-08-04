i = imread('cancercell.jpg');
subplot(2,2,1);
imshow(i); 
title('Original Image');

g = rgb2gray(i);
subplot(2,2,2);
imshow(g);
title('Gray Image');


c = imcrop(i,[0 0 600 600]);
subplot(2,2,3);
imshow(c);
title('Cropped Image');

m = mean2(i);
disp('m');
disp(m);

s = std2(i);
disp('s');
disp(s);

figure,
k = (checkerboard > 0.8);
subplot(2,1,1);
imshow(k); 
title('Image1');

k1 = (checkerboard > 0.5);
subplot(2,1,2); 
imshow(k1);
title('Image2');

r = corr2(k, k1); 
disp('r');
disp(r);
