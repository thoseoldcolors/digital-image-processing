% Técnicas de Procesamiento Digital de Imagenes
% 4 de Septiembre de 2019
% Transformada Discreta de Fourier

clear all
clc
close all

tic;
%% Definimos tres imágenes de NxN y N2xN2
N = 201;                % Tamaño de matriz para cuadrado y rectangulo   
N2 = 301;               % Tamalo de matriz ara el disco
Ic = zeros(N, N);
Id = zeros(N2, N2);
Ir = zeros(N, N);

[Nr, Nc] = size(Ic);
Cr = floor(Nr/2)+1;      % Cy    Renglones 
Cc = floor(Nc/2)+1;      % Cx    Columnas
%% Cuadrado
Ic(Cr-5:Cr+5,Cr-5:Cr+5) = ones(11,11);

%% Disco
[x,y] = freqspace(21,'meshgrid');
Disk = sqrt(x.^2+y.^2)<=1;
Cx = floor(N2/2)+1;
h = floor(21/2);
Id(Cx-h:Cx+h,Cx-h:Cx+h) = Disk;

%% Rectángulo 
Ir(Cr-1:Cr,Cc-5:Cc+5) = ones(2,11);

%% Transformada de Fourier para el cuadrado y rectangulo
M = N;
% N = 51;
for u = 1:M
   for v  = 1:N
      Fc(u,v) =  DFT(Ic,M,N,(u-1),(v-1)); % Cuadrado
      Thc(u,v) = angle(Fc(u,v));          % Ángulos
      
      Fr(u,v) = DFT(Ir,M,N,(u-1),(v-1));  % Rectángulo
      Thr(u,v) = angle(Fr(u,v));          % Ángulos
   end
end
Fca = fftshift(Fc);
Fra = fftshift(Fr);

%% Transformada de Fourier para el Disco
Md = N2;
Nd = N2;
for u = 1:Md
   for v  = 1:Nd
      Fd(u,v) =  DFT(Id,Md,Nd,(u-1),(v-1)); % Disco
      Thd(u,v) = angle(Fd(u,v));            % Ángulos
   end
end
Fda = fftshift(Fd);                             
%% Cuadrado
subplot(3,3,1)
imshow(Ic);
subplot(3,3,2)
imshow(abs(Fca));
subplot(3,3,3)
imshow(Thc);


%% Disco
subplot(3,3,4)
imshow(Id,[]);
subplot(3,3,5)
imshow(abs(Fda));
subplot(3,3,6)
imshow(Thd);


%% Rectángulo
subplot(3,3,7)
imshow(Ir);
subplot(3,3,8)
imshow(abs(Fra));
subplot(3,3,9)
imshow(Thr);

time = toc;
save('Archivo.dat','time','-ASCII','-double');