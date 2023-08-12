% Técnicas de Procesamiento Digital de imágenes 
% Programas Finales(1/5): Negativo de una imagen en escala de grises
% Miguel Ángel Martínez Lucero

clc
clear all
close all

G = imread('TPDI/Lenna_(test_image).png');
IG = rgb2gray(G);
I = rgb2gray(G);
J = 0:255;
K = sort(J,'descend');
s = length(I(:));
for i = 1:size(I,1)
    for j = 1:size(I,2)
    val = I(i,j);
    index = find(J == val);
    I(i,j) = K(index); 
    if I(i,j)> 255
        I(i,j) = 255;
    end
    end
end
figure
imshowpair(IG,I,'montage');