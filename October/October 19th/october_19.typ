= Friday Lecture
We cover $section 3.2$
\ See reading 3 for description

= Recap

We can compare cardinalities using properties of function.

$|A| = |B|$ iff it is possible to find a bijection from $A$ to $B$

$|A| <= |B|$ iff it is possible to find an injection from $A$ to $B$

This is justified by the fact 
\ $<=$ and $=$ behave as we expect

i.e \
If $|A| <= |B|$ and $|B| <= |C|$ then $|A| <= |C|$

*Why*
If $|A| <= |B|$, then there is an injection $f : A ->  B$

If $|B| <= |C|$, then there is an injection $g: B -> C$

*Claim*

$g compose f$ is an injection

Suppose
$g compose f(x) = (g compose f)(y)$

We need to show $x = y$

Call $f(x)$ by the name $X$ and $f(y)$ by the name $Y$

Since $g compose f(x) = g compose f(y)$ We have

$g(X) = g(f(x)) = g(f(x)) = g(Y)$

thus $X = Y$ since $g$ is an injection

But that means $f(x) = f(y)$

So $x = y$ since $f$ is an injection

*Easy*

1. $|A| <= |B|$ and $|B| <= |C|$ implies $|A| <= |C|$
2. $|A| = |B|$ and $|B| = |C|$ implies $|A| = |C|$
3. $|A| <= |B|$ and $|B| = |C|$, then $|A| <= |C|$
etc.

*Hard* (Called: Shroder-Bernstein)

If $|A| <= |B|$ and $|B| <= |A|$, then $|A| = |B|$


*Example*

$|NN| <= |ZZ|$

since $f : NN -> ZZ$ 

given by $f(x) = x$ is an injection

*Also*
$|Z| <= |NN|$

Since
$g : ZZ -> NN$

given by $g(x) = 4x^2 + (-1)^x$ is an injection

There is no obvious way to combine $f "and" g$ to form a bijection, but the theorem says it is possible.


*Definition*

If $|A| = |NN|$ we say \
$A$ is countably infinite

We may write $ |A| = aleph $ (aleph-naught or the smallest possible infinity)

*Note*

A set is countably infinite iff, its elements can be listed as a sequence.

If $f : A -> NN$ is a bijection, we can list $f^(-1)(o), f^(-1)(1), f^(-1)(2) ... $

Conversely, if $a_0, a_1, a_2, ...$

is a omplete list of elements of $A$, then $f : NN -> A$

given by $f(n) = a_n$

is a bijection.

*In fact* 

A list permiting duplicates is fine, since we can erase the duplicates before applying numbers.

*Briefly, we saw*

$|NN| = |ZZ^+|$

$|NN| = |ZZ|$

$|NN| = |NN times NN|$

#line()

Our listing of $NN$ gurantess we can list $QQ$ (There is a whole thing he drew on the board, i cant be bothered trying to type it down)

*Since*

$|ZZ| = |NN| = |QQ| = |NN times NN| $ etc

Q: Is it possible all infinite sets are the same size? \
A: No!

Cantor showed that no matter what set $S$ we start with, \
$|S| <= |cal(P)(S)|$

but

$|S| != |cal(P)(S)|$

this is called a *diagonilization arguement*

*Cool fact*

$|RR| = |cal(P)(NN)|$

But it is impossible for $f : NN -> RR$ to be a bijection.

*Why its impossible*

$f$ cannot be a surjection

i.e there is at least one element of $RR$ not in the range of $f$

Given any function, $f : NN -> RR$

We can build a number $a_f in [0, 1]$ not in the range of $f$.

Write $a_f$ as $0.d_0, d_2, d_3 ... d_n$

i.e $d_i$ is the first digit after the decimal

Pick $d_i$ by looking at $f(i)$ and getting the $i + 1$st digit as wrong as possible.

If the $i + 1$st digit of $f(i)$ is $x$ then:

$d_i = x + 5 $ if $x <= 4$

$d_i = x - 5 $ if $x >= 5$

*Example*

Suppose $f$ lists:

$f(0) = 452.7653480....$

$f(1) = -78.2379641....$

$f(2) = 0.590148....$

$f(3) = 231.0004375....$

Our number $a_f $ is $0.2858....$

Our number is not $f(i)$ for any $i$ because its $i + 1$st decimal is wrong.
