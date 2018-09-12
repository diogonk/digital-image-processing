close all; clear all; clc;

%Contrast stretching
%Aloca uint8
%para depopis usar funcao intlut(y1 � a LUT)
y1 = uint8(zeros([1 256]));
%Equa��o da reta inferiory = (1/3)*x
y1(1:97) = (1/3)*(0:96); 
%Equa��o da reta intermedi�ria y = 3*x -256
y1(98:161) = 3*(97:160) -256;
%Equa��o da reta superior y =(1/3)*x + 170
y1(162:256) = (1/3)*(161:255) + 170;

% %Display
% figure, plot(y1)
% xlim([0 255]), ylim([0 255])
% grid on
% title('Contrast streching')
% xlabel('x'), ylabel('y')

%Intensity-level slicing
%Aloca uint8
%para depopis usar funcao intlut(y2 � a LUT)
y2 = uint8(zeros([1 256])); 
%Equa��o da reta inferiory = x (identidade)
y2(1:97) = 0:96; 
%Equa��o da reta intermedi�ria
%y = 250(um �nico n�vel de cinza cte)
y2(98:161) = 250;
%Equa��o da reta superior y = x (identidade)
y2(162:256) = 161:255;

%%Display
%figure, plot(y2)
%xlim([0 255]), ylim([0 255])
%grid on
%title('Intensity-level slicing')
%xlabel('x'), ylabel('y')

I = imread('./IF69D_Atividade_04_arquivos/radio.tif');
ics = intlut(I,y1);
iis = intlut(I,y2);
subplot(1,3,1), imshow(I), title('Original');
subplot(1,3,2), imshow(ics), title('Contrast streching');
subplot(1,3,3), imshow(iis), title('Intensity-level slicing');
