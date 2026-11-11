// Relations on RR x RR, shown through the window [-2, 6] x [-2, 6].
// This file uses only built-in Typst drawing functions.
#let relation-plot(title, condition, vertices, edges, open-corner: false) = block(breakable: false)[
  #align(center)[#title \
    #text(size: 9pt)[#condition]
  ]
  #v(2pt)
  #align(center, box(width: 4cm, height: 3.9cm)[
    #{
      let unit = 0.40cm
      let point(x, y) = (0.35cm + (x + 2) * unit, 0.25cm + (6 - y) * unit)
      let segment(a, b, stroke) = place(top + left, line(
        start: point(..a), end: point(..b), stroke: stroke,
      ))
      let label(x, y, body, dx: 0pt, dy: 0pt) = {
        let p = point(x, y)
        place(top + left, dx: p.at(0) + dx, dy: p.at(1) + dy, text(size: 8pt, body))
      }
      let included = 1pt + blue.darken(25%)
      let excluded = (paint: blue.darken(25%), thickness: 1pt, dash: "dashed")

      // Shading marks every ordered pair in the relation.
      place(top + left, polygon(
        ..vertices.map(v => point(..v)),
        fill: blue.lighten(83%), stroke: none,
      ))

      // Grid and coordinate axes.
      for n in range(-2, 7) {
        segment((n, -2), (n, 6), 0.25pt + luma(210))
        segment((-2, n), (6, n), 0.25pt + luma(210))
      }
      segment((-2, 0), (6.25, 0), 0.65pt + black)
      segment((0, -2), (0, 6.25), 0.65pt + black)
      place(top + left, polygon(
        point(6.25, 0), point(6.02, 0.10), point(6.02, -0.10), fill: black,
      ))
      place(top + left, polygon(
        point(0, 6.25), point(-0.10, 6.02), point(0.10, 6.02), fill: black,
      ))
      label(6.25, 0, $x$, dx: 2pt, dy: -5pt)
      label(0, 6.25, $y$, dx: 4pt, dy: -4pt)
      label(0, 0, [0], dx: -9pt, dy: 3pt)
      for n in (-2, 3, 6) {
        label(n, -2, [#n], dx: -3pt, dy: 4pt)
        label(-2, n, [#n], dx: -12pt, dy: -4pt)
      }

      // Each edge is (start, end, included?).
      for (a, b, closed) in edges {
        segment(a, b, if closed { included } else { excluded })
      }
      if open-corner {
        let p = point(3, 3)
        place(top + left, dx: p.at(0) - 2pt, dy: p.at(1) - 2pt,
          circle(radius: 2pt, fill: white, stroke: included))
      }
    }
  ])
]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,
  row-gutter: 10pt,

  relation-plot($R$, $x <= y$,
    ((-2, -2), (-2, 6), (6, 6)),
    (((-2, -2), (6, 6), true),),
  ),
  relation-plot($S$, $x <= 3$,
    ((-2, -2), (3, -2), (3, 6), (-2, 6)),
    (((3, -2), (3, 6), true),),
  ),

  relation-plot($R inter S$, $x <= y "and" x <= 3$,
    ((-2, -2), (3, 3), (3, 6), (-2, 6)),
    (((-2, -2), (3, 3), true), ((3, 3), (3, 6), true)),
  ),
  relation-plot($R union S$, $x <= y "or" x <= 3$,
    ((-2, -2), (3, -2), (3, 3), (6, 6), (-2, 6)),
    (((3, -2), (3, 3), true), ((3, 3), (6, 6), true)),
  ),

  relation-plot($R without S$, $x <= y "and" x > 3$,
    ((3, 3), (3, 6), (6, 6)),
    (((3, 3), (6, 6), true), ((3, 3), (3, 6), false)),
    open-corner: true,
  ),
  relation-plot($S without R$, $x <= 3 "and" y < x$,
    ((-2, -2), (3, -2), (3, 3)),
    (((3, -2), (3, 3), true), ((-2, -2), (3, 3), false)),
    open-corner: true,
  ),

  relation-plot($R^c$, $y < x$,
    ((-2, -2), (6, -2), (6, 6)),
    (((-2, -2), (6, 6), false),),
  ),
  relation-plot($S^c$, $x > 3$,
    ((3, -2), (6, -2), (6, 6), (3, 6)),
    (((3, -2), (3, 6), false),),
  ),
)
