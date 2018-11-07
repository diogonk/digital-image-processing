%clear all; close all; clc;
clear; close all; clc;
% Cria imagem sintética g
%IF69D_Atividade_10_arquivos\
hanoi_rgb = imread('hanoi_01_tst/hanoi_01_22.png');
hanoi_rgb_rot = imrotate(hanoi_rgb,-35);

%[img1, J1] = imcrop(hanoi_rgb_rot);
%[img2, J2] = imcrop(hanoi_rgb_rot);
%[img3, J3] = imcrop(hanoi_rgb_rot);
hanoi_hsv = rgb2hsv(hanoi_rgb_rot);

J1 = [2.805100000000000e+02 3.565100000000000e+02 1.199800000000000e+02 1.939800000000000e+02];
J2 = [4.155100000000000e+02 3.695100000000000e+02 1.199800000000000e+02 1.939800000000000e+02];
J3 = [5.305100000000000e+02 3.665100000000000e+02 1.199800000000000e+02 1.939800000000000e+02];

%hanoi_hsv_crop = zeros(3,size(J1),size(J2),size(J3));

hanoi_hsv_crop_1 = imcrop(hanoi_hsv, J1);
hanoi_hsv_crop_2 = imcrop(hanoi_hsv, J2);
hanoi_hsv_crop_3 = imcrop(hanoi_hsv, J3);

%figure,imshow(imcrop(hanoi_rgb_rot, J1));
%figure,imshow(imcrop(hanoi_rgb_rot, J2));
%figure,imshow(imcrop(hanoi_rgb_rot, J3));


hanoi_hsv_crop = {hanoi_hsv_crop_1; hanoi_hsv_crop_2; hanoi_hsv_crop_3};

vetor_cores = zeros(3,5);

% [s1, rect_blue] = rgb2hsv(imcrop(imread('hanoi_01/hanoi_01_23.png')));
% [s1, rect_yellow] = rgb2hsv(imcrop(imread('hanoi_01/hanoi_01_02.png')));
% [s1, rect_red] = rgb2hsv(imcrop(imread('hanoi_01/hanoi_01_17.png')));
% [s1, rect_green] = rgb2hsv(imcrop(imread('hanoi_01/hanoi_01_13.png')));
% [s1, rect_orange] = rgb2hsv(imcrop(imread('hanoi_01/hanoi_01_16.png')));


h_blue = .5944%0.5887;%mean(mean(rect_blue(:,:,1)));%0.5944
h_yellow = 0.1466;%mean(mean(rect_yellow(:,:,1)));%0.1583
h_red = 0.0111;%mean(mean(rect_red(:,:,1))); %0.0096
h_green = 0.3917;%mean(mean(rect_green(:,:,1)));0.3735
h_orange = 0.0695;%mean(mean(rect_orange(:,:,1)));%0.0713

s_blue = .8719;%0.08955;%0.8719
s_yellow = 0.7905;%0.7006
s_red = 0.8061;%0.7760
s_green = 0.9883;%0.9259
s_orange = 0.8333;%0.8812

h_erro = 0.025;
s_erro = 0.085;

for i=1:3
    vetor_cores(i,1) = sum(sum(hanoi_hsv_crop{i}(:,:,1)>=h_blue-h_erro & hanoi_hsv_crop{i}(:,:,1)<=h_blue+h_erro ...
        & hanoi_hsv_crop{i}(:,:,2)>=s_blue-s_erro & hanoi_hsv_crop{i}(:,:,2)<=s_blue+s_erro));
    vetor_cores(i,2) = sum(sum(hanoi_hsv_crop{i}(:,:,1)>=h_yellow-h_erro & hanoi_hsv_crop{i}(:,:,1)<=h_yellow+h_erro ...
        & hanoi_hsv_crop{i}(:,:,2)>=s_yellow-s_erro & hanoi_hsv_crop{i}(:,:,2)<=s_yellow+s_erro));
    vetor_cores(i,3) = sum(sum(hanoi_hsv_crop{i}(:,:,1)>=h_red-h_erro & hanoi_hsv_crop{i}(:,:,1)<=h_red+h_erro ...
        & hanoi_hsv_crop{i}(:,:,2)>=s_red-s_erro & hanoi_hsv_crop{i}(:,:,2)<=s_red+s_erro));
    vetor_cores(i,4) = sum(sum(hanoi_hsv_crop{i}(:,:,1)>=h_green-h_erro & hanoi_hsv_crop{i}(:,:,1)<=h_green+h_erro ...
        & hanoi_hsv_crop{i}(:,:,2)>=s_green-s_erro & hanoi_hsv_crop{i}(:,:,2)<=s_green+s_erro));
    vetor_cores(i,5) = sum(sum(hanoi_hsv_crop{i}(:,:,1)>=h_orange-h_erro & hanoi_hsv_crop{i}(:,:,1)<=h_orange+h_erro ...
        & hanoi_hsv_crop{i}(:,:,2)>=s_orange-s_erro & hanoi_hsv_crop{i}(:,:,2)<=s_orange+s_erro));
end

% disp('azul   amarelo   vermelho   verde   laranja'); 
% disp('P1', vetor_cores(1,:));
% disp('P2', vetor_cores(2,:));
% disp('P3', vetor_cores(3,:));
%rect_blue = rgb2hsv(imcrop(imread('hanoi_01/hanoi_01_23.png')));
%rect_yellow = rgb2hsv(imcrop(imread('hanoi_01/hanoi_01_02.png')));
%rect_red = rgb2hsv(imcrop(imread('hanoi_01/hanoi_01_17.png')));
%rect_green = rgb2hsv(imcrop(imread('hanoi_01/hanoi_01_13.png')));
%rect_orange = rgb2hsv(imcrop(imread('hanoi_01/hanoi_01_16.png')));

[B, I_B] = max(vetor_cores(:,1));
[Y, I_Y] = max(vetor_cores(:,2));
[R, I_R] = max(vetor_cores(:,3));
[G, I_G] = max(vetor_cores(:,4));
[O, I_O] = max(vetor_cores(:,5));
figure,imshow(hanoi_rgb);
fprintf('AZUL %d\n', I_B);
fprintf('AMARELO %d\n', I_Y);
fprintf('VERMELHO %d\n', I_R);
fprintf('VERDE %d\n', I_G);
fprintf('LARANJA %d\n', I_O);