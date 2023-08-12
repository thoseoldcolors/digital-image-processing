% Técnicas de Procesamiento Digital de Imagenes
% 10 de octubre de 2019
% Procesamiento Morfológico
% Aplicación de las funciones 'imclose' e 'imopen'
% 
close all
clc
clear all

A = imread('TPDI\drysoil.jpg');
A = rgb2gray(A);
figure
imshow(A);
B = imread('TPDI\download.jpg');
SE = strel('line',10,90);
I = imopen(B,SE);
I2 = imclose(B,SE);
figure
imshow(I);

figure
imshow(I2);