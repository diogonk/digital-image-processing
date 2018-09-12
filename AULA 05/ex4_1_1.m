clear all, close all
I = imread('moon.tif');
y = uint8(0:255);
plot(y); xlim([0 255]); ylim([0 255]);
Ia = y(255-I);
figure, subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(Ia), title('Transformação');