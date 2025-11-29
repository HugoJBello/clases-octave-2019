%-----------------ejercicio 1
u1=[1;0;1]
u2=[-1; 4; 1]
u3=[2; 1; -2]

%primero calculo la norma
sqrt(u1'*u1)
sqrt(u2'*u2)
sqrt(u3'*u3)

%luego no es ortonormal porque no tienen norma 1

%calculo el producto entre ellos para ver si son ortogonales al menos
u1'*u2
u1'*u3
u2'*u3

%-----------------ejercicio 2
u1=[1/sqrt(18);4/sqrt(18);1/sqrt(18)]
u2=[1/sqrt(2); 0; -1/sqrt(2)]
u3=[-2/3; 1/3; -2/3]

%primero calculo la norma
sqrt(u1'*u1)
sqrt(u2'*u2)
sqrt(u3'*u3)

%calculo el producto entre ellos
u1'*u2
u1'*u3
u2'*u3
%luego si es ortonormal

%-----------------ejercicio 2
u1=[1; 2; 1; 1]
u2=[-2; 1; -1;1]
u3=[1; 1; -2; 1]
u4=[-1; 1; 1; 2]

%primero calculo la norma
sqrt(u1'*u1)
sqrt(u2'*u2)
sqrt(u3'*u3)
sqrt(u4'*u4)
%luego no es ortonormal porque no tienen norma 1. Veamos si es ortogonal.

%calculo el producto entre ellos
u1'*u2
u1'*u3
u1'*u4
u2'*u3
u2'*u4
u3'*u4
%luego tampoco es ortogonal


%Ejercicios 1
A=[-1 2; 2 -3; -1 3]
b=[4;1;2]
[Q R] = qr(A)
b2 = Q'*b

x = R\b2

norm(b - A*x)
norm(b - A*[1;2])
norm(b - A*[1;0])
norm(b - A*[0;1])

%b
A=[1 1 0; 1 1 0; 1 0 1; 1 0 1]
b=[1; 3; 8; 2]
[Q R] = qr(A)
b2 = Q'*b

x = R\b2