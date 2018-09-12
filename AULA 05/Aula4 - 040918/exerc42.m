% PDI - Aula 04/09/2018
% Author: Xie Jiayu
% Fun��es de transforma��o dos n�veis de cinza (negativo usando a fun��o intlut)
% Exerc. 4.2

close all;
clear all;
clc;

I = imread('IF69D_Atividade_04_arquivos/Fig0304(a)(breast_digital_Xray).tif');
y = uint8(255:-1:0);    % para fazer o negativo depois
plot(y); xlim([0 255]); ylim([0 255]);
Ia = intlut(I,y);
figure, subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(Ia), title('Transforma��o usando intlut');