function e=eij(n,i,j)
% e=eij(n,i,j)
% esta funcion calcula la matriz elemental de orden n que permite
% permutar las filas i y j.
e=eye(n); % partimos inicialmente de la identidad de orden n.
e(i,i)=0;e(j,j)=0; % modificamos los elementos necesarios.
e(i,j)=1;e(j,i)=1;
%
return