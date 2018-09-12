clear all; close all; clc;
gd = imread('IF69D_Atividade_05_arquivos/flowervaseg.png');
h = -1*fspecial('laplacian', 0);
gdL = imfilter(gd,h,'replicate');
gdLs = gd + gdL;
gdlsU = im2uint8(gdLs);
gdlsD = im2double(gdLs);
figure, imshow(gd)
title('Original')
figure, imshow(gdlsU)
title('uint8')
figure, imshow(gdlsD)
title('Double')
figure, imshow(gdL)
title('Laplaciano')


