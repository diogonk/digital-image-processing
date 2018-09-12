close all; clear all; clc;

pout = imread('pout.tif');
cameraman = imread('cameraman.tif');

a = [-3 0; -.25 63.6;   0.5 270.9];
b = uint8(a);

%im2double
%http://www.mathworks.com/help/images/ref/im2double.html
%I2 = im2double(I) converts the intensity image I to double precision,
%rescaling [importante saber o que é esse 'rescaling'] the data
%if necessary. If the input image is of class double, the output
%image is identical.
%Para o MATLAB, uma imagem 'double precision' está na faixa [0 1].
%Como a imagem de entrada é uint8, a im2double faz o 'rescaling' para
%adaptar para a faixa [0 1]: 0->0, 255->1, apenas dividindo todos
%os valores por 255.
c = im2double(b);
%Adapta para a faixa [0 255]: 0->0, 255->255
d = im2uint8(b);
%Convert matrix to grayscale image
%http://www.mathworks.com/help/toolbox/images/ref/mat2gray.html
%minimo(b)->0, maximo(b)->1. Isto é chamado de 'normalização' ou 'ajuste
%de contraste'
g = mat2gray(b);
bd = double(b);%para fazer operações sobre 'b' em double precision
g2 = ((bd-min(bd(:))) / (max(bd(:))-min(bd(:))))*1; %igual ao mat2gray(b)


