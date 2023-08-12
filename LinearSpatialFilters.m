% Digital image processing using MATLAB
% 2.5.1 Linear Spatial Filters
% 29 de agosto de 2019

clear all
clc 
close all

I = imread('TPDI\imagenes\Fig0338(a)(blurry_moon).tif');

% figure
% imshow(I);

w = fspecial('laplacian', 0);
g1 = imfilter(I, w, 'replicate');
% figure
% imshow(g1, []);

I2 = im2double(I);
g2 = imfilter(I2, w , 'replicate');
% figure
% imshow(I2, []);

g = I2-g2;
% figure
% imshow(g);

% Mejorar una imagren con un filtro laplaciano con un -8 en 
% el centro. Usualmente se obtiene una mejora más nítida con
% un filtro laplaciano con un -8 en el centro.

w4 = fspecial('laplacian', 0);
w8 = [1,1,1;1,-8,1;1,1,1];
I = im2double(I);
g4 = I - imfilter(I, w4, 'replicate');
g8 = I - imfilter(I, w8, 'replicate');
imshow(I)
figure
imshow(g4);
figure
imshow(g8);