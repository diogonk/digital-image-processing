clear all; close all; clc;

g = imread('pout.tif');

gcrop = g((21:125),(60:176));
g((21:125),(60:176)) = 0;
subplot(1,2,1);
imshow(g)
title('Original')
rectangle('Position',[60 21 116 104]); 
%imtool(g);
subplot(1,2,2);
imshow(gcrop);
title('Recortado');
imwrite(gcrop,'guricortado.png');