close all; clear all; clc;

gmb= imread('./IF69D_Atividade_03_arquivos/gDSC04422.png');
m = size(gmb,1);
n = size(gmb,2);
p = m/4;
q = n/4;
X = gmb;
Y = reshape( X, [ p m/p n ] );
Y = permute( Y, [ 1 3 2 ] );
Y = reshape( Y, [ p q m*n/(p*q) ] );

I = double(Y);
I = sum(I,3)/16;
I = uint8(I);
subplot(1,2,1);
imshow(Y(:,:,1));
title('Original')
subplot(1,2,2);
imshow(I)
title('Modificado');
imsave
% Y(:,:,1) é uma das 16 imagens,  
% Y(:,:,2) é outra...