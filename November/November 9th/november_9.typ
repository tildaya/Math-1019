= Theorem 4 (Informally)

To solve a recurrence

$a_n = c_1 a_(n-1) + c_2a_(n-2) + ... + c_k a_(n - k)$

Consider the characteristic polynomial (or equation)

$x^n - c_1 x^(n-1) - c_2 x^(n-2) - ... - c_k$

If $r_i$ is a root with multiplicity of $m_i$

i.e $(x - r_i)$ is a factor,

then

$r_i^n$, $n r_n^n$, $n^2r_n^n$, $... n^(m_i - 1) r_i^n$

are all solutions to the recurrence,

The general solution is a linear combination of all such special solutions,

Solve for coefficients to match initial conditions.

*Example*

If the characteristic polynomial is 

$(x-7)^5(x+3)^3(x+sqrt(17) - 3)(x-sqrt(17) - 3)$

Then our special solutions are:

$7^n, n 7^n, n^2 7^n, n^3 7^n, n^4 7^n, (-3)^n, n(-3)^n, n^2(-3)^n, (-sqrt(17) + 3)^n$ and $(sqrt(17) + 3)^n$

*A generic solution is thus*

$c_n = (alpha_(0, 0) + alpha_(0, 1)n + a_(0, 2)n^2 + alpha_(0, 3)n^3 + alpha_(0, 4)n^4)7^n + 
\ alpha_(1, 0) alpha_(1, 1)n + alpha_(1, 2)n^2)(-3)^n +
\ beta(-sqrt(17) + 3)^n + gamma(sqrt(17) + 3)^n$

There are 10 unknowns, and the recurrence is defined by 10 initial conditions

*Note*

The link between polynomials and recurrences works in both directions.

Suppose we want to compute $(sqrt(17) - 3)^80 = a + b sqrt(17)$ for some $a$ and $b$

We can use recurrences to compute this using exact integer arithmetic

\

Let $d_n = (sqrt(17) - 3)^n$

Since this is of the form 

$d_n = alpha(sqrt(17) - 3)^n + beta(sqrt(17) - 3)^n$

$alpha = 1, beta = 0$

It is a solution to a recurrence with characteristic equation

$(x- sqrt(17) +3)(x + sqrt(17) + 3)) = x^2 + 6x - 8$

so

$d_n = -6d_(n-1) + 8d_(n-2)$

Now

$d_0 = 1, \ d_1 = sqrt(17) - 3, \ 
d_2 = -6(sqrt(17) - 3) + 8(1) = -6sqrt(17) + 26 \
d_3 = -6(-6sqrt(17) + 26) + 8(sqrt(17) - 3) = 44sqrt(17) - 180$


\

How is this connected to summation formulas?

*Example*

Suppose we want to compute 

$a_n = sum_(k=1)^n k 2^k$

*Example*

$a_4 = sum_(k=1)^4 = k 2^k 

\ = 1 * 2^1 + 2 * 2^2 + 3 * 2^3 + 4 * 2^4
\ = 2 + 8 + 24 + 64 
\ = 98$

*Note*

$a_n - a_(n-1) = sum_(k=1)^n k 2^k - sum_(k=1)^(n-1) = k 2^k 
\ = n 2^n + (sum_(k = 1)^(n-1) k 2^n) - (sum_(k=1)^(n-1) k 2^k) \
= n 2^n$

So

$a_n = a_(n-1) + n 2^n$ This is a recurrence, but it isnt homogenous

$a_n = a_(n-1)$ the recurrence part

$n 2^n$ this is not zero

Let $b_n = a_n - a_(n-1)$

so $b_n = n 2^n$

thus $b_n - 2b_(n-1) = n 2^n - 2(n-1)2^(n-1) \
= 2^n$

$b_n$ also satisfies a recurrence , no homogenous

Let $c_n = b_n - 2b_(n-1)$

$c_n - 2c_(n-1) = 2^n - 2(2^(n-1)) = 0$

These new $c_i$'s do satisfy a recurrence, By substituting, we actually get a recurrence for $a$

$c_n - 2c_(n-1) = 0$

so

$b_n - 2b_(n-1)-2(b_(n-1) - 2b_(n-2)) = 0$


$b_n - 4b_(n-1) + 4b_(n-2) = 0$

But $b_n$ is just $a_n - a_(n-1)$

so 

$(a_n - a_(n-1)) - 4(a_(n-1) - a_(n-2)) + 4(a_(n-2) - a_(a-3)) = 0$

$a_n - 5a_(n-1) + 8a_(n-2) - 4a_(n-3) = 0$

$x^3 - 5x^2 + 8x - 4$ or $(x-1)(x-2)^2$

It must be

$a_n = alpha l ^n + beta 2^n + gamma n 2^n$ for some $alpha, beta, gamma$

since

$a_1 = 2, a_2 = 10, a_3 = 34$

we have

$2 = alpha + 2beta + 2gamma$ \
$10 = alpha + 4beta + 8gamma$ \
$34 = alpha + 8beta + 24gamma$

3 equations in 3 unknowns

\

*Take away*

Non homogenous recurrences can be transformed (sometimes) into homogenous ones.

In general to solve 

$a_n = c_1a_(n-1) + c_2a_(n-2) + ... c_k a_(n-k) + F(n)$

We find 

$a_n^(h)$ a homogenous solutions, (Ignore the $F(n)$)

and

$a_n^p $ a particular solution

and glue them together. $(dagger)$

\

*Theorem 5*

The solution to $dagger$ is of the form 

$a_n = a_n^h + a_n^p$ 

- $a_n^p$ There are parameters set to match $F(n)$
- $a_n^h$ Parameters solved to match initial conditions


\

*Theorem 6*

If $F(n) = (b_t n^t + ... b_1 n + b_0)s^n$

then there is a particular solution of the form

$n^m (p_1 n^t + ... p_1 n + p_0) s^n$

where $m$ is the multiplicity (possibly 0) of $s$ as a root of the characteristic polynomial