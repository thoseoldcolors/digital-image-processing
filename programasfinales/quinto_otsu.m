% Técnicas de Procesamiento Digital de Imágenes
% Programas finales(5/5): Método de Otsu
% Miguel Ángel Martínez Lucero

clc
clear all
close all

I = imread('TPDI\Lenna_(test_image).png');
%I = imread('TPDI\coins.jpg');
I_2 = rgb2gray(I);          % Imagen en escala de grises

[M, N] = size(I_2);         % Calcula el tamaño de la matriz
min_I = min(I_2(:));        % Mínimo
max_I = max(I_2(:));        % Máximo
n = M*N;                    % Número de píxeles
[COUNTS, X] = imhist(I_2);  % Histograma
P = COUNTS/n;               % Número de píxeles de cada intensidad entre el total
Li = binarySearch(X,length(X), min_I);  % límite inferior
Ls = binarySearch(X,length(X), max_I);  % límite superior

I_2 = double(I_2);
p=1;
for k = Li+1:Ls
    ii = 1;                             % Contador para C_1
    jj = 1;                             % Contador para C_2
    for i = 1:M
       for j = 1:N
         if I_2(i,j)< X(k)
             C_1(ii) = I_2(i,j);
             ii = ii + 1;
         else
             C_2(jj) = I_2(i,j);
             jj = jj + 1;
         end
       end
    end
    % Caclulamos las funciones peso
    W1 = sum(C_1)/n;                 
    W2 = sum(C_2)/n;                 
    sigk(p)= W1*P(k)+ W2*(1-P(k));
    p = p + 1;
end   
level = min(sigk(:));
BW = I_2>level;        % 
% lev = graythresh(I);
% BWW = im2bw(I,lev);    % MATLAB
figure;
imshowpair(I,BW,'montage');
