close all; clear all; clc;

A = imread('./IF69D_Atividade_03_arquivos/obj_bw.png');
B = imread('./IF69D_Atividade_03_arquivos/msk_bw.png');


im1 = ~A;
im2 = ~B;
im3 = A & B;
im4 = A | B;
im5 =  xor(A,B);
im6 =  A & ~B;

subplot(3,3,1);
imshow(im1);
title('im1')
subplot(3,3,2);
imshow(im2);
title('im2')
subplot(3,3,3);
imshow(im3);
title('im3')
subplot(3,3,4);
imshow(im4);
title('im4')
subplot(3,3,5);
imshow(im5);
title('im5')
subplot(3,3,6);
imshow(im6);
title('im6')
