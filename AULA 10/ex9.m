clear all; close all; clc;
% Cria imagem sintética g

corrarray = zeros(8);
inputhand = 1; %0->left | 1 ->right
im{1} = mat2gray(imread('mugs_tst/mug_11/mug_11_01.png'));
im{2} = mat2gray(imread('mugs_tst/mug_11/mug_11_02.png'));
im{3} = mat2gray(imread('mugs_tst/mug_11/mug_11_03.png'));
im{4} = mat2gray(imread('mugs_tst/mug_11/mug_11_04.png'));
im{5} = mat2gray(imread('mugs_tst/mug_11/mug_11_05.png'));
im{6} = mat2gray(imread('mugs_tst/mug_11/mug_11_06.png'));
im{7} = mat2gray(imread('mugs_tst/mug_11/mug_11_07.png'));
im{8} = mat2gray(imread('mugs_tst/mug_11/mug_11_08.png'));
%[aaaa, left_rectUUUU] = imcrop(im{3});
%[j, rect2] = imcrop(im1);
%rect2 = [93.51 120.51 471.98 341.98];
% I = imcrop(im,rect2);
mascara = mask_right(); %mascara para comparacao

if inputhand == 0 %0->left | 1 ->right
    rect_mug = [100.510000000000 140.510000000000 112.980000000000 284.980000000000];%[125.510000000000 154.510000000000 84.9800000000000 272.980000000000];%[104.510000000000 140.510000000000 132.980000000000 314.980000000000];
    mascara = flip(mascara,2);
else
    rect_mug = [422.510000000000 193.510000000000 139.980000000000 252.980000000000];%[403.510000000000 140.510000000000 115.980000000000 311.980000000000];
    
end
mascara = imbinarize(mascara);
%right_crop = imcrop(I, right_rect);
%left_crop = imcrop(I, left_rect);
%[j, asa_direita] = imcrop(I);

for i=1:8
    %I = imcrop(im{i},rect2);
    crop = imcrop(im{i},rect_mug);
    th1 = graythresh(crop);
    bw1 = imbinarize(crop,th1);
    subplot(1,2,1)
    imshow(bw1);
    subplot(1,2,2)
    imshow(mascara);
    %pause
    correlationOutput = normxcorr2(mascara(:,:), bw1(:,:));
    %imshow(correlationOutput, []);
    %title('Correlation Output');

    [maxCorrValue, maxIndex] = max(abs(correlationOutput(:)));
    corrarray(i) = maxCorrValue
    %pause
end
    [maxValueimg, maxIndeximg] = max(corrarray(:));
    imshow(im{maxIndeximg}); 
    %imshow(mascara);