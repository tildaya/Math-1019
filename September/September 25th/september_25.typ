== New from old via logical arguement
Ex:

If we know $p -> q $ \ and we know $p or q$ \ can we conclue anything about $q$

== Alternatively
Using rules of inference (and logical equivalence)

Obstacle: We have a mix of disjunctions (computer think) \ and implications (human thought)

== Approach 1
Turn the disjunction into an implication,

1. $p or q$ given
2. $therefore not p -> q$ (logically equivalent to 1.)
3. $p -> q$ also given
4. $(p -> q) and (not p - > q)$ (conjunction of 2. and 3.) (conjunction rule from table of inference)
5. $(p or not p) -> q$ logically equivalent to 4.
6. $T -> q$, $p or not p equiv T$
7. $T$ absolute fact 
8. $q$ modus ponnens 6. + 7.

== Approach 2
Turn the implication into a disjunction

1. $p -> q$ (given fact)
2. $not p or q$ (CD equivalent to 1.)
3. $p or q$ (given fact)
4. $q or q$ (resolution rule)
5. $q$ (equivalent to 4. via idempotency)

= Fallacy
We know how to test if:
$ p_1 $ $ p_2 $ $ ... $ $ p_n $ $  #line() $ $ therefore q $

The above is valid,

If it isnt, then some combination of variable values demonstrates this, (rough work involves a table, the explanation is just one set of values)

#pagebreak()

== Common fallacies
\
$p -> q \ #line() \ therefore p $

False when p = F and q = T (Affirming the conclusion)
\

$ p -> q \ not p \ #line() \ therefore not q$

False when p=F and q = T (denying the hypothesis)

$ p or q \ p \ #line() \ therefore not q$

false when p=T and q = T (affirming the disjunction)

#pagebreak()

= Rules involving Quantifiers

Examples: \
Suppose we learn about some predicate 
$P(x) $ that $forall x > p(P(x) -> P(x+1) )$ \
and also that $P(72)$ is true

$P(x)$ could be "x people is enough to form an Aussie rules football team"

We can conclude $P(74)$ is enough people to play Aussie rules football


1. $forall x > 0, (P(x) -> P(x+1) )$ given
2. $P(72) -> P(73)$ (3. & 4. are Universal Instantiation of 1.)
3. $P(73) -> P(74)$ 
4. $P(72) -> P(74)$ (Hyp Syllogism of 2. and 3.)
5. $P(72)$ (given)
6. $P(74)$ (Modus Ponnens on 4. and 5.)


== Example
Suppose two predicates

$W(x)$ and $S(x)$ are related
$forall x (W(x) -> S(x))$

If we learn W(x) is grass, then the following is valid:

1. $forall x (W(x) -> S(x))$
2. $W("grass") -> S("grass")$ (Universal Instantiaion of 1.)
3. $W("grass")$ (given)
4. $therefore S("grass")$ (Modus Ponnens on 2. and 3.)

(1. through 4. is a common pattern, that gets its name)

1. $forall x (W(x) -> S(x))$ (given)
2. $W("grass")$ (given)
3. $therefore S("grass")$ (universal Modus Ponens on 1. and 2.)

Similarly we have Universal Modus Tollens

#line()

Sam Shortenning applies on previous arguement:
1. $forall x >= 0(P(x) -> P(x+1) )$
2. $P(x)$
3. $P(73)$ UMP on 1. and 2.
4. $p(74)$ UMP on 1. and 3. 

#pagebreak()

= 1.7 & 1.8 Proofs

#underline()[Terms] 
- Theorem $<-$ Important
- Proposition $<-$ Neutral Word
- Lemma $<-$ Stepping Stone
- Corollary $<-$ Easy consequence

^ All things we have proved

- Conjecture $<-$ We dont know if its true

- Many important theorems are in the form of an implication or disjunction

Ex: \ If $m$ and $n$ are even integers, then so is $m + n$
- ^ Implied universal quantifier
  - Means "For all integers m and n, if m is even, and n is even, m +n is even"

"Every integer is either even or odd,"

#underline()[Definition]
An integer is even, iff there exsits an integer $k$ such that $n = 2k$, \ For current discussion we'll write $cal(E)(n)$ \ An integer n is odd iff $exists k (n = 2k +1)$













