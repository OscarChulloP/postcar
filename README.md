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
title: "Título del Poster: puede ser bastante largo tanto que pasa a 2 lineas"
estudiante: "Estudiante 1, Estudiante 2"
supervisor: "docente supervisor"
escuela: "Afiliación"
emails: "estudiante1@unsaac.edu.pe / estudiante2@unsaac.edu.pe / supervisor@unsaac.edu.pe"
format: typst
logo1: "logo1.png"
logo2: "logo2.png"
# CONTROLES DE COLOR (todos son hexa)
color_primario: "144d29"
color_secundario: "2e8b57"
color_resalte: "e8f5e9"   #(Para el resaltador ~~)

bibliography: references.bib
csl: https://raw.githubusercontent.com/citation-style-language/styles/master/apa.csl  #formato de cita (APA7)

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


