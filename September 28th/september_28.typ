*Reading 2*: Due Wednesday before class \
*Assignment 2*: Due Sunday 10pm \
*Test 1*: Wednesday after reading wekk

= Recap

#underline()[Definition]: \
An integer $n$ is #underline()[even] iff $exists k (n=2k)$

#underline()[Definition]: \
An integer is #underline()[odd] iff $exists k(n 2k + 1)$

#underline()[Consequence]
$forall x (n "is even OR n is odd")$ \ Use long division to get a remainder of 0 or 1 when diving by 2

== Also

$forall n not(n "is even AND" n "is odd")$ \ (Wait untill proof by contradiciton)

Proof techniques include:
- Direct proof
- Proof by contraposition
- Proof of contradiction
- Proof by cases
- and more.

#pagebreak()

= Direct Proof
We use known facts and rules of inference until we reach the desired conclusion.

== Example
*Proposition*: \
If $n$ and $m$ are even, then $m + n$ is even.

To prove an implication, \ $p -> q$ \ we can start with the hypothesis $p$ and work to get $q$. 

In this case, there is an implicit universal quantification $ forall n forall m $
So we're going to need to end with a universal generalizaiton,

We need to keep $m$ and $n$ arbitrary, (We can't use any facts about m and n except their definitions)

=== Our proof could go like this
1. m is even $and$ n is even (hypothesis)
2. m is even (simplification of 1.)
3. $exists k (m = 2k)$ (definition of even applied to 2.)
4. $m = 2l$ for some $l$ (existential instantiation of 4.) (Note: we do not reuse the name *k*.)
5. n is even
6. $exists k (s = 2k)$
7. $k = 2o$ for some o
(Exercise: annotate 5 thorugh 7)
8. $m + n = 2l + 2o$ (substitution of equals)
  - $equiv 2(l + o)$ (algebra)
9. $exists k (m + n = 2k)$ (existential generalizaiton of 8. using the examples l + o)
10. $m + n$ is even (definition of even)

*Conclusion:*
Thus if m is even and n is even, then m + n is even.

Check that $m$ and $n$ really were arbitrary, thus the implied quantification applies.

== Anatomy of a proof
- Number every single statement
- Justify every statement
- State a conclusion

#pagebreak()

= Proof by contraposition
Sometimes it is easier to prove $not q -> not p$ then to prove $p -> q$

Since these are equivalent do the implication that is easier.

== Proposition
If m and n are integers and mn is even, then m is even or n is even. (This is a special case of Euclid's Lemma (see chapter 4))

=== Claim
We write the claim as an implication:
1. $ cal(E)(m n) -> cal(E)(m) or cal(E)(n) $

- We use $cal(E)$ to denote "x is even"

Note: the domain is integers

- is difficult to prove.

== The contrapositive of 1. is
$not (cal(E)(m) or cal(E)(n)) -> not (cal(E)(m n))$

this simplifies to:

$ cal(O)(m) and cal(O)(n) -> cal(O)(m n) $
more hypotheses that 1. and a simpler conclusion

=== We now prove 1. directly (Less verbosety)
1. $cal(O)(n)$
2. $exists k (n =2k + 1)$
3. $k = 2l +1$
4. $cal(O)(m)$
5. $exists k (m = 2k + 1)$
6. $m = 2o + 1$
7. $m n = (2l + 1)(2o + 1) = 2(2l o + l + o) + 1$

Since $cal(O)(m) and cal(O)(n) -> cal(O)(m n)$

We know by contraposition, that $cal(E)(m n) -> cal(E)(m) or cal(E)(n)$

#pagebreak()

= Proof by contradiction
To prove p, we can instead show that $not p -> F$ 

#underline()[Definition] A real number $r$, is #underline()[rational] so that $ r = p/q$, (Note: $q != 0$)

== Claim
$ exists r (r "is rational") $

We'll prove the claim by giving an example,

=== Lemma
The square root of 2 is not rational.

Literally, the claim is saying two appropriate numbers, p and q, do not exist. 

The negation of the *Lemma* is much more concrete.

==== Proof of Lemma
Assume (for contradiciton (now be careful, we hope something goes wrong, we will blame it on the assumption.)) that $sqrt(2)$ is rational

Thus $sqrt(2) = p/q$ for some integers, $p$ and $q$ not both even.

Thus $sqrt(2) = p/q$ so $2 = p^2/q^2$ \ and \ $2q^2 = p^2 $

$2q^2$ this is even

$p^2$ this is a product

Thus by our previous example, (p is even) or (p is even) #line()
$therefore "p is even"$

so $p = 2l$ for some $l$ \
and thus

$2q^2 = (2l)^2$ or \
$2q^2 = 4l^2$ or \
$q^2 = 2l^2$ (this is even)

($q$ is a product)

Thus (q is even) or (q is even) #line()
so q is even.

This contradicts p and q are not both even (our #underline()[something] went wrong) \
$therefore$ the assunption is false \ and \ $not(sqrt(2) "is rational")$ is true.

=== Fact
Any rational number can be written in an equivalent form so it's numerator and denominator are not both even






