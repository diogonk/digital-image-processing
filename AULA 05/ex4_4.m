clear all; close all; clc;
%Funcao log
%Logaritmo neperiano (base e)
y = log(1:256);
I = imread('pout.tif');
Id = double(I);
rmin = min(min(Id));
rmax = max(max(Id));
L = 256;
i_unha = uint8((Id-rmin)*(L-1)/(rmax-rmin));
i_mat2gray = mat2gray(I);
ia = im2double(I);
i_imadjust = imadjust(I,[min(min(ia)) max(max(ia))],[0 1]);
%Ia = mat2gray(y(I+1));
%figure, subplot(1,2,1), plot(y), grid on, title('log function'), xlabel('x'), ylabel('y = log(x)');
subplot(2,2,1), imshow(I), title('Original');
subplot(2,2,2), imshow(i_unha), title('Auto-Contraste na unha');
subplot(2,2,3), imshow(i_mat2gray), title('Auto-Contraste mat2gray');
subplot(2,2,4), imshow(i_imadjust), title('Auto-Contraste imadjust');
    