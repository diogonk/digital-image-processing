clear all; close all; clc;

Image = im2double(imread('IF69D_Atividade_06_arquivos/Lenna256g_ng20.png'));

h1 = fspecial('average',3);
h2 = fspecial('average',7);

m1 = imfilter(Image,h1);
m2 = imfilter(Image,h2);
[J1clara,rect1] = imcrop(Image);
[J1escura,rect2] = imcrop(Image);
close;
J2clara = imcrop(m1, rect1);
J2escura = imcrop(m1, rect2);
J3clara = imcrop(m2, rect1);
J3escura = imcrop(m2, rect2);

sigma1 = var(J1escura(:));
sigma2 = var(J2escura(:));
sigma3 = var(J3escura(:));
media1 = mean(J1clara(:));
media2 = mean(J2clara(:));
media3 = mean(J3clara(:));

SNRDefault = media1/sigma1
SNR3 = media2/sigma2
SNR5 = media3/sigma3

figure
imshow(Image);
title('Original');
figure
imshow(m1);
title('3');
figure
imshow(m2);
title('5');