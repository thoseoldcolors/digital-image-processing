

clc 
clear all 
close all

I = imread('TPDI\mapat0.jpg');
I2 = imread('TPDI\mapat45.jpg');
I3 = imread('TPDI\mapat90.jpg');

subplot(1,3,1);
imshow(I);
subplot(1,3,2);
imshow(I2);
subplot(1,3,3);
imshow(I3);
suptitle('Sa = Sb = 12.5');