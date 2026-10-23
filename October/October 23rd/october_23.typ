= $section 3.2$ Growth of Functions
Big-O and related notation

Q: What problem are solving?

A: How can we compare algorithms?

*Example* \
What is the 'best' way to multiply natural numbers.

i.e $ 136 times 47$

"Best" ways:
- Fastest
- Least Memory
- Least Training
- Least likely to make a mistake
- etc.
Usually, "whats the fastest way" (Fastest, least memory, least training)

*Problem 1 to avoid:* \
For small instances, the fastest solution is pre-calculate and use a look-up table.

*Problem 2* \
At least in timing, how do we make the race fair.

- By hand
- By calculator
vs
- By supercomputer

*To solve problem 1*

Only compare algorithms when they solve "big enough" problems

*For Problem 2*

If the race would switch (winners) by using a faster computer for one team, call it a tie.

#pagebreak()

== Big-O notation

For two functions, $f "and" g$ with domain $ZZ$ or $RR$ (or $NN, QQ$, somewhere where we can head to infinity)

and codomain $RR$ (or some subset) 

We say $f(x) $ is $cal(O)(g(x))$

We read this as: "$f$ of $x$ is big-O of $g$ of $x$"

If there exists witnesses $C > 0$ and $k$ \
$|f(x)| <= C |g(x)|$ whenever $x > k$ (sometimes $x >= k$)

if $f$ and $g$ measure algorithms

$k$ lets us throw away small exmaples,

$C$ lets us run the first algorithm on faster hardware.

*Conceptually* \
The algorithm represented by $f$ is not a #underline()[clear] loser to the one represented by $g$.

If $C$ does not exist, then no amount of hardware speedup can help $C$ for large problems.

*Bad Example of an algorithm for multiplication*
% To compute $m times n$


```
s:= 0

for i from 1 to n do
  s:= s + m

next i
return s
```
This scales really badly.

*Example*

Suppose $f(n)$ is $1^5 + 2^5 + 3^5 + ... + n^5$

Note: $f : NN -> RR$

Observe that 
\ $|f(n)| = |1^5 + 2^5 + 3^5 + ... n^5| 
\ <= |1^5| + |2^5| + |3^5| + ... + |n^5|
\ <= n^5 + n^5 + n^5 + ... n^5 "(as long as" n >= 1) \
= n^6
= 1 * |n^6|$

Thus $f(n)$ is $cal(O)(n^6)$

*Theorem 1* \
If $g(x) = a_n x^n + a_(n-1)x^(n-1) + ... + a_1x^1 + a_0x^0$
\ i.e $g(x)$ is a polynomial of degree at most $n$
\ then $g(x)$ is $cal(O)(x^n)$, even if $a_n = 0$

In this case:

$|g(x)| = |a_n x^n + a_(n-1)x^(n-1) + ... + a_1x^1 + a_0 
\ <= |a_n x^n| + |a_(n-1) x^(n-1)| + ... + |a_1 x^1 + a_0|
\ = x^n (|a_n| + |a_(n-1)| / |x| + |a_(n-2)| / |x^1| + ... + |a_1| / |x^(n-1)| + |a_0| / |x^(n-2)|)$ (factor out the $|x^n|$)

As long as $|x| > 1, |a_n| / |x| <= |a_(n-1)|$ since $a_(n-i)= 0 $ is possible.

$<= |x^n|(|a_n| + |a_(n-1)| + ... + |a_1| + |a_0|)$ (Think $C$)

the $|x^n| "is" h(x)$

So $g(x) "is" cal(O)(x^n)$

with witnesses $k = 1$ and : \
$C = |a_n| + |a_(n-1)| + ... + |a_1| + |a_0|$

The witnesses are not unique, once we have witnesses, $C$ and $k$, we can use any bigger $C$ or any bigger $k$, and sometimes using a bigger $k$ lets us a smaller $C$ and vice-versa.










