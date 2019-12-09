function x=jacobi2(A,b,x0,TOL, MAXITER)
% Implementacion del metodo de Jacobi
% con numero maximo de iteraciones MAXITER.
% Con tolerancia de la norma de la diferencia 
% entre iteraciones consecutivas TOL
% En x aparece las aproximacion tras iter iteraciones.
[n,n]= size(A);
x=x0;
iter=0;
dif=TOL+1;
 while (iter<MAXITER & dif >TOL)
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
   dif=norm(y-x);
   iter++;
endwhile
'Se han realizado ',iter,' iteraciones:'
return