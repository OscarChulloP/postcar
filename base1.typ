#let poster(
  title: "",
  estudiante: "",
  semestre: "",
  supervisor: "",
  escuela: "",
  emails: "",
  logo_universidad: "", 
  logo_escuela: "",
  color_primario: rgb("#002147"),
  color_secundario: rgb("#0073e6"),
  color_resalte: rgb("#e0f0f0"),
  body
) = {
  
  set page(paper: "a0", margin: 0pt)
  
  grid(
    columns: (100%),
    rows: (15%, 85%), 
    
    // --- ENCABEZADO ---
    block(
      width: 100%, height: 100%, fill: color_primario, 
      inset: (x: 2cm, y: 1cm), 
      grid(
        columns: (15%, 70%, 15%), gutter: 1cm, 
        if logo_universidad != "" { align(left + horizon, image(logo_universidad, height: 70%)) } else { [] },
        align(center + horizon)[
          #v(1.5cm) //
          #block[
            #set par(leading: 0.2em)
            #text(fill: white, size: 85pt, weight: "bold")[#title]
          ]
          #v(0.4cm) 
          #text(fill: white, size: 36pt)[*#estudiante* \ *#supervisor*]
          #v(0.4cm) 
          #text(fill: white, size: 32pt)[#escuela]
          #v(0.3cm) 
          #text(fill: white.lighten(30%), size: 30pt, font: "Courier New")[#emails]
        ],
        if logo_escuela != "" { align(right + horizon, image(logo_escuela, height: 70%)) } else { [] }
      )
    ),
    
    // --- CUERPO ---
    block(
      width: 100%, height: 100%, fill: white, inset: 4cm,
      {
        // --- NUEVO: LÍNEAS DIVISORIAS ---
        // Calculamos el ancho de cada columna (100% del espacio menos los 8cm totales de los dos gutters) dividido en 3.
        let ancho_columna = (100% - 8cm) / 3
        
        // Línea 1
        place(dx: ancho_columna + 2cm, line(angle: 90deg, length: 100%, stroke: (paint: color_primario, thickness: 3pt, dash: (15pt, 10pt))))
        
        // Línea 2
        place(dx: ancho_columna * 2 + 6cm, line(angle: 90deg, length: 100%, stroke: (paint: color_primario, thickness: 3pt, dash: (15pt, 10pt))))
        // --- CONFIGURACIÓN DE TEXTO ---
        set text(size: 32pt, font: "New Computer Modern", lang: "es",hyphenate:false)
        set par(justify: true)
        set highlight(fill: color_resalte, radius: 4pt, extent: 2pt)
        show strike: it => highlight(it.body)
        show figure.caption: set text(size: 26pt, style: "italic", fill: rgb("#444444"))
        show heading: it => block(
          width: 100%, fill: color_secundario, inset: 15pt, radius: 5pt,
          text(fill: white, size: 40pt)[#it.body]
        )
        columns(3, gutter: 4cm)[#body]
      }
    
    )
  )
}
// --- CONFIGURACIÓN DE NUMERACIÓN DE QUARTO ---
#let equation-numbering = "(1)"
#let table-numbering = "1"
#let figure-numbering = "1"
// --- PUENTE DE QUARTO MEJORADO ---
#show: doc => poster(
  title: [$title$],
  estudiante: [$estudiante$],
  semestre: [$semestre$],
  supervisor: [$supervisor$],
  escuela: [$escuela$],
  emails: [$emails$],
  logo_universidad: "$logo1$", 
  logo_escuela: "$logo2$", 
  // Aquí usamos lógica simple que Quarto entiende mejor
  color_primario: if "$color_primario$" != "" { rgb("$color_primario$") } else { rgb("#002147") },
  color_secundario: if "$color_secundario$" != "" { rgb("$color_secundario$") } else { rgb("#0073e6") },
  color_resalte: if "$color_resalte$" != "" { rgb("$color_resalte$") } else { rgb("#e0f0f0") },
  doc
)

$body$