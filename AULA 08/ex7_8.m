clear all, close all, clc

img = imread('cameraman.tif');

t = 0.035;

s = edge(img,'sobel',t);
c = edge(img,'canny');

figure
subplot(1,2,1);
imshow(s);
title('Sobel');
subplot(1,2,2);
imshow(c);
title('Canny');