% FFT de imagen con una letra
% 11 de septiembre de 2019
% Calculamos la 'fast fourier transform' de una imagen con la letra E, 
% expresamos cada valor como un número complejo en coordenadas polares
% y modificamos su amplitud conun valor 'k'. Calculamos la transformada
% inversa y obtenemos la imagen filtrada.

clear all
clc
close all
%% Leemos las imagenes
% I = imread('TPDI/AA.tif');
% I = rgb2gray(I);
I = imread('TPDI/fig3-3a.jpg');
I2 = imread('TPDI/fig3-3d.jpg');
% I = double(I);
% I2 = double(I2);
% [Nr, Nc] = size(I);
 k = 0.5;
% I2 = zeros(Nr,Nc);
% I2(1:61,1:61) = I(130:190,120:180);
subplot(2,3,1)
imshow(I);

F_I = fft2(I); 
FS_I = angle(F_I);
%FF_I = fftshift(F_I);
mod_FF = abs(F_I);

subplot(2,3,2)
imshow(log(mod_FF + 1),[]);
subplot(2,3,3);
imshow(FS_I);

subplot(2,3,4)
imshow(I2);

F_I2 = fft2(I2);
FS_I2 = angle(F_I2);
%FF_I2 = fftshift(F_I2);
mod_FF2 = abs(F_I2);

subplot(2,3,5)
imshow(log(mod_FF2+1),[]);
subplot(2,3,6)
imshow(FS_I2);

% mod = mod_FF-mod_FF2;
% figure
% imshow(log(mod+1),[]);
mod_FF2 = mod_FF2.^k;
H = mod_FF2.*exp(1i*FS_I2);
I_P = ifft2(H);
I_P = real(I_P);
figure
imshow(I_P,[]);
