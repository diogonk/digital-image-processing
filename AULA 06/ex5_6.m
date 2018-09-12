clear all; close all; clc;

A = imread('IF69D_Atividade_05_arquivos/salt-and-pepper1.tif');

B = medfilt2(A,[3 3]);
h = fspecial('average', [3 3]);
C = imfilter(A,h);
figure
subplot(1,3,1)
imshow(A);
title('Original');
subplot(1,3,2)
imshow(B);
title('Mediana');
subplot(1,3,3)
imshow(C);
title('Media');