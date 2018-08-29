close all; clear all; clc;

maskimg = imread('./IF69D_Atividade_03_arquivos/mask.jpg');
contrast = imread('./IF69D_Atividade_03_arquivos/contrast.jpg');

maskimg = im2double(maskimg);
contrast = im2double(contrast);
%isub = imsubtract(maskimg, contrast);
imabs = mat2gray(contrast-maskimg);

subplot(1,2,1);
imshow(maskimg);
title('Marcara')
subplot(1,2,2);
imshow(imabs);
title('Resultado')
