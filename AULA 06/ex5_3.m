clear all; close all; clc;

I1 = imread('IF69D_Atividade_05_arquivos/b5s.40.bmp');
I2 = imread('IF69D_Atividade_05_arquivos/b5s.100.bmp');

h1 = fspecial('average', [5 5]);
h2 = fspecial('average', [7 7]);

h1s = (1/25)*ones(5,5);
h2s = (1/49)*ones(7,7);

i1fspecial = imfilter(I1,h1);
i1average = imfilter(I1,h1s);
i2fspecial = imfilter(I2,h2);
i2average = imfilter(I2,h2s);
figure
subplot(1, 3, 1)
imshow(I1);
title('B5S.40')
subplot(1, 3, 2)
imshow(i1fspecial);
title('Fspecial')
subplot(1, 3, 3)
imshow(i1average);
title('Filtro 5 5')

figure
subplot(1, 3, 1)
imshow(I2);
title('B5S.100')
subplot(1, 3, 2)
imshow(i2fspecial);
title('Fspecial')
subplot(1, 3, 3)
imshow(i2average);
title('Filtro 7 7')