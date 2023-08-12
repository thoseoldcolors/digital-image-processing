% Técnicas de procesamiento digital de imagenes
% 29 de agosto de 2019
% Funcion imnoise

clear all
clc
close all

I = imread('TPDI\imagenes\Fig0338(a)(blurry_moon).tif');
%I = double(I);

N = imnoise(I,'salt & pepper', 0.5);
figure
imshow(I);
figure
imshow(N);

%w = fspecial('average', [3 3]);
w = fspecial('sobel');
f = imfilter(N,w,'replicate');
figure
imshow(f,[]);