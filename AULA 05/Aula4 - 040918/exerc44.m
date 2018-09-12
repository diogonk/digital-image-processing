% PDI - Aula 04/09/2018
% Author: Xie Jiayu
% Auto-contraste (também chamado de normalização) (na unha, usando mat2gray
% e imadjust)
% Exerc. 4.4

close all;
clear all;
clc;

img = imread('pout.tif');
img_funcao1 = mat2gray(img);    % usando função mat2gray
img_funcao2 = imadjust(img);    % usando função imadjust

L = 256;    % tamanho do espectro
r_min = min(min(img));
r_max = max(max(img));

img_unha = (img - r_min)*((L-1)/(r_max - r_min));
img_unha = mat2gray(img_unha);

figure
imshow(img);
title('original');

figure
subplot(1,3,1)
imshow(img_funcao1);
title('mat2gray');
subplot(1,3,2)
imshow(img_funcao2);
title('imadjust');
subplot(1,3,3)
imshow(img_unha);
title('img unha');

        