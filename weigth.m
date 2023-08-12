function [ W ] = weigth(I, a,b, n)
% Realiza la suma de intencidades de los p�xeles de una imagen
% ENTRADA: Imagen(I), limite renglones(li), l�mite columnas(lj), 
% total de pixeles(n).
S = 0;
for i = 1:a
    for j = 1:b
        S = S + I(i,j);
    end
end
W = S/n;
end
