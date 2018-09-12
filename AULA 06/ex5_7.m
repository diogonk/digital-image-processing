clear all; close all; clc;
A = imread('IF69D_Atividade_05_arquivos/salt-and-pepper1.tif');
D = uint8(zeros(size(A)));
mask = zeros(1,9);

for i=2:size(A,1)-2
    for j=2:size(A,2)-2
        mask(1) = A(i-1,j-1);
        mask(2) = A(i-1,j);
        mask(3) = A(i-1,j+1);
        mask(4) = A(i,j-1);
        mask(5) = A(i,j);
        mask(6) = A(i,j+1);
        mask(7) = A(i+1,j-1);
        mask(8) = A(i+1,j);
        mask(9) = A(i+1,j-1);
        
        D(i,j) = median(mask);
    end
end
subplot (1,2,1);
imshow(A);
title('original');
subplot (1,2,2);
imshow(D);
title('filtro na unha');
