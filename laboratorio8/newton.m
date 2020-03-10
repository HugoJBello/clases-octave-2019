function [zero,res,niter]=newton(fun,dfun,x0,tol,nmax)
%NEWTON Hallar ceros de funciones.
% ZERO=NEWTON(FUN,DFUN,X0,TOL,NMAX) trata de hallar el
% cero ZERO de la funcion continua y diferenciable
% FUN mas cercano a X0 usando el metodo de Newton.
% FUN y su derivada DFUN acepta entradas escalares
% reales x y devuelve un escalar real. Si la busqueda
% falla se muestra un mensaje de error. FUN y
% DFUN pueden ser tambien objetos inline.
x = x0;
fx = fun(x);
dfx =dfun(x);
niter = 0; diff = tol+1;
while diff >= tol && niter <= nmax
   niter = niter + 1;      
   diff = - fx/dfx;
   x = x + diff;           
   diff = abs(diff);
   fx = fun(x);
   dfx = dfun(x);
end
if niter > nmax
    fprintf(['newton se paro sin converger ',...
    'para la tolerancia deseada porque se alcanzo ',...
    'el numero maximo de iteraciones\n']);
end
zero = x; res = fx;
return
