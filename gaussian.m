% Código para generar gaussiana
clear all
clc

 
xc=51;
yc=51;

 
[x,y] = meshgrid(1:101,1:101);
sigma=10;

 
exponent = ((x-xc).^2 + (y-yc).^2)./(2*sigma^2);
amplitude = 1 / (sigma * sqrt(2*pi));  
% The above is very much different than Alan's "1./2*pi*sigma^2"
% which is the same as pi*Sigma^2 / 2.
val       = amplitude  * exp(-exponent);

 
mesh(val)