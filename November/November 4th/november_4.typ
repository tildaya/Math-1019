= $section 5.2$ Strong Induction and the well ordering principle

Two Techniques / Two problems

== Fundamental Theorem of Arithmetic

Any integer $n >= 2$ can be written as a product of 1 or more prime numbers, (If the factors are sorted (ascending/descnding/alphabetical/etc.) then the factorization is unique)

We'll prove the white part (The uniqueness requires chapter 4)

The natural choice for predicate is $P(n)$ is "$n$ can be factored as a product of primes"

$P(n)$ is not linked appropriately, by implication so either:

- Modify our predicate, or
- use a different version of Induction

$P(2)$ is true because $2 = 2$ (A product of 1 prime)

$P(3)$ is true because $3 = 3$ (Also a product of 1 prime)

$P(4)$ is true because $4 = 2 times 2$ (A product of 2 primes)

== Case analysis

To write $n$ as a product of primes:
- either
  - $n$ is prime an we write $n = n$
  - $n$ is composite so $n$ has some factor $d$ with $2 <= d <= n - 1$

*Also*

$n / d$ is an integer with $2 <= n/d <= n - 1$

\

If we have a list showing we can factor all the numbers all the numbers from $2$ to $n - 1$, then

$d = p_1 times p_2 times ... times p_n$ for some primes and some $k$

and

$n/d = q_1 times q_2 times ... times q_n$ for some primes and some $l$

so

$n = l times n/d = p_1 times p_2 times ... times p_k times q_1 times q_2 times ... q_l$

We only actually need $P(d)$ and $P(n/d)$, we want the whole list for simplicity

The arguement shows:

$forall k>= 2 P(2) and P(3) and ... and P(k) -> P(k + 1)$

Stronger Hypothesis than $P(k)$

Also 

$P(2)$

#pagebreak()

= Strong Induction

We have the rule 

$P(l) and P(l + 1) and ... and P(l + r)$

$forall k>= ("something bigger than" l), P(l) and P(l + 1) and ... P(l + k) -> P(l + r + 1)$
#line()
$therefore forall n >= l P(n)$

== Why it works
Let $Q(n)$ be $P(l) and P(l +1) and ... and P(n)$

Then as long as $t$ is big enough, we can show $Q(t)$

and

$forall k>= n Q(k) -> Q(k + 1)$

We could use normal induction on $Q$

\

In our example 

$Q(n)$ is "we can facor $2,3,4 ..., n$" 

#pagebreak()

= The Well-Ordering principle

Another problem and another technique.

The Division Algorithm states:
#line()

$forall a in ZZ and forall d in ZZ^+$

there exissts a unique $q in ZZ$ and $r in ZZ$ such that,

$a = d q + r$ and $O <= r < d $

$q = "quotient"$

$r = "remainder"$

The right tool is well-ordering

*Definition*

The well ordering principle states:

Every non-empty subset of non-negative integers has a smallest element. (Smallest also often called least)

To find $r$ and then $q$,

Let

$S = {n in NN | n = a - d q } ("and" q in ZZ)$

Claim $S$ is non-negative,

If $a >= 0$, then $a in S$

If $a < 0$, then $a - d(a + 1) = a(1 - d - 1) = a d in S$

So $S$ must have a smallest element,

Let $r = min(S)$

so

$r = a - d q_0$ for some $q$

Suprisingly $r < d$

Assume otherwise, so $r > d$ but then 

$a - d q_0 >= d$

so

$a- d (q_0 + 1) >= d - d = 0$

and

$a -d (q_0 + 1) in S$

Then $q = q_0$ completes the equation

$a = d q_0 + r$

and $ 0 <= r < d$,

Wel ordering is effectively using induction in a proof by contradiction setting.

#pagebreak()

= $section 5.3$ Recursive Definitions & Structural Induction 

(Structural Induction is a way to prove things about recursively defined objects.)

*By example*

Strings over an alphabet

Over the alphabet $Sigma$ (Where its just some set, possibly infinite)

The set of all strings:

$Sigma^*$ (Where $*$ represents everything under something, this case of strings)

*Notionally*

$Sigma^* = U_(k=0)^infinity Sigma^k$ where $Sigma^k$ is all $k - $ letter strings,

*A different approach, suitable for proof*

There is a special string $lambda$ with lenght of $0$ ($lambda$ is not a letter from our alphabet)

Every other string has a last letter which comes after a prefix, which is itself a string.

*Definition*

$Sigma^*$ is defined by

1. $lambda in Sigma^*$
2. IF $w in Sigma^*$ and $x in Sigma$, then $w x in Sigma^*$

In practice, 

if $Sigma = {a, b, c, d, t}$

then

$lambda in Sigma^*$

so

$lambda c = c in Sigma^*$

so

$"ca" in Sigma^*$

so

$"cat" in Sigma^*$








