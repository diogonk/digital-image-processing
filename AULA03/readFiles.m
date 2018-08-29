%read files
clear all; close all; clc;
caminho = 'C:\Program Files\MATLAB\R2017a\toolbox\images\icons';

f = dir(caminho);
fname = {f.name};
findfile = strfind(fname,'.png');
index = find(~cellfun(@isempty, findfile));
findfile(index);
arquivos = f(index);
%f_png = f(name
