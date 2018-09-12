% PDI - Aula 04/09/2018
% Author: Xie Jiayu
% Funções de transformação dos níveis de cinza (loge)
% Exerc. 4.3

close all;
clear all;
clc;

%Logaritmo neperiano (base e)
y = log(1:256);

img = imread('IF69D_Atividade_04_arquivos/radio.tif');
%img = im2double(img);
img_log = y(img+1);
img_log = mat2gray(img_log);

figure
subplot(2,2,1);
imshow(img);
title('Original');
subplot(2,2,2);
plot(y);
grid on;
xlabel('x')
ylabel('y = log(x)')
title('Log function');
subplot(2,2,3);
imshow(img_log);
title('Alterada');