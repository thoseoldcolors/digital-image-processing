% Técnicas de procesamiento Digital de Imagenes
% Clase 22 de agosto de 2019
% 2.3 Histograma de la imágen
% Reproducir Figura 2.7
clear all
clc
close all

f = imread('TPDI/imagenes/Fig0221(a)(ctskull-256).tif');
b = 256;
h = imhist(f,b);

p = imhist(f,b)/numel(f);

h1 = imhist(f,25);
horz = linspace(0,255,25);
plot(horz,h1);
% I = imread('TPDI/IMG_20190730_182744599_HDR.jpg');
% figure
% imshow(I);
% G = rgb2gray(I);
% figure
% imshow(G);
% H = [I;G];
% imshow(H,[]);