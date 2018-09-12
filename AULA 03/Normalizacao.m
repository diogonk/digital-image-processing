clear all; close all; clc;
g = imread('pout.tif');

g1 = mat2gray(g, double([min(min(g)), max(max(g))]));

subplot(1,2,1);
imshow(g)
title('Original')
subplot(1,2,2);
imshow(g1)
title('Normalizado');