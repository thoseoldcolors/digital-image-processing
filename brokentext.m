% T�cnicas de Procesamiento digital de im�genes
% 14 de octubre de 2019
% Procesamiento Morfol�gico
% Reconstrucci�n de una imagen con texto

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