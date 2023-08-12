% Técnica de Procesamiento Digital de imágenes
% Programas Finales(3/5): Filtro Sobel
% Miguel Ángel Martínez Lucero

clc 
clear all
close all
%I = imread('TPDI\building.jpg');
 I = imread('TPDI\Lenna_(test_image).png');
 I = rgb2gray(I);
% I = imread('TPDI\imagenes\Fig0326(a)(embedded_square_noisy_512).tif');
I_d = double(I);
I_p = padarray(I_d,[1 1],0);
dx = [-1, -2, -1; 0, 0, 0; 1, 2, 1];    % Sobel
dy = [-1, 0, 1; -2, 0, 2; -1, 0 , 1];
% dx = [0, 1, 2; -1, 0, 1; 1, 2, 1];    % Sobel diagonal
% dy = [-2, -1, 0; -1, 0, 1; 0, 1 , 2];
[Nr, Nc] = size(I_p);
for i = 2:Nr-1
   for j = 2:Nc-1
      sx = I_p(i-1:i+1,j-1:j+1).*dx;  
      sy = I_p(i-1:i+1,j-1:j+1).*dy;
      I_p(i-1,j-1) = abs(sum(sx(:)))/9 + abs(sum(sy(:)))/9;
   end
end
figure
imshowpair(I,I_p,'montage');