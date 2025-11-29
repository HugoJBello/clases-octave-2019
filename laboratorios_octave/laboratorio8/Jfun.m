function res=Jfun(x)% evalua la jacobiana de la funcion vectorial x^2+y^2-1, sen(pi*x/2)+y^3
pi2=0.5*pi;res(1,1)=2*x(1);
res(1,2)=2*x(2);
res(2,1)=pi2*cos(pi2*x(1));
res(2,2)=3*x(2)^2;
endfunction
return