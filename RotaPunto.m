%Programa para rotar un punto(pixel) de una imagen 
clear all
clc 
close all

% Creamos una imagen                              generalizacion
r = 29;
c = 29;
I = zeros(r,c);

 Cr = floor(r/2)+1; % Centro de laimagen 
 Cc = floor(c/2)+1;

% Creamos un pixel blanco 
j = Cr+10;      % Recorre renglones
i = Cc;         % Recorre Columnas
I(j,i) = 255;
figure
imshow(I);

th = pi/2;                   % ángulo
R = sqrt((Cr-j)^2 + (Cc-i)^2); % Radio

k = Cr+floor(R*sin(th))  % renglón 
t = Cc+floor(R*cos(th))  % columna

T = I(t,k);              
I(t,k) = I(j,i);
I(j,i) = T;

figure 
imshow(I)