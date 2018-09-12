% PDI - Aula 04/09/2018
% Author: Xie Jiayu
% Equalização do histograma usando a função histeq
% Exerc. 4.9

close all;
clear all;
clc;

img = imread('coins.png');
img_processada = histeq(img);

figure
subplot(2,2,1)
imshow(img);
title('coins original');
subplot(2,2,2)
imhist(img);
title('coins: histograma');
subplot(2,2,3)
imshow(img_processada);
title('coins processada com histeq');
subplot(2,2,4)
imhist(img_processada);
title('coins histec: histograma');