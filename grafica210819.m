% Grafica de la transformacion de intensidad
%    r: valores de intencidad de I
%    S: valor de intensidad de la image de respuesta o procesada
%    E: Controla la pendiente de la transformación
%    m: m pertenece a [0,1], ó [0, 255]
%
%    21 de agosto de 2019

close all
clc 
clear all

m = 0.25;
r = 0:0.01:1;
E = 1000;

for i = 1:length(r)
S(i) = 1/(1+(m/r(i))^E);
end

figure
title('Intensidad de la imágen');
plot(r,S);
ylabel('S = T(r)');
xlabel('r');
grid on





