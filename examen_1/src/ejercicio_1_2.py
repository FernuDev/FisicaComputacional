import numpy as np

def determinante(matrix: list) -> float:
    """ 
        Función encargada de retornar el determinante de una matriz de 3x3 
        la matriz es pasada como argumento.
        args: matriz
        return: determinante
    """
    # Comenzamos extendiendo la matriz para poder calcular su det
    matriz = matrix.copy()
    matriz.append(matriz[0])
    matriz.append(matriz[1])

    # Declaramos ambas partes para el calculo del det
    pos = matriz[0][0]*matriz[1][1]*matriz[2][2] + matriz[1][0]*matriz[2][1]*matriz[3][2] + matriz[2][0]*matriz[3][1]*matriz[4][2]
    neg = matriz[0][2]*matriz[1][1]*matriz[2][0] + matriz[1][2]*matriz[2][1]*matriz[3][0] + matriz[2][2]*matriz[3][1]*matriz[4][0]

    return pos - neg


def main():

    matrix = []

    print("A continuación digite los valores de la matriz")
    for i in range(3):
        lista_intermedia = []
        for j in range(3):
            lista_intermedia.append(float(input("Introduzca un valor: ")))
        matrix.append(lista_intermedia)

    det = determinante(matrix)

    print(f"Determinante obtenido por nuestro metodo: {det}")
    print(f"Determinante de numpy: {np.linalg.det(matrix)}")


if __name__ == "__main__":
    main()

    