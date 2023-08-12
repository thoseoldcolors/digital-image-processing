% Funciona con el preograma clas40919
function F = DFT(I,M,N,u,v)
   F = 0;
  for x = 1:M
      for y = 1:N
          
        F = F + I(x,y)*exp(-2*pi*1j*(u*(x-1)/M + v*(y-1)/N));  
          
      end
  end
end