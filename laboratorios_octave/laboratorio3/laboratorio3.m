%Ejercicio


format rat
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

% 3. Puesto que el rango es 3 si que puedo ya que forma un espacio de dimensión 3.
rref(A)

% 3. tomando el subconjunto v1 v2 y v3 obtengo un subespacio de rango 3:
rank([v1 v2 v3])

%luego esos forman una base. Ojo, también v2 v3 y v4
rank([v2 v3 v4])



%ejercicio
A=[-4 -3 -2 -5;-3 -2 -1 6; 1 3 5 7;-4 1 6 3]

%a. el rango es 3 luego el rango por columnas es 3
rref(A)
rank(A)

%b.
A
B=[-4 -3 -5;-3 -2 6; 1 3  7;-4 1 3]
u=[-2;-1;5;6]
% la solucioón al sistema Bx=u me da la combianción lineal
B\u
%me da  (-1 2 0) luego  u= -B(:,1) +2*B(:,2)
u
-B(:,1) +2*B(:,2)

%c.
rref(A)
rank([A(:,1), A(:,2), A(:,4)])
% luego la primera, segunda y tercera son l.i y forman una base

%d.
rank([A(:,1), A(:,2), A(:,3)])
% luego primera seguna y tercera son linealmente dependientes

%e.
rref(A)
format short

%tendríamos que x1 + -x3 = 0; x2 + 2x3 =0; x4=0; si ponemos x1 =t; x3=t; x2=-2t; x4=0;
%luego la base sería el vector (1,-2,1,0)
A*[1;-2;1;0]

%otra manera de calcularlo:
null(A)

%f. basta ver que
rank([A(:,1), A(:,2), A(:,4)])
% para ver que esas columnas forman una base de col(A)
