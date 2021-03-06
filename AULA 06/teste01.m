clear all; close all; clc;

I = imread('cameraman.tif');
I = mat2gray(I);
% h1 = fspecial('gaussian', [5 5], 1);
% h3 = fspecial('gaussian', [13 13], 1);
% h6 = fspecial('average',  [13 13]);
% J1 = imfilter(I, h1);
% J3 = imfilter(I, h3);
% J6 = imfilter(I, h6);
% subplot(2,2,1);
% imshow(I);
% title('Original');
% subplot(2,2,2);
% imshow(J1);
% title('Gaussian 5');
% subplot(2,2,3);
% imshow(J3);
% title('Gaussian 13');
% subplot(2,2,4);
% imshow(J6);
% title('average 13');

h = [0 1 0; 1 0 -1; 0 -1 0];
J = imfilter(I, h);
figure 
imshow(I);
figure
imshow(J);