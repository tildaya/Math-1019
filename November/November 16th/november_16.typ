1. Reflexive $forall x in A x R x$
2. Symmetric $forall x in A forall y in A x R y -> y R x$
3. Anti Symmetric $forall x in A forall y in A x R y and y R x -> x = y$
4. Transitive $x R y and y R z -> x R z$

3 of these properties are easy to visualize on a directed graph representation.

- Reflexive $<->$ there is a loop at every vertex
- Symmetric $<->$ every arrow has a corresponding opposite pointing arrow
- Anti-Symmetric $<->$ The only pairs of opposite arrows are the loops.

Transitivity is harder to recognize.


\

*Note*

Symmetry and Anti-Symmetry are not opposites of each other.

\
A relationship could be,
- One
- The other
- Neither
- Or both

\

*Proposition*

1. If a relation $R$ on set $A$ is symmetric and anti-symmetric, then it is a subset of the equality relation.

2. If it is symmetric, anti-symmetric and reflexive, then it is the equality relation.
\

*Proof of 1*

Suppose $(x, y) in R$, then $(y, x) in R$ (Since $R$ is symmetric)

but that means $(x, y) in R and (y, x) in R$ so,

$x = y$ since $R$ is anti-symmetric

Thus

$(x, y) in $ "the equality relation"

*Proof of 2*

exercise

\


*Example*

Let $S = {"red, orange, yellow, Canada, Japan, Australia, Greece, green, blue"}$

and define 

$T$ as subset of $S times S$

by $(x, y) in T$ iff $x = y and x = "color"$

red -> red

orange -> orange

yellow -> yellow

green -> green

blue -> blue

canada ->

greece ->

australia ->

japan ->

$T$ is symmetric and anti-symmetric

\

*Transitivity*

is more easily recognized algebraically.

*Example*

Let $A$ be the set of all locations in Canada,

Say $x R y$ iff it is possible to walk from $x$ to $y$.

the $R$ is transitive. (It is also reflexive and probably symmetric)

*Suppose*

$a R b$ and $b R c$ then it is possible to walk from $a$ to $c$.

Do the second after the first, and you will find you have walked from $a$ to $c$

Thus $a R c$, hence $a R b and b R c -> a R c$

\

If we think of a relation in terms of the ability to get from 1 place to another (via some combination made of transit) then transitivity is the property that anything that can be accomplished in a multi-leg journey, could instead have been accomplished in a single trip.

\

*Algebraically*

We have, Theorem from $section 9.1$

A realtion $R$ on set $A$ is transitive, if and only if $R^k subset.eq R$ for every $k = 1, 2, 3, ...$

\

This theorem makes 2 claims.

1. $R$ is transitive
2. $r^k subset.eq R$ for $k >= 1$

1. $R$ is transitive, $->$ $R^k subset.eq R$ for $k >= 1$
2. $R^k subset.eq R$ for $k >= 1$ $->$ $R$ is transitive



Proof (in two parts)

Show $2. -> 1.$

If $R^k subset.eq R$ for $k >= 1$, then $R^2 subset.eq R$ (By universal Instantiation)

Now suppose,

$a R b and b R c$ (To show $R$ is transitive, we need to show this is enough to conclude $a R c$)

Since $a R b and b R c, exists y (a R y, and y R c)$

thus

$(a, c) in R^2$ but $R^2 subset.eq R$, so $(a, c) in R$

then $a R c$

so $R$ is transitive and $2. -> 1.$

\

*Part 2*

Now, let's show $1. -> 2.$

Let $P(k)$ be $R^k subset.eq R$

we can use induction on $k$ to prove $forall k >= 1 P(k)$

Base case:

$R^1 subset.eq R$ (since $R^1 = R$)

so $P(1)$ is true.

Inductive Assumption:

Assume $P(k)$  thus $R^k subset.eq R$

we want to show $R^(k+1) subset.eq R$ is a consequence.

Inductive Step:

Consider $(x, z) in R^(k + 1)$


by definition of $R^(k+1) exists ((x, y) in R and (y, z) in R^k)$ but

$R^k subset.eq R$ so

$(y, z) in R$

but this means $x R y and y R z$ so

$x R z$ and thus

$(x, z) in R$ (transitivity)

We used two facts
- $R$ is transitive
- $R^k subset.eq R$

to conclude $R^(k+1) subset.eq R$

thus $R$ is transitive 
- $P(1)$ is true
- $P(k) -> P(k + 1)$

so by induction 

$forall k P(k)$

\

= $section 9.5$ Equality Relations

We need to study relations that have as many properties in common with equality as possible.

But relations that are symmetric and anti-symmetric are a bit boring. So we'll stick with 3 out of 4.

\

There are relations that are
- Reflexive
- Anti-Symmetric
- Transitive

like $<=, >=, subset.eq, "etc"$

We won't pursue this direction.

\

*Definition*

A relation is an equivalence relation if it is
- Reflexive
- Symmetric
- Transitive

Most relations called 
- Similarity
- Equivalence
- Congruence

have these properties.



