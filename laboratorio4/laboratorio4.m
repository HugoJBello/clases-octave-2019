format rat

A=[4 1 1;-1 2 -1; -1 -1 2]

[P,V]=eig(A)

 inv(P)*A*P

 %Ejercicio 1
A=[-1 3 -1; -3 5 -1; 3 -3 1]
[P,V]=eig(A)
inv(P)*A*P
% No se puede puesto que tiene autovalores complejos

A=[2 -1 2;5 -3 3; -1 0 -2]
[P,V]=eig(A)
inv(P)*A*P