close all; clear all; clc;

A = imread('./IF69D_Atividade_03_arquivos/msk_gray_bw.png');
B = imread('./IF69D_Atividade_03_arquivos/obj_gray.png');

A = uint8((A.*255));
B = uint8(B);
imresult = bitand(A,B);

subplot(1,2,1);
imshow(B);
title('Original')
subplot(1,2,2);
imshow(imresult);
title('im2')

