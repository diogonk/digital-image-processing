clear all; close all; clc

x = 0:pi/180:2*pi;
y = sin(x);
figure
plot(y);
grid on
xlabel('rad');
ylabel('sin(x)');