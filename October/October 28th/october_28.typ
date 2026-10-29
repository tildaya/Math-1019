= $section 5$ Induction

Instead of writing out all the steps (that we took in the rading check in \#4), 
    we'll agree there is a shortcut

*New Rule*

$P(1)$ (Base Case)

$forall n >= 1(P(n) -> P(n + 1))$ (Inductive Step)

#line()

$therefore forall k >= 1 P(k)$ (Conclusion)

The above is mathematical induction

We can now prove $P(12456789)$ easily

1. $P(1)$

2. $forall n >= 1 (P(n) -> P(n + 1))$

#line()

3. $forall k >= 1 P(k)$ (Mathematical Induction on 1. and 2.)

$therefore P(12456789)$ (Universal instatiation of 3.)

*Warning*

Neither the base case nor the inductive step is inherently easy, or inherently difficult

*Exmaple*

Let $Q(n)$ be the propositional function "n people is enough to form a team in Aussie rules footbal"

Let $k$ be a generic positive integer, assume $Q(k)$ is true, "$k$ people can form a team"

\

Q: What can we do, if $k + 1$ people show up?

A: Have one person sit in a corner, and use the fact that $k$ people can form a team, to make a team out of whoever is left.

\

Under these assumptions we see $Q(k + 1)$ must be true.

Since we made an assumption, instead of proving $Q(k + 1)$ (Unconditionally)

We've proved $Q(k) -> Q(k + 1)$

Since $k$ was generic (we used no $k$-facts)

We can apply a universal generalization, and conclude:

$forall n >= 1 Q(n) -> Q(n + 1)$ (Inductive Step)

We don't yet have a base case.

*Point 2*

The base case and ionductive step can be dealth with in any order.

\
#pagebreak()

If we learn that at least once a team fit on a standard 72 person bus,, we can conclude $Q(72)$ 

It seems we should be able to conclude $Q(72)$ & $Q(1000)$ & $Q(10000000)$ etc.

\

Let $R(n)$ be $Q(n + 71)$

So we know 

$R(1)$ is true (Because $Q(72)$ is true)

but also if $n >= 1$ then,

$R(n) equiv Q(n + 71)$ and

$Q(n + 71) -> Q(n + 1 + 71)$ and

$Q(n + 1 + 71) equiv R(n + 1)$ thus

$forall n >= 1(R(n) -> R(n + 1))$

We can apply induction directly to $R$ and conclude:

$forall k >= 1 R(k)$

but $R(k) equiv Q(k + 71)$

so if $n >= 72$, then $Q(n) equiv R(N - 71)$ (which is true)

and thus $forall k >= 72 Q(k)$






