close all; clear all; clc;

maskimg = imread('./IF69D_Atividade_03_arquivos/mask.jpg');
contrast = imread('./IF69D_Atividade_03_arquivos/contrast.jpg');

maskimg = im2double(maskimg);
contrast = im2double(contrast);
%isub = imsubtract(maskimg, contrast);
imabs = mat2gray(contrast-maskimg);

subplot(1,3,1);
imshow(maskimg);
title('Mascara')
subplot(1,3,2);
imshow(contrast);
title('Contrast')
subplot(1,3,3);
imshow(imabs);
title('Resultado')