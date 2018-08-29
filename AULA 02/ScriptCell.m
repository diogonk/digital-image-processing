clear all; close all; clc;

myCell = cell(1,3);

myCell{1} = magic(5);
myCell{2} = magic(4);
myCell{3} = magic(3);

for k=1:length(myCell) 
    disp(sum(myCell{k}.'));
end