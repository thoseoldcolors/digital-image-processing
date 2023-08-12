% Técnicas de Procesamiento Digital de Imagenes
% 16 de octubre de 2019
% Thresholding: Implementación de la segmentación

clear all
clc 
close all

I = imread('TPDI\Lenna_(test_image).png');
%I = imread('TPDI\peppers.png');
I = rgb2gray(I);

[R, C] = size(I);
min_I = min(I(:));
max_I = max(I(:));
TOL = 0;
T(1) = (min_I+max_I)/2; % Tamaño del umbral
n = 2;
f = 1;
k = 0
while  f == 1
    k = k+1
    p = 1;
    q = 1;
for i = 1:R
   for j = 1:C
       if I(i,j) <= T(n-1)
           A1(p) = I(i,j);
           p = p+1;
       else
           A2(q) = I(i,j);
           q = q+1;
       end
   end
end

m1 = mean(A1);%(min(A1)+ max(A1))/2;
m2 = mean(A2);%(min(A2)+ max(A2))/2;
T(n) = (m1+m2)/2;

if abs(T(n)-T(n-1))<= TOL
    f = 0;
end
n = n+1;
end
level = T(end);
BW = I<level;
BW = double(BW);
subplot(1,2,1)
imshow(I);
subplot(1,2,2)
imshow(BW);
