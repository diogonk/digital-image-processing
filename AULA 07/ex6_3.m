clear all; close all; clc;

Image = im2double(imread('IF69D_Atividade_06_arquivos/Lenna256g_ng20.png'));

h1 = fspecial('average',5);
ml = imfilter(Image,h1);
fun = @(x) var(x(:));
croparea = imcrop(Image);
Vr = fun(croparea);
Vl = nlfilter(Image, [5 5],fun);
A = (1 - (Vr./Vl)).*Image + (Vr./Vl).*ml;

figure
imshow(Image);
title('Original');
figure
imshow(A);
title('MMES');
figure
imshow(ml);
title('Box Filter');