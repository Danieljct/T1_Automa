import os
import numpy as np
from scipy.io import savemat

# === Archivo de entrada ===
input_file = 'message (1).txt'  # <-- Cambia esto si quieres otro archivo

# === Nombre del archivo .csv ===
base_name = os.path.splitext(input_file)[0]
output_file = base_name + '.csv'

# === Leer y procesar ===
with open(input_file, 'r', encoding='utf-8') as f:
    lineas = f.readlines()

# Mantener encabezado con \t → , pero sin tocar valores
header = lineas[0].replace('\t', ',').strip()
datos = [linea.replace(',', '.').replace('\t', ',') for linea in lineas[1:]]

# Guardar .csv
with open(output_file, 'w', encoding='utf-8') as f:
    f.write(header + '\n')
    f.writelines(datos)

print(f"✅ Archivo convertido guardado como: {output_file}")

# === Mostrar cantidad de columnas ===
num_columnas = len(header.split(','))
print(f"\nEste archivo tiene {num_columnas} columnas (índices 0 a {num_columnas - 1}).")

# === Pedir columna por índice ===
columna_idx = int(input("¿Qué índice de columna deseas guardar?: "))

if not (0 <= columna_idx < num_columnas):
    raise ValueError("Índice fuera de rango.")

# === Leer datos y extraer columna ===
with open(output_file, 'r', encoding='utf-8') as f:
    f.readline()  # Saltar encabezado
    columnas = [line.strip().split(',') for line in f]

# Extraer y convertir a float
valores_columna = [float(fila[columna_idx]) for fila in columnas if fila[columna_idx] != '']

# === Pedir nombre para la variable interna del .mat ===
nombre_variable = input("¿Qué nombre deseas para la variable dentro del .mat?: ").strip()

# === Guardar como .mat ===
mat_file = f"{nombre_variable}.mat"
savemat(mat_file, {nombre_variable: np.array(valores_columna)})

print(f"\n✅ Columna índice {columna_idx} guardada en '{mat_file}' con variable '{nombre_variable}'.")
