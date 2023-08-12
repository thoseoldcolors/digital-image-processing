% T�cnicas de Procesamiento Digital de im�genes 
% 24 de octubre de 2019
% M�todo de Otsu
clc
clear all
close all
 I = imread('TPDI\memirror.jpg');
%I = imread('TPDI\Lenna_(test_image).png');
%I = imread('TPDI\coins.jpg');
I_2 = rgb2gray(I);          % Imagen en escala de grises

[M, N] = size(I_2);         % Calcula el tama�o de la matriz
min_I = min(I_2(:));        % M�nimo
max_I = max(I_2(:));        % M�ximo
n = M*N;                    % N�mero de p�xeles
[COUNTS, X] = imhist(I_2);  % Histograma
P = COUNTS/n;               % N�mero de p�xeles de cada intensidad entre el total
Li = binarySearch(X,length(X), min_I);  % l�mite inferior
Ls = binarySearch(X,length(X), max_I);  % l�mite superior
%m_g = dot(P,X);

I_2 = double(I_2);
p=1;
for k = Li+1:Ls
    ii = 1;                             % Contador para C_1
    jj = 1;                             % Contador para C_2
    for i = 1:M
       for j = 1:N
         if I_2(i,j)< X(k)
             C_1(ii) = I_2(i,j);
             ii = ii + 1;
         else
             C_2(jj) = I_2(i,j);
             jj = jj + 1;
         end
       end
    end
    % Caclulamos las funciones peso
    W1 = sum(C_1)/n;                 %weigth(I_2,k-1,k-1,n);
    W2 = sum(C_2)/n;                 %weigth(I_2,k,k,n);
    %sigk(p)= W1*var(C_1)+ W2*var(C_2);
    sigk(p)= W1*P(k)+ W2*(1-P(k));
    p = p + 1;
end   
level = min(sigk(:));
BW = I_2>level;        % 
lev = graythresh(I);
BWW = im2bw(I,lev);    % MATLAB
figure;
imshowpair(BW,BWW,'montage');