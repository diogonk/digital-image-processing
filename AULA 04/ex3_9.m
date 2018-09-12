close all; clear all; clc;

manIMG = imread('cameraman.tif');
nearNeighbour = imrotate(manIMG, 30, 'nearest');
bicubic = imrotate(manIMG, 30, 'bicubic');


subplot(1,3,1);
imshow(manIMG);
title('Original')

subplot(1,3,2);
imshow(nearNeighbour);
title('nearest neighbour')

subplot(1,3,3);
imshow(bicubic);
title('bicubic')