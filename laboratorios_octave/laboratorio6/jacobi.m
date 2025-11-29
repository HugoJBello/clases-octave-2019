function x=jacobi(A,b,x0,niter)
% Implementacion del metodo de Jacobi
% con numero fijo de iteraciones.
% En x aparece las aproximacion tras niter iteraciones.
[n,n]= size(A);
x=x0;
 for k=1:niter
   y=x; %copia de la iteracion anterior
   for i=1:n
     suma=0;
     for j=1:n
       if (j != i) 
         suma=suma+A(i,j)*y(j);
       endif
     end  
     x(i)=(b(i)-suma)/A(i,i);
   end
end
return