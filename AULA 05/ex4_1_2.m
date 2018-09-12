clear all; close all; clc;
I = imread('./IF69D_Atividade_04_arquivos/Fig0304(a)(breast_digital_Xray).tif');
y = uint8(0:255);
%plot(y); xlim([0 255]); ylim([0 255]);
Ia = y(256-I);
figure, subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(Ia), title('Transformação');