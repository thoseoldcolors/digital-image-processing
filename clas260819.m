% Técnicas de procesamiento digital de imagenes
% Convolución y Correlación
% 26 de agosto de 2019

clear all
clc
close all

t = -3:1/200:3;
N = length(t);

f = zeros(1,N);             % Función Cuadrada
f(501:701) = ones(1,201);

g = zeros(1,N);             % Función Triangular 
% g(501:601) = 2*t(501:601)+1;                 % pico en 0
% g(602:701) = -2*t(602:701)+1; 
% g(901:1001) = 2*(t(901:1001)-t(1001))+1;     % pico desplazado
% g(1001:1101) = -2*(t(1001:1101)-t(1001))+1;
for i = 1:N
    g(901-i:1001-i) = 2*(t(901-i:1001-i)-t(1001-i))+1;     % pico desplazado
    g(1001-i:1101-i) = -2*(t(1001-i:1101-i)-t(1001-i))+1;
    

    plot(t,g,'r');
    hold on
    plot(t,f,'k');
    set(gca,'xlim',[-3.1,3.1],'ylim',[-0.1,1.1])
    grid on
end

% plot(t,g,'r');
% hold on
% plot(t,f,'k');
% set(gca,'xlim',[-3.1,3.1],'ylim',[-0.1,1.1])
% grid on



