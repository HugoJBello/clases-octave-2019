#bucle for, hace una instrucción un número de veces
f(0,0)
f(1,2)
f(3,3)
g=@(x,y) x.^2.*y+1
g(1,1)


#ejercicio1
f1(1,1)
f2(1,1)
f3(1,1)


#Curvas

t=[0:0.2:2*pi];
t
plot(sin(t),cos(t))
plot(t,t.^2)
plot3(sin(t),cos(t),t)

# superficies
[X,Y]=meshgrid([-2:0.5:2],[-2:0.5:2]);
X
Y
#Si nos fijamos los puntos (x,y) forman una rejilla entre (-2,-2) y (2,2)


#Si ponemos la rejilla muy fina los usamos para dibujar
[X,Y]=meshgrid([-2:0.2:2],[-2:0.2:2]);
[X,Y]

Z=X.*exp(-X.^2-Y.^2);
Z
mesh(Z)
surf(Z)
contour(Z)
surfc(Z)

#ejercicio1
[X,Y]=meshgrid([-1:0.2:1],[-1:0.2:1]);
Z=X.^2+Y.^2;
contour(Z)
surfc(Z)

