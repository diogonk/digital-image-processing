close all; clear all; clc;

I1 = imread('cameraman.tif');
I2 = imread('./IF69D_Atividade_03_arquivos/cameraman2.tif');
I1 = mat2gray(I1);
I2 = mat2gray(I2);
isub = imsubtract(I1, I2);
imabs = imabsdiff(I1,I2);
subplot(1,2,1);
imshow(isub);
title('Original')
subplot(1,2,2);
imshow(imabs);
title('Modificado');
imsave
% Y(:,:,1) é uma das 16 imagens,  
% Y(:,:,2) é outra...