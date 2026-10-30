*The skills of induction *
- Recognizing that induction might apply
- Formulating an appropriate predicate
- Deriving base case and inductive step
- Modifying our predicate if neccesary

= Recall

From $section 2.4$, we were told:

($forall n >= 1$, is implied when there is a free variable such as $n$) $sum_(k = 1)^n k^2 = (n(n+1)(2n+1))/6$

- Induction will not help us learn where the formula comes from
- It will help us verify if the formula is correct

*Syntacting matching suggets:*

let $P(n)$ be "$sum_(k = 1)^n k^2 = (n(n+1)(2n+1))/ 6$"

No guarantee yet, that this predicate will "play nice" with induction

Base Step:

$P(1)$ is the statement 

"$sum_(k = 1)^1 k^2 = (1(1 + 1)(2(1) + 1))/ 6$" 

$1^2 = (1 times 2 times 3) / 6$

or $1 = 1$

$P(1)$ is true.

== Focus on the inductive step

We want to show 

$P(k) -> P(k + 1)$

For generic $k$

We can treat $P(k)$ as a hypothesis 

and then try to prove 

$P(k + 1)$

$P(k)$ is the claim:

$sum_(i = 1)^k i^2 = (k(k + 1)(2k + 1)) / 6$

Strategically all the $k$'s have been renamed to $i$'s

We want to show $P(k + 1)$ i.e

$sum_(i = 1)^(k + 1) i^2 = ((k+1)(k+2)(k+3) )/ 6$

Left Hand Side = $sum_(i = 1)^(k+1) i^2 = (sum_(i = 1)^k i^2) + (k+ 1)^2$

$= (k(k+1)(2k+1)) / 6$ + (k + 1)^2

Replacing equal quantities appealing to our assumption.

\

*Algebra Shows:*

$((k+1)(k+2)(k+3)) / 6 = (k(k+1)(2k+1)) / 6 + (k+1)^2$

$= ((k+1)(k+2)(2k+3)) / 6 + "Right Hand Side"$

Since LHS of $P(k+1) = $ RHS of $P(k + 1)$

$P(k + 1)$ must be true, provided $P(k)$ was.

\

We showed  $P(k) -> P(k + 1)$ thus

$forall k >= 1 (P(k) -> P(k + 1))$

*Warning*

THe base case matters. If we tried

$Q(n)$ is $sum_(k = 1)^n k^2 = (n(n+1)(2n+1))/ 6 + 4$

We could still prove $Q(k) -> Q(k + 1)$

But $Q(1)$ wouldve been 

$1^2 = 1 + 4$ which is false.

\

*Recall the Fibonacci sequence*

$f_0 = 0, f_1 = 1$ and $f_(n+2) = f_(n+1) + f_n$ if $n >= 0$

It starts:

$0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144$

$f$ is just a function, so we can ask about its $cal(O)$ behavior

*Claim*

$f_n "is" cal(O)(2^n)$


*First Guess*

Can we use the predicate

$P(n)$ given by $f_n <= 2^n$?


*Rough Work*

We want to conclude $P(k + 1)$

$f_(k+1) <= 2^(k+1)$

*Now*

(This would be true if $f_k <= 2^k$ and $f_(k-1) <= 2^(k-1)$ i.e $P(k) and P(k - 1)$)

$f_(k+1) = f_k + f_(k - 1) <= 2^k + 2^(k + 1)$

$= 1/2 2^(k+1) + 1/4 2^(k+1)$

$= 3/4 2^(k + 1) <= 2^(k+1)$

We sucessfuly showed $P(k) and P(k - 1) -> P(k + 1)$

(Wrong format for induction)

*Clever Fix*

Use an easier induction to prove $f_(k-1) <= f_k | forall k$
then

$f_(k + 1) = f_k + f_(k - 1) <= f_k + f_k = 2 f_k <= 2 * 2^k = 2^k + 1$

Now we have $P(k) -> P(k + 1)$

*Systematic Fix*

Let $Q(k)$ be $P(k) and P(k - 1)$ we've shown

$Q(k) -> P(k +1)$ but also

$Q(k) -> P(k)$ (Simplifcation)

so

$Q(k) -> P(k +1 ) and P(k)$ 

Equivalently $Q(k) -> Q(k + 1)$

In terms of $Q$ our vase case is

$Q(1)$ which is $P(1) and P(0)$

which is

$f_1 <= 2 and f_0 <= 1$

which is true, since $1 <= 2 and 0 <= 1$

*We conclude*

$forall n >= 1 Q(n)$ thus

$forall n >= 1 P(n) and P(n - 1)$

With consequence

$forall n >= 1 P(n)$

*Literally*

$forall n >= 1, f_n <= 2^n$ so

$f_n "is" cal(O)(2^n)$

with $k = 0$ and $C = 1$ as witnesses

\

*Observation*

$f_n "is" Omega((3/2)^n)$

The right predicate, for our conclusion is

$P(n) $ given by $f_n >= (3/2)^n$

*We can show*

$f_(n+1) = f_n + f_(n- 1)$

$>= (3/2)^n + (3/2)^(n-1)$

$= 2/3 (3/2)^(n+1) + 9/4 (3/2)^(n-1)$

$= 10/9 (3/2)^(n+1) >= (3/2)^(n+1)$

Thus we showed $P(n) and P(n - 1) -> P(n + 1)$

\

The related predicate $Q(n)$ given by $Q(n)$ is $P(n) and P(n - 1)$

has the property 

$Q(k) -> Q(k + 1)$


*BUT*

$f_0 = 0 < (3/2)^0$ so $P(0)$ is false

and $Q(1)$ is false

$n, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 , 11, 12$

#line()

$f_n, 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55 ,89, 144$

#line()

$(3/2)^n$

We find $(3/2)^10 > 55$

$(3/2)^11 < 89$

$(3/2)^12 < 144$

$Q(4)$ is true, but nothing smaller

\

Since 

$Q(11)$

$forall k >= 1 (Q(k) -> Q(k + 1))$

We conclude 

$forall n>= 11 Q(n)$

thus

$forall n>= 11 P(n)$

so $f_n >= (3/2)^n$ is $n >= 11$

we get $f_n "is" Omega((3/2)^n)$ with witnesses $k = 11$ and $C = 1$

\

If we want to show $f_n "is" cal(O)(C^n)$ 

we can.

The inductive step works any times

$C > (1 + sqrt(5)) / 2$

The base case will take trial and error.