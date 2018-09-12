close all; clear all; clc;



I = imread('pout.tif');

hist_unha = zeros(1,256);

for j=0:255
    hist_unha(j+1) = sum(I(:) == j);
end
%ics = intlut(I,y1);
%iis = intlut(I,y2);
subplot(2,1,1), imhist(I), title('Imhist');
subplot(2,1,2), bar(hist_unha), title('hist na unha'); axis([0 250 0 1500]);
%subplot(1,3,3), imshow(iis), title('Intensity-level slicing');


