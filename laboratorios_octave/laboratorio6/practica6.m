#bucle for, hace una instrucción un número de veces
for i=1:4
x=2*i
end

#bucle while, hace una instrucción mientras ocurra algo
j=1
while j<=4
y=3*j
j=j+1
end

#instrucción if, hace algo siempre que ocurra una condición
a=4
if (a!=4)
x=2*a
end

if (a==4)
x=2*a
end

#ejercicios-----------
A=[4 -2 0 0; -2 5 -1 0;0 -1 4 2; 0 0 2 3]
b=[0;2;3;-2]
x0=[1;1;1;1]
A\b

A2=[1 -1 1; 2 -2 -1;3 -3 3]
b2 = [2;-2;6]

niter=5
jacobi(A,b,x0,niter)

niter=10
jacobi(A,b,x0,niter)

niter=100
jacobi(A,b,x0,niter)

MAXITER=200

TOL=power(10,-5)
jacobi2(A,b,x0,TOL, MAXITER)

TOL=power(10,-10)
jacobi2(A,b,x0,TOL, MAXITER)

TOL=power(10,-15)
jacobi2(A,b,x0,TOL, MAXITER)