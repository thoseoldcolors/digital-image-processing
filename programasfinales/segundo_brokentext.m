% Técnicas de Procesamiento Digital de Imágenes
% Programas Finales(2/5): Broken Text
% Miguel Ángel Martínez Lucero

clc
clear all
close all

I = imread('TPDI\broken_text.png');
B = [0, 1, 0; 1, 1, 1; 0, 1, 0];
D = imdilate(I,B);
imshowpair(I,D,'montage')
