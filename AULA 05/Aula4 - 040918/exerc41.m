% PDI - Aula 04/09/2018
% Author: Xie Jiayu
% Funções de transformação dos níveis de cinza (identidade e negativo)
% Exerc. 4.1

close all;
clear all;
clc;

I = imread('moon.tif');
y = uint8(0:255);
plot(y); xlim([0 255]); ylim([0 255]);
Ia = y(I + 1);
figure, subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(Ia), title('Transformação');

if I == Ia
    disp('imagens são iguais');
end

I = imread('IF69D_Atividade_04_arquivos/Fig0304(a)(breast_digital_Xray).tif');
y = uint8(0:256);
negativo = y(256 - I);
figure, subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(negativo), title('Negativo');