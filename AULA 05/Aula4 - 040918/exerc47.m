% PDI - Aula 04/09/2018
% Author: Xie Jiayu
% Histograma usando a função imhist
% Exerc. 4.7

close all;
clear all;
clc;

img1 = imread('coins.png');
img2 = imread('pout.tif');

figure
subplot(2,2,1)
imshow(img1);
title('coins original');
subplot(2,2,2)
imhist(img1);
title('coins histograma');
subplot(2,2,3)
imshow(img2);
title('pout original');
subplot(2,2,4)
imhist(img2);
title('pout histograma');