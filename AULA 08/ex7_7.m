clear all, close all, clc

img = mat2gray(imread('cameraman.tif'));
[l,c] = size(img);
kirschT = zeros(l, c,8);


k1 = [-3 -3 5; -3 0 5; -3 -3 5];
k2 = [-3 5 5; -3 0 5; -3 -3 -3];
k3 = [5 5 5; -3 0 -3; -3 -3 -3];
k4 = [5 5 -3; 5 0 -3; -3 -3 -3];
k5 = [5 -3 -3; 5 0 -3; 5 -3 -3];
k6 = [-3 -3 -3; 5 0 -3; 5 5 -3];
k7 = [-3 -3 -3; -3 0 -3; 5 5 5];
k8 = [-3 -3 -3; -3 0 5; -3 5 5];

kirschT(:,:,1) = imfilter(img,k1,'conv');
kirschT(:,:,2) = imfilter(img,k2,'conv');
kirschT(:,:,3) = imfilter(img,k3,'conv');
kirschT(:,:,4) = imfilter(img,k4,'conv');
kirschT(:,:,5) = imfilter(img,k5,'conv');
kirschT(:,:,6) = imfilter(img,k6,'conv');
kirschT(:,:,7) = imfilter(img,k7,'conv');
kirschT(:,:,8) = imfilter(img,k8,'conv');

kirsch = mat2gray(max(kirschT,[],3));
figure
imshow(kirsch);
title('Kirsch');
