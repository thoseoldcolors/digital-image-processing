% Técnicas de Procesamiento digital de imágenes
% 14 de octubre de 2019
% Procesamiento Morfológico
% Reconstrucción de una imagen con texto

clear all
clc 
close all

I = imread('TPDI\arbitraryhadamard.png');
%I = imread('TPDI\broken_text.png');
I = rgb2gray(I);
B = [0, 1, 0; 1, 1, 1; 0, 1, 0];
D = imerode(I,B);
subplot(1, 2, 1)
imshow(I);
subplot(1,2,2)
imshow(D)