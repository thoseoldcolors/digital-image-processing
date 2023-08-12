% Técnicas de procesamiento digital de imagenes
% Filtros Espaciales
% Clase 28 de agosto de 2019
% En MATLAB este tipo de filtros se usan con:
%       fspecial <-- Crear filtro o w
%       imfilter <-- procesa la imagen
%
clear all
clc 
close all

I = imread('TPDI/imagenes/Fig0221(a)(ctskull-256).tif');
%w = ones(3,3);                   % filtro 
w = [0,1,0;1,-4,1;0,1,0];
%w = [0,0.5,0;5,-0.4,0;9,0.5,0];
[Nr, Nc] = size(I);

r = zeros(1,Nc);  % Renglón de zeros de tamaño Nc
I_N = [r;I;r];    % Agregamos un renglón arriba y abajo
[I_Nr, I_Nc] = size(I_N);
c = zeros(I_Nr,1); % Columna de zeros con el nuevo tamaño
H = [c,I_N,c];     % Agrega columna a la nueva imagen 
H = double(H);     % Convierte a doble 
F = zeros(Nr,Nc);
[Nr_H,Nc_H]= size(H);

for i = 2:Nr_H-1
   for j = 2:Nc_H-1
       
       s = H(i-1:i+1, j-1:j+1).*w;
       F(i-1,j-1) = sum(s(:))/9;
       
   end
end
figure
imshow(I,[]);
figure
imshow(F,[]);