% Técnicas de Procesamiento Digital de imagenes
% 19 de septiembre de 2019
% Filtrado en el espacio de frecuentcias
%
%
clear all
clc
close all

%% Imagen 
I = imread('TPDI\imagenes\Fig0338(a)(blurry_moon).tif');
%I = double(I);
I_F = fft2(I);
S = fftshift(log(1+abs(I_F)));
%figure
%imshow(S, [])

%% Filter sobel 
h = fspecial('sobel');
PQ = paddedsize(size(I));
H = freqz2(h,PQ(1),PQ(2));
H1 = ifftshift(H);

figure
mesh(abs(H));
figure
mesh(abs(H1));

%% Average
w = fspecial('average',[3,3]);
Ha = freqz2(w,PQ(1),PQ(2));
H2 = ifftshift(Ha);

figure
mesh(abs(Ha));
figure
mesh(abs(H2));

