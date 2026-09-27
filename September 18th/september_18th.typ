= Recap 

We defined 
- #underline()[Tautology]
- #underline()[Contradiction]
- #underline()[Contingency]

== Examples
$ p or not p$ is Tautology

$p and not p$ is a Contradiction

$p$ is a Contingency

== Definition
Two propositions, $S$ and $T$ are #underline()[logically equivalent], iff $S <-> T$ is a #underline()[Tautology]

in this case we write  $S equiv T$

The symbol $equiv$ for logical equivalence behaves much like an $=$ in arithmetic,
- We can substitute equivalent subexpression for each other
- We can chain together strings of equivalences

=== Analogy
If $x = 7y$, then $f(x) + x^2 = f(7y) + (7y)^2$

Also if $x = 7y = 3z + 2 = 4r - 3$, then $x = 4r-3$ etc.


= 1.3 Logical Equivalence

#table(
  columns: 8,
  align: center,
  table.header(
    [$p$], [$q$], [$not p$], [$not q$],
    [$p or q$],
    [$not p and not q$],
    [$not (p or q)$],
    [$(not p and not q) <-> not (p or q)$],
  ),
  [T], [T], [F], [F], [T], [F], [F], [T],
  [T], [F], [F], [T], [T], [F], [F], [T],
  [F], [T], [T], [F], [T], [F], [F], [T],
  [F], [F], [T], [T], [F], [T], [T], [T],
)

Since the final column is all $T$ it is a #underline()[Tautology], thus $not p and not q equiv not(p or q)$

Alternatively, omit the final column and highlight the fact that the two columns are identical

Similiarly $not p or not q equiv not(p and q)
$

Collectively 
$not p or not q equiv not (p and q)$

&

$not p and not q equiv not(p or q)$

Are De Morgan's Law(s) (for propositional logic)

== Also
$p -> q equiv not p or q$ 

Called the conditonal-disjunction equivalence

== Tables
Table 6 lists many equivalences involving $and, or, not$

Table 7 adds identities involving $->$

Table 8 includes $<->$

We dont always need to build a truth table at all, we can use properties of $equiv$ to build new equivalences from old,

== Note
In arithmetic we have 2 distributive laws.

$x * (y + z) = (x * y) + (x * z)$ (This is the same pattern as our logic law)

But Also

$(x + y) * z = (x * z) + (y * z)$

== Example
Can we show

$( p -> r) and (q -> r) equiv (p or q) -> r$

*Approach 1* : build a truth table

*Approach 2* : Use existing equilvances, 
- Exploration (start at both sides, work to the middle)

$(p -> r) and (q -> r) equiv (not p or r) and (not q or r)$

$(p or q) -> r equiv not(p or q) or r equiv (not p and not q) or r$

*Approach 3* : This new identity is in table 7, if we hand't been so busy learning table 6

=== Explanation Stage
Tidy this up into a linear proof, 

#pagebreak()

= Common Logical Equivalences

Here, $T$ means true and $F$ means false.

#table(
  columns: (auto, 1fr),
  inset: 8pt,
  table.header([*Law*], [*Logical equivalence*]),

  [Identity],
  [
    $p and T equiv p$ \
    $p or F equiv p$
  ],

  [Domination],
  [
    $p or T equiv T$ \
    $p and F equiv F$
  ],

  [Idempotent],
  [
    $p and p equiv p$ \
    $p or p equiv p$
  ],

  [Double negation],
  [$not (not p) equiv p$],

  [Negation],
  [
    $p or not p equiv T$ \
    $p and not p equiv F$
  ],

  [Commutative],
  [
    $p and q equiv q and p$ \
    $p or q equiv q or p$
  ],

  [Associative],
  [
    $(p and q) and r equiv p and (q and r)$ \
    $(p or q) or r equiv p or (q or r)$
  ],

  [Distributive],
  [
    $p and (q or r) equiv (p and q) or (p and r)$ \
    $p or (q and r) equiv (p or q) and (p or r)$
  ],

  [Absorption],
  [
    $p or (p and q) equiv p$ \
    $p and (p or q) equiv p$
  ],

  [De Morgan's],
  [
    $not (p and q) equiv not p or not q$ \
    $not (p or q) equiv not p and not q$
  ],

  [Implication],
  [$(p -> q) equiv (not p or q)$],

  [Contrapositive],
  [$(p -> q) equiv (not q -> not p)$],

  [Biconditional],
  [$(p <-> q) equiv ((p -> q) and (q -> p))$],
)

#image("/assets/image.png")