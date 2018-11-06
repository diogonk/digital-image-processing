% adaptive_Th[script]
% Tutorial 'Adaptive Thresholding',
% cap�tulo 15, 
% p�ginas 350 at� 352 do livro
% Oge Marques, Practical image and video
% processing using MATLAB, Wiley, 2011.
clear all; close all; clc
g = imread('IF69D_Atividade_08_arquivos/gradient_with_text.tif');
figure, imshow(g), title('in')
% Global Th
ggth = im2bw(g, graythresh(g));
figure, imshow(ggth), title('ggth')
figure, imhist(g) % pelo histograma:
                  % otsu n�o � uma boa
% Adaptive Th
% Fun��o blockproc � sem overlap
% Cria function handle
fun = @(myBlock) adaptThStd(myBlock.data);
gath = blockproc(g, [10 10], fun); % processa 
figure, imshow(gath), title('gath')