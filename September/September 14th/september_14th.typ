

= Recap (September 11th)
- We defined #underline[Propositions]

- We can build compound propositions out of simple propositions (In english this involves connectors)

Key words
1. AND
2. OR
3. NOT


Building blocks of an elegant theory

4. Implies
5. Bi-implies
6. XOR
7. NAND

= Lecture

Example (on a compound propositions) 

"If it is raining, then the grass is wet"

Both *"It is raining"* & *"The grass is wet,"* are propositions in their own right


We can use #underline[propositional variables]

let "it is raining" $ = p$

let "the grass is wet" $ = q$

leaving the connectors in, our compound proposition is if $p,$ then $q$

We represent this symbolically as $p -> q$

"$->$" Read as $p$ implies $q$


If $p$ and $q$ are both propositions, then the #underline[conjunction] of $p$ with $q$ is "p and q are both true"

which we write as "$ p and q$" and read as "$p$ AND $q$"

The #underline[disjunction] of $p$ with $q$ is "At least one of $p$ or $q$ is true"

written as "$p or q$" and read as "p OR q"

this is the #underline[inclusive] sense of OR, which we use as the default meaning.

We translate the #underline[exclusive] or as "$p xor q$" read as "p XOR q"

- All version of implication permit to conclude, $q$ is true once we learn $p$ is true, "If it is raining, then the grass is wet"

Sometimes there is a contextual extra conclusion possible,

Example
"If you eat your veg, thenyou get dessert"

- There is an implied threat, no dessert means no veg, we can be explicit by saying "$p$ if and only if $q$"

$p <-> q$ read as "$p$ iff $q$" or "p if and only if q"

Note: These can be strung together, to make even more complicated expressions (parentheses might be needed)

Example

$((f -> b) and (m -> b)) <-> ((f or m) -> b)$

- Brute force computations can be carried out with #underline[Truth Tables]

#table(
  columns: 11,
  align: center,
  inset: 5pt,
  table.header(
    [$p$],
    [$q$],
    [$not p$],
    [$not q$],
    [$p and q$],
    [$p or q$],
    [$not p and not q$],
    [$not (p and q)$],
    [$p xor q$],
    [$p -> q$],
    [$p <-> q$],
  ),
  [T], [T], [F], [F], [T], [T], [F], [F], [F], [T], [T],
  [T], [F], [F], [T], [F], [T], [F], [T], [T], [F], [F],
  [F], [T], [T], [F], [F], [T], [F], [T], [T], [T], [F],
  [F], [F], [T], [T], [F], [F], [T], [T], [F], [T], [T],
)

= Definitions

#let a = [if $p$ is a proposition, we define the _negation_ of $p$ as the compound statement "$p$ is not true" 

we write $not p$ and say "not $p$"

]

#a

#let def = [The sentence "if p, then q" translated as "$p -> q$" and read as "$p$ implies $q$"
]

#def




#align(center)[
  #set text(size: 8pt)
  #table(
    columns: 17,
    align: center,
    inset: 5pt,
    table.header(
      [$p$],
      [$q$],
      [$not p$],
      [$not q$],
      [$p and q$],
      [$not p and q$],
      [$p and not q$],
      [$not p and not q$],
      [$not (p and q)$],
      [$p or q$],
      [$not p or q$],
      [$p or not q$],
      [$not p or not q$],
      [$not (p or q)$],
      [$p xor q$],
      [$p -> q$],
      [$p <-> q$],
    ),
    [T], [T], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [],
    [T], [F], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [],
    [F], [T], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [],
    [F], [F], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [],
  )
]