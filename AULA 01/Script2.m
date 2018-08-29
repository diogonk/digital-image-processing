%MyFisrtScript [script]

clear all; close all; clc;

a = [2 4; 5 6];
b = ones(1, 4);
a = b(:); %Transforma B em Colunna
a = [2 4; 5 6];
b(:) = a; %Mantem o formato de B

clear a b;

n = [9.8 9.9 5.8 6.5 6 5.9 9.9 5.9 ];
%5.9-> 6.0
%9.9-> 10.0

%MATLAB THINKING
n
ind = find(n==5.9 | n==9.9);
n(ind) = round(n(ind));
n