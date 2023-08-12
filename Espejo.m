% Técnicas de Procesamiento Digital de Imágenes 
% Programa para hacer el espejo de una imagen 
% 27 de noviembre de 2019

clc
clear all
close all

I_g = imread('TPDI\building.jpg');
%I_g = rgb2gray(I);
[N_r, N_c] = size(I_g);
k = floor(N_c/2)-1;
for i = 1:N_r
   for j = 1:k
       I_g(i,k+j) = I_g(i,k-j+1);
   end
end
figure
imshow(I_g,[]);