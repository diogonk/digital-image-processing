clear all, close all
clc
% Cria imagem sintética g
w = 256;
objt = 192; fundo = 64; rdn = 10;
g = makeImSynthHex(w,objt,fundo,rdn);
g = im2double(g);
Sh = fspecial('sobel');
gSv = imfilter(g,Sh,'replicate');
gScv = imfilter(g,Sh,'replicate','conv');
Sv = Sh';
gSh = imfilter(g,Sv,'replicate');
gSch = imfilter(g,Sv,'replicate','conv');
S = mat2gray(sqrt(gSv.^2 + gSh.^2));
Sc = mat2gray(sqrt(gScv.^2 + gSch.^2));

gSv = mat2gray(gSv);
gScv = mat2gray(gScv);
gSh = mat2gray(gSh);
gSch = mat2gray(gSch);

figure
subplot(2,2,1)
imshow(gSv)
title('Corr')
subplot(2,2,3)
imshow(gScv)
title('Conv')
subplot(2,2,2)
imshow(gSh)
title('Corr')
subplot(2,2,4)
imshow(gSch)
title('Conv')

figure, imshow(S)
title('Nao Conv')
figure, imshow(Sc)
title('Conv')