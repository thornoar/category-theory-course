#import "@local/common:0.0.0": *
#import "@preview/fletcher:0.5.8" as fl: diagram, node, edge

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
#let dom = math.op([dom])
#let cod = math.op([cod])
#let UU = $cal(U)$

#let B = $cal(B)$
#let C = $cal(C)$
#let D = $cal(D)$
#let E = $cal(E)$

// #let ob = math.op([Ob])
#let ob(cat) = $O_#cat$
// #let mor = math.op([Mor])
#let mor(cat) = $M_#cat$
#let op(cat) = $#cat^"op"$

#let obj = (
  tilde: $#h(0pt)tilde#h(3pt)$
)

#let dot(pos) = fl.node(pos, circle(stroke: black, fill: black, radius: 2pt))

#let cat(n) = strong($#n$)
