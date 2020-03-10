function [zero,res,niter]=secante(fun,x0,x1,tol,nmax)
%SECANTE Hallar ceros de funciones.
% ZERO=SECANTE(FUN,X0,X1,TOL,NMAX) trata de hallar el
% cero ZERO de la funcion continua y diferenciable
% FUN mas cercano a X0 usando el metodo de la secante
% reales x y devuelve un escalar real. Si la busqueda
% falla se muestra un mensaje de error. FUN puede ser tambien objetos inline.

x = x0;
xm= x1;
fx = fun(x);
fxm = fun(xm);
niter = 0; diff = tol+1;
while diff >= tol && niter <= nmax
   niter = niter + 1;         
   diff = - fxm*(xm-x)/(fxm-fx);
   x=xm;
   xm = xm + diff;           
   diff = abs(diff); 
   fx = fun(x);
   fxm = fun(xm);
end
if niter > nmax
    fprintf(['newton se paro sin converger ',...
    'para la tolerancia deseada porque se alcanzo ',...
    'el numero maximo de iteraciones\n']);
end
zero = xm; res = fxm;
return
