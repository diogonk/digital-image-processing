clear all, close all

t = 0.7;

img = imread('cameraman.tif');

l = fspecial('laplacian', 0);
lap = edge(img,'zerocross',t,l);
sob = edge(img,'sobel');

figure
subplot(1,2,1)
imshow(lap);
title('Lap')
subplot(1,2,2)
imshow(sob);
title('Sob')