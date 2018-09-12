% PDI - Aula 04/09/2018
% Author: Xie Jiayu
% Funções de transformação dos níveis de cinza (gamma usando função imadjust)
% e imadjust)
% Exerc. 4.5

close all;
clear all;
clc;

img = imread('IF69D_Atividade_04_arquivos/radio.tif');
img = im2double(img);
gama = 0.4;
low_in = min(min(img));
high_in = max(max(img));
img_gamma = imadjust(img, [low_in high_in], [0 1], gama);

figure
subplot(2,2,1);
imshow(img);
title('original');
subplot(2,2,2);
imshow(img_gamma);
title('img gamma = 0.4');

gama = 0.1;
img_gamma = imadjust(img, [low_in high_in], [0 1], gama);

subplot(2,2,3);
imshow(img_gamma);
title('img gamma = 0.1');

gama = 2;
img_gamma = imadjust(img, [low_in high_in], [0 1], gama);

subplot(2,2,4);
imshow(img_gamma);
title('img gamma = 2.0');

