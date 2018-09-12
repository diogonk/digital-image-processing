clear all; close all; clc;

A = ones(5,5)
H = [5 5 -3; 5 0 -3; -3 -3 -3]

B = imfilter(A,H, 'corr') %Default caso não seja especificado
C = imfilter(A,H, 'conv')

C2 = imfilter(A,H*2)
D = imfilter(A,H, 'symmetric')% default é preencher com 0
E = imfilter(A,H, 'full') %default é a saída 'same'