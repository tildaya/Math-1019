= Chapter 10 Graphs

*Definition*

A graph $G$ is an ordered pair $(V, E)$

where $V$ and $E$ are both sets,

$V$ consists of vertices

$E$ consists of edges

Associated to each edge $e in E$ is one or two vertices in $V$

\

This is enough information to draw a graph and thus represent it graphically.

- Draw dots for each element of $V$, 
- Draw curves connecting the end points for each element of $V$

\

*Note*

There are some choices about what properties our graph might or might not need to permit
    that are application dependent.

- Fininte or Infinite set $V$
- Finite or Infinite set $E$
- Can there be an edge associated with to a single vertex (called a loop)
- Can more than one edge connect a pair of vertices?
    - Also called parallel edges
- Are edges direct
    - If they are, we call them arcs

\

#table(
  columns: (2fr, 1fr, 1fr, 1fr),
  align: center + horizon,
  inset: 8pt,

  table.header(
    [*Type of graph*],
    [*Loops allowed*],
    [*Parallel edges allowed*],
    [*Directed edges*],
  ),

  [Simple Graphs], [No], [No], [No], 
  [Multigraph], [No], [Yes], [No],
  [Pseudograph], [Yes], [Yes], [No],
  [Simple Directed Graph], [No], [No] ,[Yes],
  [Directed Multigraph], [No], [Yes], [Yes],
  [The things that represent relations], [Yes], [No], [Yes],
  [Mixed], [Maybe], [Maybe], [Some are],
  [], [], [], [],

)

\

*Definition*

If vertices $x$ and $y$ are both associated with some edge $z$,

We say:

- $x$ and $y$ are adjacent
- $x$ and $y$ are neighbours
- $x$ is incident with $z$
- $y$ is incident with $z$
- $z$ is incident with $x$
- etc.

\

*Definition*

The neighbourhood of a vertex $v$ is the set of vertices that are
    adjacent to $v$ (this does not include $v$ unless there is a loop with only the end of $v$)

If $A subset.eq V$ then the neighbourhood of $A$ is

$U_(v in A) N(v)$

\

*Definition*

The degree of a vertex $v$, is $deg(v) = $ the number of edges incident 
    with $v$
- Exceptions, loops count double. We're really counting edge ends

*Think*

Zoom in on a vertex when counting degree of it.

\

*The Handshake theorem*

If $G = (V, E)$ is a graph (Simple, multi, pseudo are all fine)

$|E| = m$, then

$sum_(v in V) deg(v) = 2m$

\

*Why?*

Both sides count edge ends.

\

*Corollary*

In any graph $G$, the number of vertices with an odd degree is even.

$2m = sum_(v in V) deg(v) = sum_(v in V"even") deg(v) + sum_(v in V"odd") deg(v)$


