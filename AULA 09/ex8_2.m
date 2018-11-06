clear all; close all; clc;
% Cria imagem sintética g

im1 = im2double(imread('IF69D_Atividade_08_arquivos/psl1_gray.png'));
im2 = im2double(imread('IF69D_Atividade_08_arquivos/psl2_gray.png'));
im3 = im2double(imread('IF69D_Atividade_08_arquivos/psl3_gray.png'));

th1 = graythresh(im1);
th2 = graythresh(im2);
th3 = graythresh(im3);

bw1 = not(imbinarize(im1,th1));
bw2 = not(imbinarize(im2,th2));
bw3 = not(imbinarize(im3,th3));


% Display
%  figure, imshow(bw1)
%  title('Imagem 1')
%  figure, imshow(bw2)
%  title('Imagem 2')
%  figure, imshow(bw3)
%  title('Imagem 3')
 
 SE = strel('disk', 3);
 imorf1 = imopen(bw1,SE);
 imorf2 = imopen(bw2,SE);
 imorf3 = imopen(bw3,SE);
 SE = strel('disk', 5);
 imorf1 = imclose(imorf1,SE);
 imorf2 = imclose(imorf2,SE);
 imorf3 = imclose(imorf3,SE);
 figure, subplot(1,3,1)
 imshow(imorf1)
 title('Imagem 1')
subplot(1,3,2)
 imshow(imorf2)
 title('Imagem 2')
subplot(1,3,3)
 imshow(imorf3)
 title('Imagem 3')