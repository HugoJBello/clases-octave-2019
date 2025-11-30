import numpy as np

# ---------------------------------------------------------
# Método de Jacobi para resolver A x = b con NumPy
# ---------------------------------------------------------

def jacobi(N, A, b, x, d):
    """
    Método de Jacobi para aproximar la solución de A x = b.

    Parámetros
    ----------
    N : int
        Número máximo de iteraciones.
    A : np.ndarray
        Matriz del sistema (n x n).
    b : np.ndarray
        Vector de términos independientes (n,).
    x : np.ndarray
        Aproximación inicial (n,).
    d : float
        Tolerancia para la norma ||x_n - x_{n-1}||.

    Devuelve
    --------
    x : np.ndarray
        Aproximación final a la solución.
    k : int
        Número de iteraciones realizadas.
    """

    # Número de ecuaciones (tamaño del vector)
    n = x.shape[0]

    # Bucle principal de Jacobi: como máximo N iteraciones
    for k in range(N):
        # Guardamos la aproximación anterior
        x_anterior = x.copy()

        # Creamos un nuevo vector para la siguiente aproximación
        x_nueva = np.zeros_like(x)

        # Recorremos cada ecuación (fila de A)
        for i in range(n):
            # Calculamos la combinación lineal A[i, :] · x_anterior
            cuant = 0.0
            for j in range(n):
                cuant = cuant + A[i, j] * x_anterior[j]

            # Aplicamos la fórmula de Jacobi para la componente i-ésima
            x_nueva[i] = (-cuant + A[i, i] * x_anterior[i] + b[i]) / A[i, i]

        # Calculamos la norma de la diferencia entre las aproximaciones
        diferencia = np.linalg.norm(x_nueva - x_anterior)

        # Mostramos información de la iteración (opcional)
        print(f"Iteración {k+1}: ||x_n - x_(n-1)|| = {diferencia}")

        # Actualizamos x para la siguiente iteración
        x = x_nueva

        # Criterio de parada: si la diferencia es menor que d, salimos
        if diferencia < d:
            print("Se ha alcanzado la tolerancia. Deteniendo el método.")
            break

    # Devolvemos la aproximación final y el número de iteraciones realizadas
    return x, k + 1


# ---------------------------------------------------------
# Ejemplo de uso del método de Jacobi
# (Puedes cambiar A, b, x0, N y d para hacer pruebas)
# ---------------------------------------------------------

if __name__ == "__main__":
    # Definimos una matriz A (2x2) y un vector b (2,)
    A = np.array([[4.0, 1.0],
                  [2.0, 3.0]])

    b = np.array([1.0, 2.0])

    # Aproximación inicial x0
    x0 = np.zeros(2)  # vector inicial (0, 0)

    # Número máximo de iteraciones
    N = 100

    # Tolerancia
    d = 1e-6

    print("Matriz A:")
    print(A)
    print("\nVector b:")
    print(b)
    print("\nAproximación inicial x0:")
    print(x0)
    print("\nEjecutando método de Jacobi...\n")

    solucion, iteraciones = jacobi(N, A, b, x0, d)

    print("\nAproximación final a la solución:")
    print(solucion)
    print(f"Número de iteraciones realizadas: {iteraciones}")

