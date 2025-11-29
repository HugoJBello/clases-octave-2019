#ejercicio1
[X,Y]=meshgrid([-1:0.1:1],[-1:0.1:1]);

Z=X.^2+Y.^2

surfc(Z)

contour(Z)

# dibujemos las curvas. Para ello tengo que evaluar en la y la variable x, 
# la función que me da es

z=@(x) 2*x.^2

#le he introducido usando @ en vez de en un fichero. Le he puesto entre parentesis las variables y luego el valor que toma

# introduzco los valores sobre los que quiero que me dibuje la x
x=[-5:0.2:5]

# para dibujar z(x,x) basta con dibujar los puntos del plano (x, x, z(x,x))
# para ello hago:

plot3(x,x,g(x))

#calculando a mano el hessiano derviando se que:
H = [2 0; 0 2]

#veamos si es definido positivo o negativo en un punto

[V,D,W] = eig(H)

# En este caso es muy facil porque la matriz ya es diagonal, pero la matriz D me da el resultado de diagonalizar.
# Veo que es definida positiva con lo cual tiene un mínimo relativo lo cual coincide con lo que 
# me dice el teorema

