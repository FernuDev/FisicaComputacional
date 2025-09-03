# Física Computacional - Tareas

[![Fortran](https://img.shields.io/badge/Fortran-90%2B-blue.svg)](https://fortran-lang.org/)
[![Python](https://img.shields.io/badge/Python-3.8%2B-green.svg)](https://www.python.org/)
[![License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](LICENSE)

Repositorio para las tareas de la materia **Física Computacional** de la Facultad de Ciencias, UNAM.

## Estructura del Proyecto

```
tarea_1/
├── src/
│   ├── [Cardano.f90](src/Cardano.f90)   # Ecuaciones cúbicas
│   └── [vectores.f90](src/vectores.f90) # Operaciones con vectores
├── output/           # Resultados y binarios
├── README.md         # Este archivo
├── *.png, *.pdf      # Ejemplos y capturas
tarea_2/
├── [main.ipynb](../tarea_2/main.ipynb)  # Ejercicios en Python
.gitignore
```

---

## Tarea 1: Fortran

### [`Cardano.f90`](src/Cardano.f90)

Resuelve ecuaciones cúbicas de la forma `a x³ + b x² + c x + d = 0` usando la fórmula de Cardano.

**Características:**
- Calcula raíces reales y complejas según el discriminante.
- Interfaz interactiva por consola.

**Uso:**
```sh
gfortran src/Cardano.f90 -o cardano
./cardano
```

### [`vectores.f90`](src/vectores.f90)

Realiza operaciones con dos vectores de dimensión arbitraria:
- Norma, suma, resta, producto punto, ángulo y producto vectorial (si N=3).

**Uso:**
```sh
gfortran src/vectores.f90 -o vectores
./vectores
```

---

## Tarea 2: Python

### [`main.ipynb`](../tarea_2/main.ipynb)

Ejercicios de física computacional en Jupyter Notebook:
- Conversión de temperaturas.
- Caída libre y análisis con pandas y matplotlib.
- Clase `Particula` para energía cinética.
- Producto matriz-vector.

**Ejecuta el notebook:**
```sh
jupyter notebook tarea_2/main.ipynb
```

---

## Requisitos

- [gfortran](https://gcc.gnu.org/fortran/) para Fortran
- [Python 3.8+](https://www.python.org/) y paquetes: `numpy`, `pandas`, `matplotlib`, `jupyter`

---

## Contribución

1. Haz un fork del repositorio.
2. Crea una rama (`git checkout -b feature/nueva-funcionalidad`).
3. Haz tus cambios y realiza un commit.
4. Abre un Pull Request.

---

## Licencia

Este proyecto está bajo la licencia MIT.

---

## Autor

Luis Fernando Nuñez Rangel  
Facultad de Ciencias UNAM