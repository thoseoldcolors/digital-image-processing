%% T�cnicas de Procesamiento de Im�genes
% 14 de octubre de 2019
% Utilizaci� de la funci�n 'bwmorph' para realizar 
% operaciones morfol�gicas en una imagen binaria

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