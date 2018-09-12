close all; clear all; clc;

I1 = imread('./IF69D_Atividade_03_arquivos/earth1.tif');
I2 = imread('./IF69D_Atividade_03_arquivos/earth2.tif');
I1 = im2double(I1);
I2 = im2double(I2);

ir = immultiply(I1, I2);

subplot(1,3,1);
imshow(I1);
title('Earth 1')
subplot(1,3,2);
imshow(I2);
title('Earth 2')
subplot(1,3,3);
imshow(ir);
title('Resultado');