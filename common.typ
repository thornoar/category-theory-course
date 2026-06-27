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

#let A = $cal(A)$
#let B = $cal(B)$
#let C = $cal(C)$
#let D = $cal(D)$
#let E = $cal(E)$
#let F = $cal(F)$

// #let ob = math.op([Ob])
#let ob(cat) = $O_#cat$
// #let mor = math.op([Mor])
#let mor(cat) = $M_#cat$
#let op(cat) = $#cat^"op"$
#let equ(m1, m2) = $"equ"(#m1, #m2)$
#let coequ(m1, m2) = $"coequ"(#m1, #m2)$
#let coker = math.op("coker", limits: false)

#let obj = (
  tilde: $#h(0pt)tilde#h(3pt)$
)

#let dot(pos, rad: 2pt) = fl.node(pos, circle(stroke: black, fill: black, radius: rad))

#let one = {
  h(1pt)
  diagram(
    node-inset: 1.5pt,
    {
      dot((0,0), rad: 1pt)
      edge((0,0), (0,0), "->", bend: 150deg, loop-angle: 180deg)
    }
  )
  h(1pt)
}

#let two = {
  h(1pt)
  diagram(
    node-inset: 1.5pt,
    {
      let w = .4
      dot((0,0), rad: 1pt)
      dot((w,0), rad: 1pt)
      edge((0,0), (w,0), "->", bend: 0deg)
    }
  )
  h(1pt)
}

#let cat(n) = strong($#n$)
