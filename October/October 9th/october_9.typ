= Recap

The n'th term of a sequence ${a_n}$ is an : \
- Arithmetic sequence
  - $a_n = a + d n $

- Geomteric Sequence
  - $a_n = a r^n$

= Recursive Definitions
Another way to build a sequence is with a rule that lets us compute one new term at a time,

*Example*: \
If $a_0 = 1$ and $a_(n+1) = a_0 + a_1 + a_2 + ... + a_n$ when $n >= 0$

We get:
$ a_1 = a_0 = 1 $
$ a_2 = a_0 + a_1 = 1 + 1 = 2 $
$ a_3 = a_0 + a_1 + a_2 = 1 + 1 + 2 = 4 $

etc.

*Example 2*:\
If $f_0 = 0$, $f_1 = 1$ and $f_(n+2) = f_n + f_(n+1)$ when $n >= 0$

We get:

#table(
  columns: 8,
  align: center,
  table.header(
    $f_0$, $f_1$, $f_2$, $f_3$, $f_4$, $f_5$, $f_6$, $f_7$,
  ),
  [0], [1], [1], [2], [3], [5], [8], [13],
) 

This is called the #underline()[Fibonacci] sequence


We'll see (in chapter 8)

How to "solve" this recurrence  to show

$f_n = (1/sqrt(5)) ((1+sqrt(5)) / 2)^n - (1 / sqrt(5))((1 - sqrt(5)) / 2)^n$

or

$f_n = floor( (1/sqrt(5) )((1 + sqrt(5)) / 2)^n + 1/2 ) $ 

#pagebreak()

= Summations
Its often useful to compute with expressions like: \
$ a_3 + a_4 + a_5 + a_6 + a_7$, (add consecutive numbers from some sequence)

If this is the sequence from Reading 3, we would have:
$ 1/2 + 3 + 1/3 + 3/2 + 2/3 = 6 $

We can represent expressions like this in summation notation, \
Our last sum becomes:

$ sum_(i=3)^7 a_i $

- 7 is the end index
- i = 3 is the starting index
- i is the dummy variable
- a is the name of sequence

Pseudo code:\
`S = O % initiate sum

for i from 3 to 7 do
  S = S + a_i

next i
return S`

If the start index is bigger than the end index, nothing gets added, and the result is 0.

If there is a nice formula for $a_i$
then there might be a nice formula for the sum:
$ sum_(i =0)^k a_i $

Not so worried about the bottom starting index.

*Example*:\
$ sum_(i=0)^k i = 0 + 1 + 2 + 3 + ... + k $

In this case, let
$ S = 0 + 1 + 2 + 3 + ... + k $ so
$ S = k + (k - 1) + ... + 0 $ thus
$ 2S = k + k + ... + k = k(k+1) $ hence
$ S = k(k+1)/2 $

*Example 2*: \
$ T = sum_(k=0)^n r^k = 1 + r + r^2 + ... + r^k $ so
$ r T = r + r^2 + ... + r^k + r^(k+1) $ Subtracting
$ T - r T =1 + (r-r)+(r^2 - r^2) + ... + (r^k - r^k) - r^(k+1) $ so
$ (1 - r)T = 1 - r^(k+1) $ or
$ T = (1 - r^(k+1)) / (1 - r) $

*Note*:\
If $r = 1$, them sum is just $k + 1$

== More formulae
$ sum_(k = 1)^n k^2 = (n(n+1)(2n+1))/6 $
$ sum_(k = 1)^n k^3 = ( (n(n+!)) / 2)^2 $

In chapter 5, we'll see how to verify these formula, \
in chapter 8 we'll learn how to find them

== Why we dont worry about the bottom index
If we want, for example:
$ sum_(k = 9)^15 (3k^3 - 7k^2) $

=== Trick 1
$ a_9 + a_10 + a_11 + ... + a_15 = (a_1 + a_2 + ... + a_15) - (a_1 + a_2 + ... + a_8) $

$ sum_(k=9)^15 (3k^3 - 7k^2) = 3sum_(k=9)^15 k^3 - 7sum_(k=9)^15 k^2 $
$ 3sum_(k = 1)^15 - 3 sum_(k = 1)^8 - 7sum_(k = 1)^15 + 7sum_(k = 1)^8$

$ 3( (15 * 16) / 2)^3 - 3((8 * 9) / 2) - 7( (15 * 16 * 31) / 6) + 7 ( (8 * 9 * 17) / 6) $

#pagebreak()

= $section 2.5$ Cardinalities of (infinite) Sets

What can we say if two finite sets, say $S$ and $T$ have the same cardinality

If the size of $|S| = |T|$ then, there is some $k$ so $|S| = k$ and $|T| = k$

This means, by rules of counting, that there is a function
$ f : S -> {1, 2, 3, 4, 5} $
such that $f$ is a bijection

$f$ is an injection since we aren't allowed to say any number twice.

and $f$ is a surjection since we aren't allowed to skip any numbers.

But also, there must be a bijection from $T$ to the ${1, 2, 3, 4, 5}$

i.e $g : T -> {1, 2, 3, 4, 5}$

This means $g^(-1) compose f$ is a bijection from $S "to" T$

For infinite sets, this is the definition of "having the same cardinality"

*Definition*:\
Two sets $S$ and $T$ (possibly infinite) are said to have the same cardinality iff it is possible to find a bijection $f : S -> T$, 

We write:
$ |S| = |T| $

Similarly

$|S| <= |T|$ iff it is possible to find an injection $g : S -> T$

This notation is justified because $=$ and $<=$ behave as me might hope.

*Theorems*:\

1. If $|S| = |T|$ and $|T| = |R|$, then $|S| = |R|$

This works because $f : S -> T$ is a bijection \ and
$g : T -> R$ is a bijection, \
then $g compose f : S -> R$ is a bijection

2. If $|S| <= |T|$ and $|T| <= |R|$, then $S| <= |R|$ (easy)

3. If $|S| <= |T|$ and $|T| <= |S|$, then $|S| = |T|$ (very hard) (Schroder-Bornstein)

Using this definition we find: \
$|NN| = |ZZ^+|$

but also : \

$|NN| = |ZZ|$

Surprise

$|NN times NN| = |NN|$