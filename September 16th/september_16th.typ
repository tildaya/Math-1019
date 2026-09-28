= Anatomy of an implication
When we write $p -> q$, 

- p is called the #underline[hypothesis]
- q is called the #underline[conclusion]

== We can say:

"If $p$, then $q$"

"If $p$, $q$"

"$q$, if $p$"

"$p$ implies $q$"

etc.


All theses compound statements rule out exactly one combination of values $p$ and $q$


== Examples
"If it is raining, then the grass is wet."

$p = $ It is raining (hypothesis)

$q = $ "The grass is wet" (conclusion)

(the conclusion) says it is impossible for the situation "It is raining" and "the grass is wet" to occur simultaneously

#align(center)[
  #table(
    columns: 4,
    align: center,
    [$p$], [$q$], [$p arrow.r q$], [$p arrow.l.r q$],
    [T], [T], [T], [T],
    [T], [F], [F], [F],
    [F], [T], [T], [F],
    [F], [F], [T], [T],
  )
]

= Related implications
"If it is raining, then the grass is wet."

related to $p -> q$,
- we have its #underline[inverse]: $not p -> not q$
  - "If it is not raining, then the grass is wet" (not how the world works)
- its #underline[converse] : $q -> p$
  - "If the grass is wet, then it is raining"
- its #underline[contrapositive] : $not q -> not p$
  - "If the grass is not wet, then it is not raining" (means the same as the _original_)

== How to fill an implication
1. Every row where the hypothesis is false gets a $T$
2. Every row where the conclusion is true gets a $T$
3. Every unfilled row gets an $F$

== Anatomy of a truth table
- 1st compound column list all variables in all ...
- A column for every output we are interested in
  - Columns $p -> q$ & $(not q) -> (not p)$
- All their inputs occur to their left


A table compraing an implication to its contrapositive

#align(center)[
  #table(
    columns: 6,
    align: center,
    [$p$], [$q$], [$p -> q$], [$not p$], [$not q$], [$(not q) -> )not p)$],
    [T], [T], [T], [F], [F], [T],
    [T], [F], [F], [F], [T], [F],
    [F], [T], [T], [T], [F], [T],
    [F], [F], [T], [T], [T], [T],
  )
]

- In logic we agree that in the absence of parenthesis, we apply:
- $not$ first
- $and$ second
- $or$ third
- $->$ fourth
- $<->$ fifth


== A bi-implication example
"You will get a grade in this course, *iff* you are registered at the end of the semester"

#let iff = [If and only iff]

*iff* = #iff

== Exercise
Build a table for:

$((p -> r) and (q -> r)) <-> ((p or q) -> r)$

= 1.3 Logical equivalences
What happens when 2 columns in a truth table are the same?

A proposition is a #underline()[toutology] *iff* it evaluates to $T$ for every combination of values its variables

It is a #underline()[contradiction] if it evaluates to $F$ for every combination...

It is a #underline()[contingency] otherwise, i.e at least one combination makes it $T$ & at least one makes it false

