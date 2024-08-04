%edge detection
i = imread("cameraman.jpeg");
i = rgb2gray(i);
BW1 = edge(i,'sobel');
BW2 = edge(i,'canny');
figure;
subplot(2,1,1);
imshow(BW1);
title("sobel");
subplot(2,1,2);
imshow(BW2);
title("canny")




%line detection

%horizontal
a = imread('line.jpg');
a = im2gray(a);
figure;
imshow(a);

w = [-1,-1,-1;2,2,2;-1,-1,-1];
g = abs(imfilter(double(a),w));
t = 300;
g = g>=t;

figure;
imshow(g);

%vertical
w = [-1,2,-1;-1,2,-1;-1,2,-1];
g = abs(imfilter(double(a),w));
t = 300;
g = g>=t;

figure;
imshow(g);

% point detection
figure;
i = imread('cameraman.jpeg');
i = rgb2gray(i);
points = detectSURFFeatures(i);
imshow(i);
hold on;
plot(points.selectStrongest(10));