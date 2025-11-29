format rat
%definimos las funciones eij eijt eit

B = eij(4,2,3)

A=[1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]

%intercambia posiciones 2 y 3

B * A


B = eijt(4,1,3,7)

%suma a la fila 1 la 3 multiplicada por 7

B * A


B = eit(4,2,7)

B * A

%ojo

A * B


A0=[2 1 1; 4 1 0; -2 2 1]

% sumo columnas 3 y 1

A=eijt(3,3,1,1) * A0

% resto multiplico primera columana por -2 y la sumo a la segunda

A=eijt(3,2,1,-2) * A

%multiplico la col 3 por 3 y sumo a columa 2

A=eijt(3,3,2,3) * A

%multiplico columnas por pivotes invertidos

A=eit(3,3,-1/4) * A

A=eit(3,2,-1) * A

A=eit(3,1,1/2) * A

Q = eit(3,1,1/2) *eit(3,2,-1) *  eit(3,3,-1/4) * eijt(3,3,2,3) * eijt(3,2,1,-2) * eijt(3,3,1,1)

U = Q*A0

L = inv(Q)

L*U

%-------------
%ejercicio 2

A0 = [1 2 3; 3 2 4; 2 -1 1]

[l, u, p] = lu (A0)

% tenemos que resolver u*x = c y l*c = P*b

b=[1;1;0]
c = inv(l)*p*b
x = inv(u)*c

A0*x
b