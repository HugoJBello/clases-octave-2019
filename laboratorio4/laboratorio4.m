format rat

%-----------------------
% repaso rápido:
v1=[4;-5;7]
v2=[2;-3;4]
v3=[1;1;-2]
v4=[2;-1;1]

A= [v1 v2 v3 v4]

rank(A)

rref(A)

% 1. No forman un sistema l.i porque su rango es 3

% 2. vamos a intentar escribir el vector u=[3;0;1] como combinación lineal de v1 v2, v3 y v4, para ello:
u=[3;0;1]

% vamos a resolver el sistema Ax = u, para ello
A\u

%nos da el resultado (47/14, -6, -2/7, 13/14) con lo cual u=(47/14)*v1 -6*v2 -2/7*v3 + (13/14)*v4
(47/14)*v1 -6*v2 -2/7*v3 + (13/14)*v4
u


%-----------------------
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

x=[2;3;4]
% dibuja en la X 1, 2 3 y en la Y las coords de x
plot(x)

A=[0 1 0; 0 0 1; 1 0 0]
x0=[1; 2; 3]
b=[0; 0; 0]

n=1
dinamico(A,b,x0,n)

n=2
dinamico(A,b,x0,n)

n=3
dinamico(A,b,x0,n)

n=4
dinamico(A,b,x0,n)


b = [1; 1; 1]

n=1
dinamico(A,b,x0,n)

n=2
dinamico(A,b,x0,n)

n=3
dinamico(A,b,x0,n)

n=4
dinamico(A,b,x0,n)

%ejemplo 5

A=[1 1/4 1/4; 1/4 0 1/4; 1/4 1/4 0]
b=[3/4; -7/4; 2]
x0=[1; 2; 3]
n=20
%dinamico(A,b,x0,n)


% Ejemplo 6

B=[1 1/4 0; 0 3/4 1/2; 0 0 1/2]
x0=[0; 0; 20]
b=[0; 0; 0]
n=20
%dinamico(B,b,x0,n)

% rojo son los muertos, luego los muertos tienden a aumentar estacionandose en 20
% verde son los enfermos, luego estos tienden a disminuir estacionandose en 0
% azul sanos, tienden a cero

% Ejemplo 7

[P,V]=eig(A)


[P2,V2]=eig(B)
% en el ultimo ejemplo se estaciona en 20 porque tenemos un uno en la matriz, se estaciona en 0 porque tenemos ceros en las otras coords

%para entender el ejemplo anterior a ese mirar

A=[1 1/4 1/4; 1/4 0 1/4; 1/4 1/4 0]
b=[0; 0; 0]
x0=[1; 2; 3]
n=100
%dinamico(A,b,x0,n)


B=[1 1/4 0; 0 3/4 1/2; 0 0 1/2]
x0=[1; 1; 1]
b=[0; 0; 0]
n=100
dinamico(A,b,x0,n)