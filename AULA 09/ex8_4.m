%Exercicio 8.4
%Diogo Knop e Xie Jiayu

clear all; close all; clc;

im = im2double(imread('IF69D_Atividade_08_arquivos/whitecells4.png'));
th = graythresh(im);
bw = imbinarize(im,th);

% Display
SE = strel('square', 3);
imorf1 = imclose(bw,SE);
% figure, subplot(1,2,1)
% imshow(bw)
% title('Imagem 1')
% subplot(1,2,2)
% imshow(imorf1)
% title('Imagem 1 morfologica')

[imlabel8, nlabel8] = bwlabel(bw, 8);
rv8rgb = label2rgb(imlabel8);
disp(['n. celulas usando nhood8 = ', num2str(nlabel8)])
figure, image(rv8rgb)
title('rv8rgb')
