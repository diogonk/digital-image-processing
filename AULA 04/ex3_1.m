close all; clear all; clc;

I = imread('rice.png');
I2 = imread('cameraman.tif');
K = imdivide(imadd(I,I2), 2); % not recommended 
K2= imlincomb(.5,I,.5,I2); % recommended 

subplot(1,2,1);
imshow(K)
title('Original')
subplot(1,2,2);
imshow(K2)
title('Modificado');