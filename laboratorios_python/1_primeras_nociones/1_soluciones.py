#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Soluciones orientativas al Laboratorio 1 con impresión de resultados.
Incluye:
- Vectores y matrices
- Sucesiones
- Sistemas lineales
- Construcción de matrices
- Submatriz: tamaño y suma de elementos
- Funciones definidas por el usuario
"""

import numpy as np

print("\n==============================================")
print(" 1. VECTORES Y MATRICES: Ejercicio 1")
print("==============================================\n")

# Matrices y vectores
A = np.array([[-1, np.sqrt(5), 2, np.pi],
              [0, 3, -1, 4],
              [np.pi, 5**(1/3), 0, 1]])

B = np.array([[3, 2/5, 0],
              [0, -1, 4],
              [np.pi, 0, 1]])

v = np.array([[4],
              [-3],
              [2]])

w = np.array([[np.sqrt(7)],
              [0],
              [2],
              [np.pi]])

print("A =\n", A)
print("\nB =\n", B)
print("\nv =\n", v)
print("\nw =\n", w)

print("\n==============================================")
print(" 1. VECTORES Y MATRICES: Ejercicio 2")
print("==============================================\n")

# Productos válidos
BA = B @ A
Bv = B @ v
Aw = A @ w

print("Producto B @ A =\n", BA)
print("\nProducto B @ v =\n", Bv)
print("\nProducto A @ w =\n", Aw)


# ==============================================================
# 2. SUCESIONES
# ==============================================================

print("\n==============================================")
print(" 2. SUCESIONES")
print("==============================================\n")

v1 = np.arange(2, 27, 3)
v2 = 2 + 3 * np.arange(9)
v3 = np.linspace(2, 26, 9)

print("v1 (arange):", v1)
print("v2 (2 + 3*k):", v2)
print("v3 (linspace):", v3)


# ==============================================================
# 3. SISTEMA LINEAL
# ==============================================================

print("\n==============================================")
print(" 3. SISTEMA LINEAL")
print("==============================================\n")

A_sys = np.array([[3, 2,  0,  0],
                  [2, 0, -2,  1],
                  [0, 1,  4, -3],
                  [1, 5, -1, -3]], dtype=float)

b_sys = np.array([0, 1, -2, 4], dtype=float)

x_sol_sys = np.linalg.solve(A_sys, b_sys)

print("A del sistema =\n", A_sys)
print("\nb del sistema =", b_sys)
print("\nSolución del sistema (x, y, z, t):\n", x_sol_sys)


# ==============================================================
# 4. MATRIZ CON CEROS, x, y, z Y UNOS
# ==============================================================

print("\n==============================================")
print(" 4. MATRIZ CON CEROS, x, y, z Y UNOS")
print("==============================================\n")

x_vec = np.array([[1],
                  [2],
                  [-3],
                  [5]])

y_vec = np.array([[4],
                  [-4],
                  [1],
                  [2]])

z_vec = np.array([[3],
                  [1],
                  [2],
                  [-4]])

zeros_cols = np.zeros((4, 2))  # dos columnas de ceros
ones_cols = np.ones((4, 2))    # dos columnas de unos

M = np.hstack([zeros_cols, x_vec, y_vec, z_vec, ones_cols])

print("x =\n", x_vec)
print("\ny =\n", y_vec)
print("\nz =\n", z_vec)
print("\nMatriz construida M =\n", M)


# ==============================================================
# 5. SUBMATRIZ: TAMAÑO Y SUMA DE ELEMENTOS
# ==============================================================

print("\n==============================================")
print(" 5. SUBMATRIZ: TAMAÑO Y SUMA")
print("==============================================\n")

# Filas 1, 3 y 4 en notación matemática → índices 0, 2, 3 en Python
# Columnas 1, 2 y 6 → índices 0, 1, 5

filas = [0, 2, 3]
columnas = [0, 1, 5]

S = M[np.ix_(filas, columnas)]
tam = S.shape
suma_S = np.sum(S)

print("Submatriz S =\n", S)
print("\nTamaño de S (filas, columnas) =", tam)
print("Suma de los elementos de S =", suma_S)


# ==============================================================
# 6. FUNCIONES DEFINIDAS POR EL USUARIO
# ==============================================================

print("\n==============================================")
print(" 6. FUNCIONES DEFINIDAS POR EL USUARIO")
print("==============================================\n")

print("---- Ejercicio 1: resolver_sistema ----")

def resolver_sistema(A, b):
    return np.linalg.solve(A, b)

A_demo = np.array([[1, 2],
                   [3, 4]], dtype=float)
b_demo = np.array([5, 6], dtype=float)

print("\nA_demo =\n", A_demo)
print("b_demo =", b_demo)
print("Solución =", resolver_sistema(A_demo, b_demo))


print("\n---- Ejercicio 2: sustituir_columna ----")

def sustituir_columna(A, v, k):
    B = A.copy()
    B[:, k] = v
    return B

A_demo2 = np.array([[1, 2, 3],
                    [4, 5, 6]], dtype=float)
v_demo = np.array([10, 20])

print("\nA_demo2 =\n", A_demo2)
print("v_demo =", v_demo)
print("Sustituir columna 1 →\n", sustituir_columna(A_demo2, v_demo, 1))


print("\n---- Ejercicio 3: suma_y_traza ----")

def suma_y_traza(A):
    """
    Devuelve la suma total de los elementos de A
    y la suma de la diagonal principal (traza).
    """
    suma_total = np.sum(A)
    traza = np.trace(A)
    return suma_total, traza

A_diag = np.array([[1, 2, 3],
                   [4, 5, 6],
                   [7, 8, 9]], dtype=float)

s_total, tA = suma_y_traza(A_diag)

print("\nA_diag =\n", A_diag)
print("Suma total de A_diag =", s_total)
print("Traza de A_diag =", tA)


print("\n---- Ejercicio 4: suma_y_media ----")

def suma_y_media(x):
    suma = np.sum(x)
    media = suma / x.size
    return suma, media

vec5 = np.array([1, 2, 3, 4, 5])

suma_res, media_res = suma_y_media(vec5)

print("\nVector:", vec5)
print("Suma =", suma_res)
print("Media =", media_res)


print("\n---- Ejercicio 5: suma_fila_columna ----")

def suma_fila_columna(A, k):
    suma_fila = np.sum(A[k, :])
    suma_col = np.sum(A[:, k])
    return suma_fila, suma_col

A_3x3 = np.array([[1, 2, 3],
                  [4, 5, 6],
                  [7, 8, 9]])

sf, sc = suma_fila_columna(A_3x3, 1)

print("\nA_3x3 =\n", A_3x3)
print("Suma fila 1 =", sf)
print("Suma columna 1 =", sc)

print("\n==============================================")
print(" FIN DEL SCRIPT — TODOS LOS RESULTADOS MOSTRADOS ")
print("==============================================\n")

