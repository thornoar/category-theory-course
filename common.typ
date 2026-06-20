#let title-rule(
  title: [title]
) = doc => {
  set page("a4", margin: 0.5in)
  set text(font: "New Computer Modern", size: 12pt, lang: "ru")

  align(center)[
    #text(strong(title), size: 20pt)\
    #v(-5pt)
    #text(emph([Теория категорий, 2026]), size: 14pt)
  ]

  doc
}
