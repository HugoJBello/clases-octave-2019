x0 = pi/4
tol= 0.01
nmax = 1000
[zero,res,niter]=newton(@fun,@dfun,x0,tol,nmax)

#verifiquemos
fun(-0.99303)

#nos da 0.000048581, muy cercano a cero, con lo cual el valor que nos devuelve -0.99303 es efectivamente
#un ccero de la función.


#Newton no lineal

x0 = [0 1 0 1 0 1]
tol= 0.001
nmax = 10000
[zero,res,niter]=newtonsys(@Ffun,@Jfun,x0,tol,nmax)

sol= [-0.98648 0.01352 -0.98648 0.01352 -0.98648 0.01352]
Ffun(zero)

#Secante
x0 = 1
x1 = 2
tol= 0.01
nmax = 1000
[zero,res,niter]=secante(@fun,x0,x1,tol,nmax)

fun(-0.98919)