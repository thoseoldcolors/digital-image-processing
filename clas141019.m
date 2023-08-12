%% Técnicas de Procesamiento de Imágenes
% 14 de octubre de 2019
% Utilizació de la función 'bwmorph' para realizar 
% operaciones morfológicas en una imagen binaria

clear all
clc
close all

I = imread('TPDI\fing1.jpg');
%I = rgb2gray(I);

I_2 = bwmorph(I, 'thin');
I_3 = bwmorph(I, 'thin', 2);

subplot(3,1,1)
imshow(I);
subplot(3,1,2)
imshow(I_2);
subplot(3,1,3)
imshow(I_3);