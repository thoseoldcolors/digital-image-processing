% Agrega ejes a la imagen utilizada para explicar en semana de ciencias

clc
clear all
close all
 I = imread('TPDI\tile_02.png');
 I_2 = 1.2*I;
 I_3 = imrotate(I_2,45);
 %I_F = I_3 + I;
 [r, c] = size(I);
 Cr = floor(r/2)+1;
 Cc = floor(c/2)+1;
 x = [-r/2:r/2];
 y = x;
 figure;
 imshow(I_2);
 