% PDI - Aula 04/09/2018
% Author: Xie Jiayu
% Equalização do histograma na unha
% Exerc. 4.10

close all;
clear all;
clc;

img = imread('pout.tif');
img_histec = histeq(img,256);

img_unha = (imhist(img))/((size(img,1))*(size(img,2))); %   hist normalizada
cdf = cumsum(img_unha); % cumulative distribution function (soma cumulativa)
cdf = uint8(cdf*255);
img_unha = intlut(img, cdf);

figure
subplot(3,2,1)
imshow(img);
title('pout original');
subplot(3,2,2)
imhist(img);
title('pout original: histograma');
subplot(3,2,3)
imshow(img_histec);
title('pout com histec');
subplot(3,2,4)
imhist(img_histec);
title('pout: histograma');
subplot(3,2,5)
imshow(img_unha);
title('pout processada na unha');
subplot(3,2,6)
imhist(img_unha);
title('pout unha: histograma');