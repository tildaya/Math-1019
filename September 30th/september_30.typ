= Recap

= Proof by cases
We can prove $q$ if we can prove \ $p_1 -> q$ $p_2 -> q$ \ $p_3 -> q$ \ $p_n -> q$ \ (the above are cases) \ and $(p_1 or p_2 ... or p_n)$

This is usually accomlished implicitly by noting $p_n$ is the "otherwise case"

In terms of rules of inference, this is based on the logical equivalence 

$ (p_1 -> q) and (p_2 -> q) and ... and (p_n -> q) equiv (p_1 or p_2 or ... or p_n) -> q $

Weve seen some cases of this, but we'll dead with it properly in *chapter 5*

== Next week
We will learn that $1^2 + 2^2 + 3^3 + 4^2 ... + n^2 = n((n+1)(2n+1)) / 6$

A consequence is that $n(n+1)(2n+1)$ is always divisible by 6 when n is a natural number,

In fact this remains true when $n$ is any integer.

= One Piece
Lets use case analysis to show $n(n+1)(2n+1)$ is always divisible by 3,

== Thought process
If $n$ is a multiple of 3, this is easy, so part of the problem is done.

#pagebreak()

== We will apply a proof by cases
(Looking ahead to set notation, the remainder is in ${0, 1, 2}$)

It follows $n=3k+r$ for some integer $k$ and some $r in {0, 1, 2}$

=== Case 1
Thus $n = 3k$ so $n(n+1)(2n+1) = 3[k (n+1)(2n+1)]$

- Replace the first $n$ with $3k$
- Factor out the 3 in the second part before []

Which is a multiple of 3,

=== Case 2
The remainder is 1 \ 
Thus \ 
$ n = 3k + 1$ so $2n + 1 = 2(3k + 1) + 1 = 6k + 3 = 3(2k + 1) $

and so $n(n+1)(2n+1) = 3[n(n+1)(2n+1)]$

which is a multiple of 3

=== Case 3
#underline()[Otherwise] the remainder is 2

In this case, $n = 3k + 2$

so $n + 1 = (3k + 2) + 1 = 3(k +1)$

and $n(n+1)(2n+1) = 3[n(n+1)(2n+1)]$

which is again a multiple of 3

=== Conclusion
Siince in every case $n(n+1)(2n+1)$ is a multiple of 3, and the cases are exhaustive,

$ n(n+1)(2n+1) $

Is unconditionaly a multiple of 3.

Our arguement form loaded like:

1. $p_1 -> q $ \
2. $p_2 -> q $ \
3. $p_3 -> q $ \
#line()
4. $therefore (p_1 -> q) and (p_2 -> q) and (p_3 -> q)$ (conjunction of 1. and 2. and then 3.) 
5. $therefore (p_1 or p_2 or p_3) -> q$ (logically equiv to 4.)
6. $p_1 or p_2 or p_3$ (preamble)
#line()
7. $therefore q$ (Motus Ponnens of 5. and 6.)

Where $p_1$ is "The remainder when $n$ is divided by 3 is 0" \
$p_2$ is "the remainder is 1" \
$p_2$ is "the remainder is 2" \
$q$ is "$n(n+1)(2n+1)$ is a multiple of 3"

=== Putting it all together
1. $n(n+1)(2n+1)$ is a multiple of 3 (Example result)
2. $n(n+1)(2n+1)$ is even (By exercise)
3. $exists k n(n+1)(2n+1) = 3k$
4. $exists k (n(n+1)(2n+1)) = 2k$
5. $n(n+1)(2n+1) = 3l$ (Existential instantiation of 3.)
6. $n(n+1)(2n+1) = 2m$ (Existential instantiation of 4.)
7. $3l = 2m$ (Subs of equals from 5. and 6.)

- $3l$ is the product
- $2m$ is even

8. 3 is even OR $l$ is even (result from last week)
9. 3 is not even (Definition of even)
10. $l$ is even (Disjunctive Syllogism of 8. and 9.)
11. $exists k (l=2k)$ (Definition of even on 10.)
12. $l = 2o$ (Existential instantiation)
13. $n(n+1)(2n+1) = 3(2o) = 6o$

=== Exercise
(will be on assignment 3)

Use case analysis to prove $forall n [n(n+1)(2n+1)]$ is even

=== Note 
if $n$ is divided by 3 (using long division) the remainder must be less than 3.

#pagebreak()

= Existence by cases
Goal: Lets try to show that 
$ exists x exists y ("x is irrational and y is irrational and" x^y "is rational") $

== Easy case
Maybe the $sqrt(2)^sqrt(2)$ is rational

If this is the case then:

$x = sqrt(2)$ and $y = sqrt(2)$ \ is our example

== Case 2
Otherwise $sqrt(2)^sqrt(2)$ is irrational \ and we know 2 irrational numbers, maybe our example is:

$sqrt(2)^((sqrt(2)^sqrt(2)))$

or:

$(sqrt(2)^sqrt(2))^((sqrt(2)^sqrt(2)))$

or

$(sqrt(2)^sqrt(2))^sqrt(2)$

if we borrom from calc 2 that $(a^b)^c = a^(b c)$

Aside: \
We know $a^(p/q)$ is $root(q, a * a * a * a * ... * a)$
- ^^^^ p factors

but what does $a^sqrt(2)$ even mean?

Calculus says $e^(sqrt(2)ln(a))$ makes sense.

The example $x = sqrt(2)^sqrt(2)$ and $y = sqrt(2)$ \
then works since

$x^y = (sqrt(2)^sqrt(2))^sqrt(2) = sqrt(2)^(sqrt(2) * sqrt(2)) = sqrt(2)^2 = 2 = 2/1$

$therefore$ In both cases we hav ean example,

#pagebreak()

= Chapter 2
- Sets (2.1 & 2.2)
- Functions (2.3)
- Sequences (2.4)
- Sums (2.4)
- Cardinalities (instead of Matrices) (2.5)



