#---------------------------------------------------
#ejercicio1
x0= -1
y0= 3
fun = @(x,y) 16 + 2*x.^2 + -y.^2;
fx = @(x,y) 4*x
fy = @(x,y) -2*y
# gradiente es (derivada parcial x, derivada parcial y)
grad =  [fx(x0,y0); fy(x0,y0)]

# derivada direccional en 
v= [1;1]
w= [-1;1]

v'*w

# las derivadas direccionales son el producto por el gradiente.
Dvf = grad' * v
Dwf = grad' * w



fx0 = fx(x0,y0)
fy0 = fy(x0,y0)

# la ecuación del plano tg es z= f(x_0, y_0) + Grad(x_0,y_0) * (x-x_0, y-y_0)

Z = @(x,y) fun(x0,y0) + fx0*(x-x0) + fy0*(y-y0);
[X,Y] = meshgrid(-5:0.25:5);

surf(X,Y,fun(X,Y),'EdgeAlpha',0.7,'FaceAlpha',0.9)
hold on
surf(X,Y,Z(X,Y))

plot3(x0,y0,fun(x0,y0),'r*')

#---------------------------------------------------
#ejercicio2


h = @(x,y) exp(-x.^2) +y

gx = @(x,y) -2*x*exp(-x.^2)
gy = @(x,y) 1

gxx = @(x,y) -2*exp(1-x.^2 - y^2) +4*x.^2
gxy = @(x,y) 0
gyx = @(x,y) 0
gyy = @(x,y) 0

gradiente = @(x,y) [gx(x,y);gy(x,y)]
hessiano = @(x,y) [gxx(x,y) gxy(x,y); gyx(x,y); gyy(x,y)]

#la formula de T1 es 
T1 = @(x,y) h(x,y) - gradiente(x,y)'*[x;y]


[X,Y] = meshgrid(-5:0.25:5);
surf(X,Y,h(X,Y))
hold on
surf(X,Y,T1(X,Y))

