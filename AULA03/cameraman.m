close all; clear all; clc;

g = imread('cameraman.tif');
figure, imshow(g);
g1 = double(g);
figure, imshow(g1);
g2 = im2double(g);
figure, imshow(g2);
g3 = mat2gray(g);
figure, imshow(g3); 