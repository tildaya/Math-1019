= Continuing Induction

*Example*

Given a collection of stamps

(Say unlimited supply of $3cent$ and $17cent$ stamps)

What totals can we attach to an envelope?

\

For instance $10cent$ is not a possible total.

Let $Q(n)$ be "It is possible to put exactly $n$ cents on an envelope"

For these denominations, 
- $Q(0)$ is true
- $Q(2)$ is false
- $Q(10)$ is false

Can we figure out out the values for which $Q(n)$ is true?

*Observation*

If $Q(k)$ is true, then $Q(k + 3)$ and $Q(k + 17)$ must be true.

If somebody tells you a recipe for paying $k$ cents, you can pay $k+3$ cents by attaching that recipe, and then adding an extra $3cent$ stamp.

The reverse $Q(k + 3) -> Q(k)$ is false, we can't take 3 cents off unless there was a $3cent$ stamp present

*Example*

$Q(17)$ is true,

but

$Q(14)$ is false

\

*Approach 1*

Find consectuive values, using trial and error, that are possible.

*Note*

$Q(34)$ is true $(2 * 17cent)$

$Q(33)$ is true $(11 * 3cent)$

$Q(32)$ is true ($1 * 17cent + 5 * 3cent$)

We can extend this and conclude

$Q(n)$ is true whenever $n >= 32$

to pay $35cent$, use the $32cent$ recipe plus one $3cent$ stamp

Extend this to $n + 1 | n >= 32$ ...

To keep the recipe rolling, we need to show that being able to pay consecutive values, lets us pay higher consecutive values.

Let $R(n)$ be "$Q(n) and Q(n+1) and Q(n + 2)$"

1. $R(n) -> Q(n + 1) and Q(n + 2)$ (Simplification)
2. $R(n) -> Q(n)$
3. $Q(n) -> Q(n + 3)$
#line()
4. $therefore R(n) -> Q(n + 3)$ (Hypothetical Syllogism)
5. $R(n) -> (Q(n + 1) and Q(n + 2) and Q(n + 3))$
6. $equiv R(n) -> R(n + 1)$

Since $n$ was generic

$therefore forall k>= 1 R(n) -> R(n+1)$ (Universal Generalization)

We saw $R(32)$ (Direct proof (Team approach))

$therefore forall n >= 32 R(n)$

and thus

$forall n >= 32 R(n)$

This is the best we can do.

$P(31)$ is false, so $R(31)$ is false,

and thus

$R(1), R(2), ... R(30)$ are all false

We still need to evaluate:

$Q(1), Q(2), ..., Q(31)$ By brute force.

#pagebreak()

== Alternate Approach

Is there a situation when we #underline()[can] prove $Q(k) -> Q(k + 1)$

*Two Observations*

- $6 times 3 cent - 17cent = 1cent$

Also

- $2 times 17cent - 11 * 3cent = 1cent$

So if $k cent = m * 3cent + n * 17cent$

Then we can make $(k + 1)cent$ as long as

$m >= 11$ or $n >= 1$

*Obstacles*

Are only possible if:

$m <= 10$ and $n <= 0$

In which case 

$k cent = n * 3cent + n times 17cent <= 10 * 3cent + 0 times 17cent = 30cent$

Thus

If $k >= 31$, the obstacles can't both happen. and so

$Q(k) -> Q(k + 1)$

This direct proof shows:

$forall k >= 31 Q(k) -> Q(k + 1)$

In fact $Q(31)$ is false, but $Q(32)$ is true

$therefore forall n >= 32 Q(n)$

#pagebreak()

== Case Analysis

To justify case analysis, with $n$ cases, we rely on the (note yet proved in this course) claim that:

$(p_1 -> q) and (p_2 -> q) and ... and (p_n -> q) equiv (p_1 or p_2 or p_3 or ... or p_n) -> q$

an inifnite number of different claims, one claim or for each $n$

Let $P(n) = (p_1 or p_2 or ... or p_n) -> q$

We can use (modified) induction to prove,

$forall n P(n)$

Base case $P(2)$ can be proved using a truth table.

Our goal is an expression involving,

$(p_1 -> q) and (p_2 -> q) and ... and (p_n -> q) and (p_(n+1) -> q)$

Let's start with that and track assumptions.

$equiv ((p_1 or p_2 or ... or p_n) -> q) and (p_(n+1) -> q)$ provided $P(n)$

$equiv ((p_1 or p_2 or ... p_n) or p_(n+1) -> q)$

We conclude:

If $P(2)$ and $P(n)$ then

LHS of $P(n + 1) equiv$ RHS of $P(n + 1)$

thus

$P(n) and P(2) -> P(n + 1)$ (Not quite right for induction)

*Fix*

Let $Q(n)$ be $P(n) and P(2)$

thus

$Q(n) -> Q(n + 1)$

and $Q(2)$