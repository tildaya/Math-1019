= Test 2
Up to the reading for chapter 9

Reading 6: Next Wednesday 

(Mostly Introspective)

(Will include Chapter 10 reading)

Assignment 5:

Due next Sunday.

#pagebreak()

= Chapter 8 Recurrence Equations

*Warmup by example*

Suppose

$a_n = a_(n-1) + 6a_(n-2)$ when $n >= 2$ (This is the recurrence equation)

$a_0 = 1$ and $a_1 = 5$ (These are initial values)

Goal:

To find a forumla for directly computing $a_n$

This sequence starts

$a_0 = 1 \
a_1 = 5
a_2 = a_1 + 6a_0 = 5 + 6 =  11 \
a_3 = a_2 + 6a_1 = 41 \
a_4 = a_3 + 6a_2 = 107\
"etc"$

*Strategy:*

- Ignore the initial conditions (Until the end)
- Find all of the solutions to the recurrence (With parameters)
- Solve for the paramters to match the initial conditions
- To find all solutions:
  - Look for really nice solutions
  - Include nice solutions together

*Guess*

$b_n = 3^n$ might be nice

$b_(n-1) + 6b_(n-2)$ is then

$3^(n-1) + 6 * 3^(n-2) \
= 3 * 3^(n-2) + 6 * 3^(n- 2) \
= 9 * 3^(n-2) = 3^n = b_n$

so for all $n >= 2$

$b_n = b_(n-1) + 6b_(n-2)$

*Rewrite reecurrence as*

$a_n - a_(n-1) - 6a_(n-2) = 0$

Could there be another nice solution?

so:

$c_n = y^n$ we just saw directly, that $y = 3$ worked.

If there is, then it works when $n = 2$, so $y^2 - y - 6 = 0$

We can solve quadratic equations:

1. By inspection
2. By quadratic forumla

$y^2 - y - 6 = (y-3)(y+2)$ so

y = 3 
y = -2

At this point

$b_n = 3^n$ and $c_n = (-2)^n$

are both "special" solutions to the recurrence.

But so are their linear combinations,

If $d_n = alpha b_n + beta c_n$ 

then

$= alpha(b_(n-1) + 6b_(n-2)) + beta(c_(n-1) + 6c_(n-2))$

$= alpha b_(n-1) + beta c_(n-2) + 6(alpha b_(n-2) + beta c_(n-2))$

$d_(n-1) + 6d_(n-2)$

so $d_n$ also satisfies the recurrence

$d_n = alpha 3^n + beta(-2)^n$ describes all possible solutions (Weca can solve for $alpha & beta$ so $d_0 = a_0$ and $d_1 = a_1$ \
\ 
and then the structural induction says $a$ and $d$ continue to match)

\

In this case we want

$1 = d_0 = alpha * 3^0 + b(-2)^0 = alpha + beta \
5 = d_1 = 3alpha - 2beta$

$alpha + beta = 1 \
3alpha -2beta = 5$

Two equations in two unknowns.

Subbing

$alpha = 1 - b$ in equation two gives

$3(1 - b) - 2b = 5 \

-5beta = 2 \

beta = -2/5$

thus

$alpha = 1 - (-2/5) = 7/5$

and our solution is:

$a_n = 7/5 3^n - 2/5(-2)^n$

\

*In general*

To solve for

$a_n = alpha_1a_(n-1) + alpha_2 a_(n-2) + alpha_3a_(n-3) + ... + alpha_k a_(n - k)$

subject to initial conditions.

Try to find special solutions,

$b_n = y^n$

which must be solutions to the polynomial 

$x^k - alpha_1 x^(k-1) - alpha_2 x^(k-2) - ... - alpha_k = 0$ (This is a characteristic polynomial.)

If the Characteristic Polynomial has distinct roots and 

Characteristic Polynomial $ = (x-r_1)(x-r_2) ... (x-r_k)$

then a generic soltuion ignoring initial conditions is

$a_n = c_1r_1^n + c_2r_2^n + ... c_k r_k^n$


We can solve for the $k$ unknowns to match any arbitrary $k$ initial conditions.

If there are repeated roots, we don't get enough parameters, and need different solutions.

\

*Example*

Solve
$b_n = 5b_(n-1) - 6b_(n-2)$

subject to $b_0 = 7$ and $b_1 = 19$

$r^2 - 5r + 6 = 0$

$(r-3)(r-2)$

$r_1 = 2$
\
$r_2 = 3$

$7 = A + B$ = $ A = 7 - B$ \
$19 = A 2 + B 3$

$19 = 2(7 - B) + 3B$

$19 = 14 - 2B + 3B$

$5 = B$

$A = 2$

$b_n = 2 * 2^n + 5 * 3^n$

\

*What could go wrong*

- Repeated Roots

Try solving

$c_n = 10c_(n-1) - 25c_(n-2)$

$c_0 = 7$ and $c_1 = 4$
$r^2 - 10r + 25$

$(r-5)^2 = 0$

$r_0 = 5$

Fortunately $d_n = n 5^n$

$10d_(n-1) - 25d_(n-2) \
= 10(n-1)5^(n-1) - 25(n-2)5^(n-2) \
= (2n-2)5^n - (n-2)5^n \
= n 5^n = d_n$

In this case, a generic soltuion (ignoring initial conditions) is

$c_n = alpha 5^n + beta n 5^n$

now solving

$c_0 = alpha = 7$

$c_1 = 5alpha + 5beta = 4$

$35 + 5beta = 4$ or $5beta - 31$ or $beta = -31 / 5$

The full solution in this case, is

$c_n = 7 * 5^n - 31/5 n 5^n$