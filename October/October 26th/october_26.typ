= Growth of Functions Recap

$f(x) "is" cal(O)(g(x))$ if $exists k$ and $exists C$ ($k$ and $c$ are called witnesses), such that \ $|f(x)| <= C times |g(x)|$ whenever $x >= k$


*Example*

Suppose $f(x)$ is $5000x^7$ and \
$g(x)$ is $0.02x^8$

We can show $f(x)$ is $cal(O)(g(x))$ but $g(x)$ is not $cal(O)(f(x))$

Takeaway, if $f$ and $g$ represent runtime, always pick $f$ in a race over a large problem.

*Rough Working*: \
What condition do we need on $x$ and $C$ to conclude \

$|5000x^7| <= C|0.02x^8|$

1. Divide both sides by $x^7$ (Wont swap inequality if $x^7 > 0$)

$5000 <= C 0.02x$
\ or \
$(250 000) / C <= x$ (We can pick any posotive $C$ as a witness and then pick $k = (250 000) / c$)

Note: Bigger $C$, smaller $k$

If $C = 250 000$ $k = 1$ works

If $C = 50 000$, we need $k = 5$

\ 

So $f(x)$ is $cal(O)(g(x))$

Why cant we have $g(x)$ being $cal(O)(f(x))$?



What condition do we need on $x$ to make sure

$|0.02x^8| <= C |5000x^7|$ (This is always eventually false)

equally we have $x <= 250 000 C$

*Example* \

If $f(x)$ is $x^3$  and

$g(x)$ is $(1.5 + sin(x))x^3$


Sometimes, $f(x) > g(x)$, \
Sometimes $g(x) > f(x)$

But always \
$0.5 <= (1.5 sin(x)) <= 2.5$ so 

$|f(x)| <= 2|g(x)|$ and

$|g(x)| <= 5/2 |f(x)|$


$|g(x)| = (1.5 + sin(x))f(x) <= 2.5 f(x)$

$|g(x)| = (1.5 + sin x)f(x) >= 0.5 f(x)$

So $f(x)$ is $cal(O)(f(x))$ with witnesses $C = 5/2, k=1$

== Theorem 1
If $f(x) = a_n x^(n - 1) + a_1 x + a_0$ 

then

$f(x) "is" cal(O)(x^n)$ with witnesses $k = 1 "and" C = |a_n| + |a_(n-1)| + ... + |a_1| + |a_0|$

We can get a smaller $C$ with a bigger $k$

A convinient list of functions comes after example 7 in the text.

$1, log n, n, n log n, n^2, 2^n, n!$ (These are all non decreasing functions) (Growing to infinity except $1$)

Each of these functions is $cal(O)$ of every function to its right. (Also not $cal(O)$ of any function to its left)

*Example*

$n log n "is" cal(O)(n^2)$

$n "is" cal(O)(2^n)$

$n log n "is not" cal(O)(n)$

The math is calculus we could show 

$lim_(n-> infinity) f(x)/g(x) = 0$ whenever $f$ is left of $g$

Calculus then tells us an appropriate $k$ exists, but not how to find it.

*Note* \
This limit interpretation did not apply to $x^3$ vs $(1.5 + sin x)x^3$


$lim_(n -> infinity) n^3 / ((1.5 + sin n) n^3)$ does not exist.

#pagebreak()

== Some Gaps
Starting point:
$1, log n, n, n log n, n^2, 2^n, n!$


If $d > c > 1$ then \

$n^c$ is $cal(O)(n^d)$ but not the reverse

$C = 1 "and" d = 2$ are on the list.

If $b > 1$ and $c & d$ are positive, then \

$(log_b n)^c$ is $cal(O)(n^d)$

*Example* \ 

$(log_10 n)^5000$ is $cal(O)(n^0.0000000125)$

- 5000 is $C$

\

$n^d "is" cal(O)(b^n)$ (as long as $b > 1$ and $d$ is positive)

*Example*

$2650x^782 "is" cal(O)(1.003^x)$

#pagebreak()

= Combining Functions

*Theorem*

If $f_1(x) "is" cal(O)(g_1(x))$ and 

$f_2(x) "is" cal(O)(g_2(x))$ then

$(f_1 + f_2)(x) "is" cal(O)(max(|g_1(x)|, |g_2(x)|))$

*Proof Idea* \
Both hypothesis have witnesses,

$k_1, C_1, k_2, C_2$

The witness for a conclusion is 

$k = max(k_1, k_2))$

$C = C_1 + C_2$

If $x > k$ then $x > k_1 "and" x > k_2$ so

$|(f_1 + f_2)(x)| <= |f_1(x)| + |f_2(x)| \ 
<= C_1 |g_1(x)| + C_2|g_2(x)| \
<= C_1 max(|g_1(x), |g_2(x)|) + C_2 max(|g_1(x)|, |g_2(x)|) \
= (C_1 + C_2)|max(|g_1(x)|, |g_2(x)|)|$

*Application*

A two-step algorithm's performance is summarized by the worst behaved stop, 

#underline()[Coronary] If $f_1(x) "is" cal(O)(g(x))$ and $f_2(x) "is" cal(O)(g(x))$ then

$(f_1 + f_2)(x) "is" cal(O)(g(x))$

*Combining Functions* \

Theorem:

If $f_1(x)$ is $cal(O)(g_1(x))$ and

$f_2(x) $ is $cal(O)(g_2(x))$ then

$(f_1 f_2)(x) $ is $cal(O)(g_1(x) g_2(x))$

#pagebreak()

= Complementary Notation

*Definition*

$f(x) "is" Omega(g(x))$ if $exists k, exists C "so that" x > k$ implies

$|f(x)| >= C |g(x)|$ 

compare $f(x) "is" Omega(g(x))$ to $g(x) "is" cal(O)(f(x))$

*Definition* \

If $f(x)$ is $cal(O)(g(x))$ and 

$f(x)$ is $Omega(g(x))$ then,

$f(x)$ is $Theta(g(x))$ (Big Theta)

In this case we say $f(x)$ and $g(x)$ have the same order,

*Example* \

If $f(x) = x^3$ and

$g(x) = (1.5 + sin x)x^3$ then

$f(x) $ is $Theta(g(x))$

When two functions are the same order, the winner is the one on the faster computer.

*Theorem* \

If $f(x) = a_n x^n + a_(n - 1)x^(n-1) + ... + a_1 x + a_0$

and $a_n != 0$

then

$f(x)$ is $Theta(x^n)$