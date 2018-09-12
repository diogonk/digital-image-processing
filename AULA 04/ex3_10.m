close all; clear all; clc;
manIMG = imread('cameraman.tif');
phi = 20;
phi_rad = pi*phi/180;

A = [cos(phi_rad) sin(phi_rad) 0; -sin(phi_rad) cos(phi_rad) 0; 0 0 1];



[img_height, img_length] = size(manIMG);

manIMGr = uint8(ones(img_height, img_length));
affineIMG = imrotate(manIMG,20);
for u=1:1:img_height
    for v=1:1:img_length
        w = [u v 1]*A;
        x = uint8(round(w(1),0))+1; 
        y = uint8(round(w(2),0))+1;         
        manIMGr(x,y) = manIMG(uint8(u),uint8(v));
    end
end
imshow(manIMGr);

subplot(2,2,1);
imshow(manIMG);
title('Original')

subplot(2,2,2);
imshow(manIMGr);
title('OurAffineFunction')

subplot(2,2,3);
imshow(affineIMG);
title('AffineFunction')