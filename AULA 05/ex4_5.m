close all; clear all; clc;
%Funcao Gamma
%x = 0:0.01:1;
%y1 = x.^0.4;
%y2 = x.^0.1;
%y3 = x.^2.0;
%y4 = x.^10;

I = im2double(imread('./IF69D_Atividade_04_arquivos/radio.tif'));

y1 = 0.4;
y2 = 0.1;
y3 = 2.0;
y4 = 10;
rmin = min(min(I));
rmax = max(max(I));
im1 = imadjust(I,[rmin rmax],[0 1],y1);
im2 = imadjust(I,[rmin rmax],[0 1],y2);
im3 = imadjust(I,[rmin rmax],[0 1],y3);
im4 = imadjust(I,[rmin rmax],[0 1],y4);

%Display
figure
subplot(2,2,1), imshow(im1),title('Gamma = 0.4');
subplot(2,2,2), imshow(im2),title('Gamma = 0.1');
subplot(2,2,3), imshow(im3),title('Gamma = 2.0');
subplot(2,2,4), imshow(im4),title('Gamma = 10');