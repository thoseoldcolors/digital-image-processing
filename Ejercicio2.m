% Técnicas de Procesamiento Digital de Imágenes 
% Ejemplo paracalcular el negativo de una imagen

clear all
clc 
close all

I = imread('TPDI/imagenes/Fig0221(a)(ctskull-256).tif');
J = [0:255];
K = sort(J,'descend');
s = length(I(:));
for i = 1:size(I,1)
    for j = 1:size(I,2)
    val = I(i,j);
    index = find(J == val);
    I(i,j) = K(index);
    end
end
figure
imshow(I)