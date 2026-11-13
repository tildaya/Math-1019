= Recap

a relation from $A$ to $B$ is a subset of $A times B$

When the relation is named $R$,

we can write $a R b$ to mean $(a, b) in R$

In particular a function 

$f : A -> B$ can be identified with the set 

${(x, y) | f(x) = y}$

and thus a function is a relation.

\

Since a relation is just a set, we can apply set operations

$inter, union, without, complement$ 

are all relevant.

*Example*

on $RR$ we can define

$R_1 = {(x, y) | x <= y}$

$R_2 = {(x, y) | x < y}$

$R_3 = {(x, y) | x >= y}$

$R_4 = {(x, y) | x = y}$

$R_1 inter R_3 = R_4$

If $(x, y) in R_1 inter R_3$

then $(x, y) in R_1$ so $x <= y$

but also $(x, y) in R_3$ so $x >= y$

but if $x <= y and y <= x$ then $x = y$

so $x R_4 y$

that shows $R_1 inter R_3 subset.eq R_4$

Also if

$x R_4 y$ then $x = y$

so $x <= y$ and $y <= x$

thus $(x, y) in R_1$ and $(x, y) in R_3$

hence $(x, y) in R_1 inter R_3$

so $R_4 subset.eq R_1 inter R_3$

*Similarly*

$overline(R_2) = R_3$

If $(x, y) in overline(R_2)$ then $(x, y) in.not R_2$

so $not (x < y)$ thus $x >= y$ and $x R_3 y$

similarly if 

$(x, y) in R_3$ then $x >= y$ so $not (x < y)$ and $x cancel(R_2) y$

\

*Exercise*

Check $R_1 without R_2 = R_4$

what is $R_1 union R_3$?

\

We can also think of relations like functions and build composition

*Example*

Let $S$ be the set of students

$V$ be the set of video games

$C$ be the set of characters

Two relations, $P$ and $F$ might encode data

\

$P$ from $S$ to $V$ is defined by $x P y$ if student $x$ has played game $y$

$F$ from $V$ to $C$ is defined by $y F z$ if game $y$ features character $z$

\

If a marketing team wants to determine which students have played a game featuring a particular character, the relations are enough information.

\

We would say "$x$ has played a game featuring character $z$" (Some relation between $S$ to $C$)

If $exists y in V$ such that,

$x P y$ and $y F z$

The composite relation is $F compose P$ has this definition.

More generally  $a T compose U b$

equivalently $(a, b) in T compose U$

iff $exists c$ such that $a U c$ and $c T b$

\

There is an analogy to functions,

$g compose f(x) = z$

means $g(f(x)) = z$

so if we name $f(x)$ as $y$, then

$exists y f(x) = y$ and $g(y) = z$

\

If $R$ is a relation on $A$

(a relation from $A$ to $A$)

then we can compose $R$ with itself

In fact we can repeat and build a recursive definition

$R^1 = R$ and $R^(n+!) = R^n * R$

\

*Example*

Suppose $S$ is the relation on $NN$ given by $x S y$ iff $x < y$

$4 S^2 6$

since $4 S 5$ and $4 S 6$

but $(8, 9) in.not S^2$ since there are no numbers $m NN$ strictly between $8$ and $9$

\

*Example 2*

let $A$ be the set of bus stops in Ontario, and say $x R y$ iff we would take the bus from $x$ to $y$

If $x R^2 z$ then 

$exists y$ such that $x R y$ and $y R^2 z$

equivalently $x R^2 z$ iff we can get from $x$ to $z$ by taking exactly 2 busses. (With transfer at $y$ for some $y$)

\

$x R^k z$ iff you can get from $x$ to $z$ using exactly $k$ busses.

To study the trips possible by any sequence of busses, we would consider 

$R union R^2 union R^3 union ... union R^k union ...$

Sometimes denoted $R^*$ (The transitive closure)

or 

$union.big_(k =1)^infinity R^k$


\

*Some properties*

(of relations on a set)

(in particular that make a relation on "like" the "=" relation)

\

*Motivating examples*

For real numbers,

of $x <= y$ and $y <= z$ and $z <= x$

then

$x <= z$

but this means $x <= z$ and $z <= x$

so $x = z$

\

For sets

If $S subset.eq T$ and $T subset.eq U$ and $U subset.eq S$

then $S subset.eq U$ and $U subset.eq S$

thus $S = U$

\

For propositions

If $p -> q$ and $q -> r$

and $r -> p$, then

$p -> r$ (Hypothetical Syllogism)

and thus $p -> r$ and $r -> p$

so $p <-> r$ and 

$p equiv r$

\

Our properties describe why these arguements are so similar.

All of $<=, subset.eq, "and" ->$

are transitive

while $<=, "and" subset.eq$ are antisymmetric

$->$ is not antisymmetric, hence the conclusion 

$p equiv r$ instead of $p = r$

\

*Definition*

For a relation $R$ on set $A$

1. $R$ is reflexive iff $forall x in A (x R x)$ ($=, <=, subset.eq, ->$ are reflexive, $<$ is not)

2. $R$ is symmetric iff $forall x in A forall y in A (x R y -> y R x)$ ($=$ is symmetric, $<=$ is not)

3. $R$ is antisymmetric iff $forall x in A forall y in A (x R y and y R x -> x = y)$

4. $R$ is transitive iff $forall x in A forall y in X forall z in A (x R y and y R z) -> x R z$ ($<=, <, =, ->$ are transitive)

*Aside*

Hypothetical Syllogism is the rule that states $->$ is transitive.


In our bus example $R$ is not transitive, there are places I can get with transfer that I cant reach directly.

\

*Example*

On the set ${2, 4, 7, 14, 28}$

define $x R y$ by $x y$ is a factor of $28$

$2 -> 2$

$14 -> 2$

$7 -> 4, 2$

This is symmetric, every arrow has a corresponding opposite direction.

It is not reflexive, since there is no loop at $4$,

\

*Example*

on the set ${2, 3, 4, 5, 6, 7, 8}$

$x R y$ iff $x $ is a factor of $y$

$2 -> 2, 4$

$3 -> 3, 6$

$4 -> 4, 8$

$5 -> 5$

$6 -> 6$

$7 -> 7$

$8 -> 8$

This is reflexive, but not symmetric, it is antisymmetric and transitive