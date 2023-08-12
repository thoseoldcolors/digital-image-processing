% Técnicas de Procesamiento digital de Imagenes
% Programa para rotar un cuadrado 45°

clear all
clc 
close all

I = zeros(51, 51);   % Creamos imagen (renglones, Columnas ) = (y,x)
[Nr, Nc] = size(I);

% Programa para rotar un cuadrado 45°
Cr = floor(Nr/2)+1; % Cy    Renglones 
Cc = floor(Nc/2)+1; % Cx    Columnas
 
I(Cr-10:Cr+10, Cc-10:Cc+10) = ones(21, 21);

th = pi/4;          % Ángulo de rotación

for j = Cr-10:Cr+10 
    for i = Cc-10:Cc+10
        
    R = sqrt((Cr-j)^2 + (Cc-i)^2);
    Kr = Cr + floor(R*cos(th));
    Kc = Cc + floor(R*sin(th));
    
    T = I(Kr, Kc);
    I(Kr,Kc) = I(j,i);
    I(j,i) = T;
    
    end    
end

figure 
mesh(I);
view(2);

