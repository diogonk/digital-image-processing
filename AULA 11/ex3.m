clear all; close all; clc;
% Cria imagem sintética g
%IF69D_Atividade_10_arquivos\
greens = imread('greens.jpg');
mask1 = zeros(size(greens,1));

for i=1:size(greens,1)
    for j=1:size(greens,2)
        R = greens(i,j,1);
        G = greens(i,j,2);
        B = greens(i,j,3);
        mask1(i,j) =  (R)*0.55-(G);
    end
end
mascara = imbinarize(mask1);
mascara2 = imfill(mascara,'holes');
I1 = imcrop(mascara2,[0 0 250 150]);
I2 = imcrop(mascara2,[250 0 500 150]);
I3 = imcrop(mascara2,[0 150 250 300]);
I4 = imcrop(mascara2,[250 150 500 300]);

% subplot(2,2,1), imshow(I1);
% subplot(2,2,2), imshow(I2);
% subplot(2,2,3), imshow(I3);
% subplot(2,2,4), imshow(I4);
area_imagem = 150*250;
total1 = 100*sum(sum(I1))/(area_imagem)
total2 = 100*sum(sum(I2))/(area_imagem)
total3 = 100*sum(sum(I3))/(area_imagem)
total4 = 100*sum(sum(I4))/(area_imagem)

greens = im2double(greens).*mascara2;
imshow(greens);
%figure, rgbplot(cm)