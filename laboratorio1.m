format short

2+2
2 + 3/4
2 + 2^3
a = 2
a*2
b = 0.4286

2/3
format long
2/3
format rat
2/3
format short
3^(-32)
format long e
3^(-32)
format rat
3^(32)


A=[3 4;2 1; -1 0]
B = transpose(A)
C=A'
B + C
b + C
%A + B
B + C

A
3 * A
B=[4 5 6; 1 2 3];
A*B
%A*A
v = [2;-2]
A*v

%ejercicios


A= [1 -1 0; 3 1 0; 0 2 1]
B=[4 -1 -3; 3 2 -1; 1 2 5]
A*B

u = [2;-1;3]
v = [3 1 0]
u*v

%1.3--------------------


A=[1 2 3; 4 5 6; 7 8 9]
B=[1 0 0; 0 5 6; 7 8 0]
rref(A)
det(A)
det(rref(A))
det(B)
inv(B)
diary test.txt

%1.4--------------------

A= [1 -1 0; 3 1 0; 0 2 1]
A(3,2)
A(1,:)
A(:,2)

u=[1;2;3]
v=[4;5;6]
C=[u v]
C(1,:)
D=[u;v]

A=[0 1 1;1 1 1;2 -1 2]
aux=A(1,:)
A(1,:)=A(2,:)
A(2,:)=aux


%ejercicio
%1
A=[0 1 1;1 1 1;2 -1 2]
aux=A(1,:)
A(1,:)=A(2,:)
A(2,:)=aux

A= A - [[0 0 0]; [0 0 0]; A(3,:)]
A = A - [A(2,:);[0 0 0]; [0 0 0]]
rref(A)


%2
A=[2 1 1;4 1 0;-2 2 1]
aux = A
aux = A - 2*[[0 0 0]; A(1,:); [0 0 0]]
aux = aux + [[0 0 0]; [0 0 0]; aux(1,:)]
aux = aux + 3* [[0 0 0]; [0 0 0]; aux(2,:)]

aux = aux * [1/2 0 0; 0 1 0; 0 0 1]
aux = aux * [1 0 0; 0 -1 0; 0 0 1]
aux = aux * [1 0 0; 0 1 0; 0 0 -1/4]
rref(A)

%3
A=[1 1 1; 0 1 2; 2 2 2]
b = [3;3;6]
A\b

