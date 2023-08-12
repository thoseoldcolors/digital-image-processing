clear all
clc
close all 
I = imread('TPDI/imagenes/Fig0221(a)(ctskull-256).tif');
% figure
% imshow(I);
 I = double(I);
% mx = max(I(:));
% mn = min(I(:));
% H = (3/2)*I-I;
% mx_H = max(H(:));
% mn_H = min(H(:));

%%-------------------- Filtros Espaciales------------------------------ 

I = I/255;
mn_I = min(I(:));
mx_I = max(I(:));
G = imadjust(I, [mn_I, mx_I], [0.25,0.75], 0.1);
figure;
imshow(I)
figure;
imshow(G)
figure
mesh(I)
G = double(G);
figure
mesh(G)