function e=eit(n,i,t)
% e=eit(n,i,t)
% esta funcion calcula la matriz elemental de orden n que permite
% multiplicar la fila i por t.
e=eye(n); % partimos inicialmente de la identidad de orden n.
e(i,i)=t; % modificamos este elemento.
%
return