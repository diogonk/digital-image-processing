clear all; close all; clc;
%Funcao log
%Logaritmo neperiano (base e)
y = log(1:256);
I = imread('./IF69D_Atividade_04_arquivos/radio.tif');
Ia = mat2gray(y(I+1));
%figure, subplot(1,2,1), plot(y), grid on, title('log function'), xlabel('x'), ylabel('y = log(x)');
subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(Ia), title('Transformação');