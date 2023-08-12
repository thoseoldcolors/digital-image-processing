% Técnicas de procesamiento digital de imagenes
% 29 de agosto de 2019
% Filtros Lineales
% Average, disk, gaussian, sobel, etc.
%
%
clear all
clc
close all

I = imread('TPDI\imagenes\Fig0338(a)(blurry_moon).tif');
I = double(I);

%% Filtro Average('average', [r,c])
w = fspecial('average',[3,3]);
f = imfilter(I, w, 'replicate');
figure
mesh(f);

%% Filtro Disk('disk',r)
w1 = fspecial('disk', 25.7);
f1 = imfilter(I, w1, 'replicate');
figure
mesh(w1);

%% Filtro Gaussian('gaussian', [r c], sigma)
w2 = fspecial('gaussian', [100 100], 0.5);
f2 = imfilter(I, w2, 'replicate');
figure
mesh(w2);

%% Filtro Laplacian('laplacian' alpha) alpha en el rango [0,1]
w3 = fspecial('laplacian', 0.0);
f3 = imfilter(I, w3, 'replicate');
figure
mesh(w3);

%% Filtro Log('log', [r c], sigma)
w4 = fspecial('log', [100 100], 0.5);
f4 = imfilter(I, w4, 'replicate');
figure
mesh(w4);

%% Filtro Motion('motion', len, theta)
w5 = fspecial('motion', 100, 45);
f5 = imfilter(I, w5, 'replicate');
figure
mesh(w5);
% hold on
% imshow(f5);
% title('Motion: moon');
%% Filtro Prewitt('prewitt')
w6 = fspecial('prewitt');
f6 = imfilter(I, w6, 'replicate');
figure
mesh(w6);

%% Filtro Sobel('sobel')
w7 = fspecial('sobel');
f7 = imfilter(I, w7, 'replicate');
figure
imshow(w7);

%% Filtro Unsharp('unsharp', alpha) alpha en el rango [0,1]
w8 = fspecial('unsharp', 0);
f8 = imfilter(I, w8, 'replicate');
figure
mesh(w8);