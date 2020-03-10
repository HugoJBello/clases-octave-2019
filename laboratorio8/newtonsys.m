function [x,F,iter] = newtonsys(Ffun,Jfun,x0,tol,nmax)
%NEWTONSYS halla un cero de un sistema no lineal.
% [ZERO,F,ITER]=NEWTONSYS(FFUN,JFUN,X0,TOL,NMAX)
% trata de hallar el  vector ZERO, cero de un sistema
% no lineal definido en FFUN con matriz jacobiana
% definida en la function JFUN, mas cercano al vector
% X0.
iter = 0; err = tol + 1; x = x0;
while err > tol && iter <= nmax
    J = Jfun(x);
    F =Ffun(x);
    %solucion del sist lineal J*delta=F
    delta = - J\F;
    %obtenemos xn+1 a partir de xn
    x = x + delta;
    err = norm(delta);
    iter = iter + 1;
end
F = norm(Ffun(x));
if iter >= nmax
 fprintf(' No converge en el numero maximo ',...
         ' de iteraciones \n ');
 fprintf(' El iterante devuelto tiene un residuo ',...
         ' relativo  %e\n',F);
else
 fprintf(' El metodo convergio en la iteracion ','%i con un residuo %e\n',iter,F);
end
return
