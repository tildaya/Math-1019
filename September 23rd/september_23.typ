= Recap

De Morgan's Laws
$ not(p and q) equiv not p or not q $
$ not(p or q) equiv not p and not q $
$ not(forall x P(x)) equiv exists x not P(x) $
$ not(exists x P(x)) equiv forall x not P(x) $
CD-Equivalence
$ p -> q  equiv not p or q $

= 1.5 Nested Quantifiers

If a predicate involves more than one variable we can quantify using multiple quantifiers. (Read left to right)

== Note

Two copies of the same type of quantifier #underline()[commute] (commutivity)

$ forall x forall y P(x, y) $

Is the same as:

$ forall y forall x P(x, y) $

Any counterexample  to one would be a counterexample to the other.

Similarly,

$ exists x exists y P(x, y) equiv exists y exists x P(x, y) $

This does not work for a mix of quanitifers

=== Example
On the domain of integers:

Let Q(x) be $2x + y = 3$

We have given an already picked x, we can let $y = 3 - 2x$ so $2x + y = 2x + (3-2x) = 3$ and thus $exists y P(x, y)$

Since we didnt use any properties of x

So:

$ forall x exists y P(x, y) $

#pagebreak()

== End example

On the other hand, no matter which y is picked there is some x so that $2x + y != 3$

This means $forall x P(x, y)  $ is *False* (no matter the y)

So:

$ not exists y forall x P(x, y) $


In general as long as the domain is non-empty:

$ exists x forall y P(x, y) -> forall y exists x P(x, y) $


== Example 2

Let R(x, y) be $x + y = x$

In this case $y = 0$ gives the example that $ exists y forall x R(x, y) $

But also showing:

$ forall x exists y R(x, y) $

There is not generally a relation between $ forall x exists y P(x, y) $ 

And:

$ forall y exists x P(x, y) $

== Calculus Example

$ f(x) R -> R $ is continuous at $x_0$ iff

$ forall epsilon > 0,  exists delta > 0 (|x-x_0| < delta -> |f(x) - f(x_0)| < epsilon) $

We have the tools to say what it takes to not be continuous at $x_0$

$ not(forall epsilon > 0, exists delta > 0, forall x (|x - x_0| < delta -> |f(x) - f(x_0)| < epsilon)) $
$ equiv exists epsilon > 0, forall delta > 0, exists x (|x - x_0| < delta and |f(x) - f(x_0)| > epsilon) $ 


== Aside

$ not (p -> q) equiv not p or q "conditional-disjunction equivalence" $
$ equiv not not p and not q "De Morgans" $
$ equiv p and not q "Double Negation" $

#pagebreak()

= 1.6 Rules of Inference

Framework:

If the hypothesis $P_1, P_2, ... P_n$ give enough information to conclude $q$, we write:

$ p_1 \ p_2 \ ... \ p_n \ #line() \ therefore q $

This is the case if:

$ (p_1 and p_2 ... and p_n ) -> q $

is a tautology.

For this to not be a tautology, there must be an assignment of variables so that $p_1 and p_2 ... and p_2$ is *true* but $q$ is *false*

== Example

Can we conclude from $p and q$ that $p or q$?

This asks is \ $p and q$ \ #line() $therefore p or q$ i.e $p and q -> p or q$ \ is a tautology


#table(
  columns: 5,
  align: center,
  [$p$], [$q$], [$p and q$], [$p or q$], [$(p and q) arrow.r (p or q)$],
  [T], [T], [T], [T], [T],
  [T], [F], [F], [T], [T],
  [F], [T], [F], [T], [T],
  [F], [F], [F], [F], [T],
)

We check if only Ts are left in the conclusion column

== Alternatively

1. $p and q$ hypothesis #line() 2. $therefore p$ simplification applied to 1. #line() 3. $therefore p or q$ addition on 2. 

*Simplification*: we can ignore extraneous facts

*Addition*: we can disjoin anything to something already true

If the conclusion is not justified, the arguement is a #underline()[fallacy].

#pagebreak()
=== Example

"One of my students was a brilliant math guy or an NFL player" \ He was an NFL player #line()
$therefore$ He was not a brilliant math guy

with \ $p$ "He was brilliant" \ q "he was in NFL?"

Our arguement is :

$p or q$ \ q #line() $therefore not p$

But all hypotheses are true if $p$ is T and q is T but then $not p$ is false

