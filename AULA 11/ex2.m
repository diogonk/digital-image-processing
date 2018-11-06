clear all; close all; clc;
% Cria imagem sintética g
%IF69D_Atividade_10_arquivos\
rgb = imread('board.tif');
imshow(rgb)
rgb_columns = reshape(rgb, [], 3);
%size(rgb_columns)
[unique_colors, m, n] = unique(rgb_columns, 'rows');
%color_counts = accumarray(n, 1);
fprintf('There are %d unique colors in the image.\n', ...
    size(unique_colors, 1))