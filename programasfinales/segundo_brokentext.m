% T�cnicas de Procesamiento Digital de Im�genes
% Programas Finales(2/5): Broken Text
% Miguel �ngel Mart�nez Lucero

clc
clear all
close all

I = imread('TPDI\broken_text.png');
B = [0, 1, 0; 1, 1, 1; 0, 1, 0];
D = imdilate(I,B);
imshowpair(I,D,'montage')
