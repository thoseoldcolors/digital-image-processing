% Técnicas de Procesamiento Digital de Imágenes 
% Programas Finales(4/5): correlación
% Miguel Ángel Martínez Lucero

clc
clear all
close all

%% Cargamos las imagenes I_1 e I_2
I_1 = imread('TPDI/images/fig2-8-a.jpg');
I_2 = imread('TPDI/images/fig2-8-a.jpg');

% verificamos si son del mismo tamaño
if size(I_1,1) ~= size(I_2,1) || size(I_1,2) ~= size(I_2,2)
   I_2 = samesize(I_1, I_2);
end

I_1 = double(rgb2gray(I_1));
I_2 = double(rgb2gray(I_2));
figure
imshowpair(I_1,I_2,'montage');
%% Calculamos la Transformada de Fourier

F_I1 = fftshift(fft2(I_1));
F_I2 = fftshift(fft2(I_2));

%% Calculamos amplitudes

amp_F1 = abs(F_I1);
amp_F2 = abs(F_I2);

%% Calculamos los ángulos 

an_F1 = angle(F_I1);
an_F2 = angle(F_I2);

%% Calculamos la correlación 
corr_w = (amp_F1.*conj(exp(1i*an_F1))).*(amp_F2.*exp(1i*an_F2));
corr_e = real(fftshift(ifft2(corr_w)));
figure
mesh(corr_e);
%view(2);