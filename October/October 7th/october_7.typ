= Test 1
Wednesday 21st, covers chapters 1 & 2

= Ways functions might be special

[$ F : A -> B$]

#table(
  columns: (1.2fr, 0.8fr, 2fr),
  inset: 8pt,
  align: left,
  table.header(
    [*Name 1*],
    [*Name 2*],
    [*What makes them special*],
  ),

  [One-to-one function],
  [Injection],
  [Every element of the codomain has at most one pre-image.],

  [Onto function],
  [Surjection],
  [Every element of the codomain has at least one pre-image (the range equals the codomain).],

  [One-to-one correspondence],
  [Bijection],
  [Every element of the codomain has exactly one pre-image. (Both an injection and a surjection)],
)

== In terms of quantifiers (make table)

#table(
  columns: (auto, 1fr, 1fr),
  inset: 8pt,
  align: left,
  table.header(
    [*Property*],
    [*Quantified version*],
    [*Negation*],
  ),

  [Injection],
  [
    $forall x in A forall y in A
      (x != y => f(x) != f(y))$
    \
    Equivalently:
    \
    $forall x in A forall y in A
      (f(x) = f(y) => x = y)$
  ],
  [
    $exists x in A exists y in A
      (x != y and f(x) = f(y))$
  ],

  [Surjection],
  [
    $forall y in B exists x in A (f(x) = y)$
  ],
  [
    $exists y in B forall x in A (f(x) != y)$
  ],

  [Bijection],
  [
    $forall y in B exists! x in A (f(x) = y)$
    \
    Here, $exists!$ means “there exists exactly one.”
  ],
  [
    $exists y in B forall x in A (f(x) != y)$
    \
    *or*
    \
    $exists x in A exists z in A
      (x != z and f(x) = f(z))$
    \
    Some element has no pre-image, or some element
    has more than one pre-image.
  ],
)

== Examples

#table(
  columns: (auto, 1fr),
  inset: 8pt,
  align: left,
  table.header(
    [*Property*],
    [*Example*],
  ),

  [Injection],
  [Assigning IDs to students should be an injection:
   different students receive different IDs.],

  [Surjection],
  [Assigning cleaning responsibilities to volunteer
   teams should be a surjection: every responsibility
   is assigned to at least one team.],
)

== Bijections
They are central to $section 2.5$ to show a particular function #underline()[is not] a bijection, either:

- Show it isnt an injection 

or

- Show it isnt a surjection

#pagebreak()

= Combining Functions
1. Via Arithmetics, \ if we have 2 funcitons (some codomain) $f : A -> B$ and $g : A -> B$ (both f and g have same domain) \ and we can apply arithmetic in the codomain (i.e $B = QQ$ or $B = NN$ or $B == RR$, etc.)
\
$f + g$ and $f g$

Are both functions from $ A "to" B$ defined by:

$ (f + g) = f(x) + g(x) $ \
$ (f g)(x) = f(x) times g(x) $

*Example* \
If 
$f : NN - > RR$ is $f(x) = 3x + 5 $ \
$g : NN -> RR $ is $g(x) = 2x + 12$

then 

$(f+g)(3) = f(3) + g(3)$ = $14 + 18 = 32$ \ 
$(f g)(3) = f(3) times g(3) = 14 * 18 = 252$

2. Via composition

If $f : A -> B$ and $g : B -> C$

then we can use the output of $f$ as the input of $g$

$g compose f : A -> C$ given by $(g compose f)(x) = g(f(x))$

*Note*:

$f "and" g$ from the previous example, cannot be composed, because $RR != NN$

But if $f : NN -> NN$ is $f(x) = 3x + 5$ and \
$g : NN -> NN$ is $g(x) = 2x + 12$ then \
$(g compose f)(2) = g(f(2)) = g(11) = 33$ also \
$(f compose g)(2) = f(g(2)) = f(16) = 53$

*Example*: \
$P = "set of people"$ \
$B = "set of bands"$ \
$C = "costs"$ 

we could have $f : P -> B$ \
$f(x) = x's$ favorite band \
$g : B -> C$ with $g(y) = $ cost of the cheapest ticket to see $y$

$(g compose f)("Eve") = $ The cost of a ticket to see Eve's favorite band

3. If $f : A -> B$ is a bijection

then for every $y in B$ we can talk about $underline("the")$ pre-image of $y$

In this case, we can define $f^(-1) : B -> A$ \
by $f^(-1)(y) = x$ iff $f(x) = y$

*Example* \
If $g : RR^+ -> RR^+$ givem by $g(x) = x^2$ then \
$g^(-1)(y) = sqrt(y)$

i.e 

$sqrt(y)^2 = y$

If we'd use the same rule with different domain or codomain, we might not have an inverse.

*Example*: \
$h : RR -> RR^+$ (given by $h(x) = x^2$)

is not a bijection because $h(-2) = h(2)$ (so we couldnt pick a correct value for $h^(-1)(4)$)

$l : RR^+ -> RR$ (given by $;(x) = x^2$) \ is not a bijection because -1 has no pre-image

*Example*: \
$f {"anger, sadness, fear"} -> {"red, blue, yellow"}$ \
given by \ 
$f("anger" = "red")$
$f("sadness" = "blue")$
$f("fear" = "yellow")$

is a bijection with domain $!=$ codomain, \
in this case $f^(-1)("blue") = "sadness"$

#pagebreak()

= Properties
If $f : A -> B$ is a bijection \ then
$ forall x in A f^(-1)(f(x)) = x $ \ and
$ forall y in B f(f^(-1)(x)) = y $

We'll talk about graphs of functions after reading week. (don't need them until chapter 9)

= $section 2.4$ Sequences and Summations

*Definition*: \
A sequence is a function whose domain is a subset of $ZZ$, (especially $NN$ or $ZZ^+$)

Java arrays make great sequences.

In this case we often use subscript notation so if the sequence is \
${a_n}$ then (we can be explicit on domain with ${a_n} n in NN or {a_n} n in ZZ^+$ etc.) \
$a_n$ is the image of $n$

*Example*: \
cow, dog, cat, turtle, cow, cat, ...

- first instance of "cow" starts at 0, (image 0), then image 1 then 2, etc...

== Sequences are special
because we can  (completely) describe them with a (possible infinite) list of outputs,

== Some nice sequences

*Example*: \
7, 11, 15, 19, 23, 27, ... (called an arithmetic sequence) \
the difference between consecutive terms is constant (in this case its 4)

*Generically* an arithmetic sequence has an $n$'th term of $a + d n$ \
$a$ is the initial value \
$d$ is the common difference \
$n$ is the index (which starts at 0)

in our case: \
$a = 7$
$d = 4$

*Example*: \
1, 2, 4, 8, 16, ...

If each entry is $r times $ the previous we get a #underline()[geometric sequence] \
$ b_n = a r^n $

$a$ = initial value \
$r = $ common ratio \
$n = $ is the index

