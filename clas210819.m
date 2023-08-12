%Calculos de transformada  de Fourier
%Clase 21 de agosto de 2019

clear all
clc
close all 
I = imread('TPDI/imagenes/Fig0221(a)(ctskull-256).tif');
I = double(I);
F_I = fft2(I);
FF_I = fftshift(F_I);
%F_I = fftshift(fft2(I));
mod_F = abs(F_I);
mod_FF = abs(FF_I);

figure
%imshow(mod_F,[]);
imshow(log(mod_F+1),[]);
figure
imshow(log(mod_FF+1),[]);
figure
mesh(log(mod_F+1));
figure
mesh(log(mod_FF+1));


