function z=suma(x,y)

%Al primer vector lo multiplicamos por el primer n´umero del DNI de cada alumno. (en mi caso 4)
a = 4*x

%Posteriormente, sumamos al anterior resultado el segundo vector.
a = a + y

%Al vector resultante le sumamos el ´ultimo n´umero del DNI en su tercera componente (en mi caso 6)
a(3) = a(3) + 6

z=a
return
end

%suma([3,3,3],[1,1,1])