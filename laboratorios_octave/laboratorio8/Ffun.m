function res=Ffun(x)% evalua la funcion vectorial x^2+y^2-1, sen(pi*x/2)+y^3
pi2=pi*0.5;res(1,1)=x(1)^2+x(2)^2-1;
res(2,1)=sin(pi2*x(1))+x(2)^3;
endfunction
return