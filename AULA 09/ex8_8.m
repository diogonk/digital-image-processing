% adaptive_Th[script]
% Tutorial 'Adaptive Thresholding',
% capítulo 15, 
% páginas 350 até 352 do livro
% Oge Marques, Practical image and video
% processing using MATLAB, Wiley, 2011.
clear all; close all; clc
g = imread('IF69D_Atividade_08_arquivos/gradient_with_text.tif');
figure, imshow(g), title('in')
% Global Th
ggth = im2bw(g, graythresh(g));
figure, imshow(ggth), title('ggth')
figure, imhist(g) % pelo histograma:
                  % otsu não é uma boa
% Adaptive Th
% Função blockproc é sem overlap
% Cria function handle
fun = @(myBlock) adaptThStd(myBlock.data);
gath = blockproc(g, [10 10], fun); % processa 
figure, imshow(gath), title('gath')