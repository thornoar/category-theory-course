#import "@local/common:0.0.0": *

#let title-rule(
  title: [title]
) = doc => {
  set page("a4", margin: 0.5in, numbering: "1")
  set text(size: 12pt, lang: "ru")
  set heading(numbering: "1.")

  align(center)[
    #text(strong(title), size: 20pt)\
    #v(-5pt)
    #text(emph([Теория категорий, 2026]), size: 14pt)
  ]

  doc
}

#let AA = $cal(A)$
#let wh = st
