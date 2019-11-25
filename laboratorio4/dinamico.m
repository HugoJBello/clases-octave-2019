function x=dinamico(A,b,x0,n)
% Implementacion de un proceso dinamico lineal.
% En las columnas de x aparecen los estados en cada
% paso de tiempo k.
x(:,1)=x0;
for k=1:n
x(:,k+1)=A*x(:,k)+b;
end
%dibujamos solo las tres primeras componentes de x.
hold on
plot(x(1,:),'r')
plot(x(2,:),'g')
plot(x(3,:),'b')
hold off
return