%Calcula el negativo de una imagen 
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
    I(i,j) = K(index); % Lineal o cuadratico 
    if I(i,j)> 255
        I(i,j) = 255;
    end
    end
end
figure
imshow(I,[]); %min a max de los valores de intensidad en la imagen 
 for i = 1:size(I,1)
    for j = 1: size(I,2)
        I(i,j) = 1/(I(i,j)+1);
    end
 end
 figure
 imshow(I);

