= Test 2
- Definitions up to end of chapter 9
- Practical up through 8.2 theorem 4
- Starts at "things not on test 1 (i.e 2.5) "
- Chapters 1 & 2 still essential.


= Chapter 9 Relations

*Definition*

If $A$ and $B$ are sets, then a relation #underline()[from] $A$ #underline()[to] $B$ is a subset of $A times B$.

if $R$ is such a relation, then for any $(x, y) in A times B$, either

$(x, y) in R$ (We say $x$ is related to $y$ and write it as $x R y$)

or

$(x, y) in.not R$ ($x$ is not related to $y$ $x cancel(R) y$)

*Examples of relations include*

$ = <, <=, ->, "etc"$

*Example*

$5 < 6$ means $(5, 6) in {(x, y) | x "is less than" y}$

\

We actually have seen subsets of cartesian products before.

In functions, every graph is a subset of $RR^2$ or $R times R$

If,

$f : A -> B$

is a function, we can build a corresponding relation:

$R = {(x, y) in A times B | f(x) = y}$

IN this way, every function is a relation.

\ 

But not vice versa:

$y = plus.minus sqrt(x)$ is not a function

\

Relations can involve any domain and codomain, (in which case grahps might not be appropriate)

\

*Example*

Suppose $S = {"Alice, Bob, Eve"}$
and

$V = {"Halo, Mariocart, Bash Brothers"}$

A relation, $R$ could track which student has played which game.

WE could use a table:

#table(
  columns: 4,
  table.header([], [Halo], [Mariocart], [Bash Brothers]),
  [Alice], [x], [x], [],
  [Bob],   [], [x], [],
  [Eve],   [x], [], [],
)

or sometimes an array or matrix.

Or directed graph can encod this information

Alice -> Halo, Bash Brothers

Bob -> Mariocart and Halo

Eve -> 

\

If the domain and codomain are identical, say both are $A$, we say the relation is a relation #underline()[on] $A$

"$R$ is a relation on $A$"

is shorthand for "$R$ is a relation from $A "to" A$, hey look, $A$ and $A$ are the same."

\

*Example*

$\/ ("Divide") "is a relation on" NN$

we say $a / b$ iff $exists k (b = a k)$ (i.e $b / a$ is an integer)

Restricting to $A = {2, 3, 4, 5, 6, 7, 8}$ We have 

#table(
  columns: 8,
  table.header([], [2], [3], [4], [5], [6], [7], [8]),
  [2], [x], [], [x], [], [x], [], [x],
  [3], [], [x], [], [], [x], [], [],
  [4], [], [], [x], [], [], [], [x],
  [5], [], [], [], [x], [], [], [],
  [6], [], [], [], [], [x], [], [],
  [7], [], [], [], [], [], [x], [],
  [8], [], [], [], [], [], [], [x],
)

Same idea but with a directed graph.


\

*Operations on Relations*

RElations are just sets, so we can apply set operations like $inter, union , without, complement$

*Example*

$R = {(x, y) | x <= y}$

$S = {(x, y) | x <= 3}$

#include "relation_graphs.typ"

With a bit of creative notation, $<=$ is $< union =$

\

We can also compose relations

*Example*

If $R$ relates student $s$ to games $V$ with $x R y$ means $x$ has played $y$

and $T$ related to $V$ to $C$ via $y T z$ means character $z$ is in game $y$ 

We can ask:

Has $x$ ever played a game featuring character $z$

This would be true iff there exists some game with two properties:

$x R g$ and $g T z$ 

We'll write 

$x(T compose R)(z)$

This is an extension of function composition.

If $f : A -> B$ and $g : B -> C$

then $(g compose f(x)) = z$

means $g(f(x)) = z$ (Call $f(x)$ by the name $y$)

so $exists y (f(x) = y and f(y) = z)$

\

