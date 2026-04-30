# Postcar Format (Póster Académico para Typst)

Este formato permite crear pósters científicos de tamaño A0 con un diseño moderno de tres columnas, optimizado para una lectura clara y profesional mediante el motor Typst en Quarto.

## Installing

Para usar esta plantilla y empezar tu póster desde cero, ejecuta el siguiente comando en tu terminal:

```bash
quarto use template OscarChulloP/postcar
```
Esto descargará la extensión y creará un archivo .qmd de ejemplo con la estructura necesaria para tu póster o cualquier otra investigación científica.

## Using

Una vez instalada, puedes personalizar el póster directamente desde el YAML de tu archivo .qmd. Aquí tienes los parámetros principales que puedes ajustar:

```YAML
---
title: "Título de tu Investigación"
estudiante: "Tu Nombre Completo"
semestre: "2026-I"
supervisor: "Nombre del Asesor"
escuela: "Escuela Profesional de Ingeniería Geomática"
emails: "tu_correo@universidad.edu"

# Configuración de Colores (Hexadecimal sin #)
color_primario: "002147"   # Azul Marino (Encabezado)
color_secundario: "0073e6" # Azul Brillante (Títulos de sección)
color_resalte: "e0f0f0"   # Color de fondo para tablas/bloques

# Logos (Asegúrate de que los archivos estén en la misma carpeta)
logo1: "logo_universidad.png"
logo2: "logo_escuela.png"

format: postcar-typst
---
```

## Características del Formato:

- Tres Columnas Reales: El contenido fluye automáticamente o se organiza mediante grids.
- Diseño A0: Tipografía de 32pt para el cuerpo, garantizando legibilidad a 1.5 metros.
- Integración de R: Soporte nativo para gráficos de ggplot2 y tablas de Quarto.
- Matemáticas: Numeración automática de ecuaciones integrada.

Consejos de Diseño:
Imágenes: Usa formatos vectoriales (.svg, .pdf) para logos y gráficos para que no se pixelen al imprimir en gran formato.

Código R: Se recomienda usar #| echo: false en los bloques de código para mostrar solo los resultados (gráficos/tablas) en el póster final.


