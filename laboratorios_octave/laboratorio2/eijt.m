function e=eijt(n,i,j,t)
% e=eijt(n,i,j,t)
% esta funcion calcula la matriz elemental de orden n que permite
% sumar a la fila i la fila j multiplicada por t.
e=eye(n); % partimos inicialmente de la identidad de orden n.
e(i,j)=t; % modificamos este elemento.
%
return