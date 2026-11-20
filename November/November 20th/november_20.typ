If $R$ is an equivalence relation on a set $A$ and

$x R y$

we can say:

$x$ is equivalent to $y$

often we use $tilde$ (a squandash) symbol to name an equivalence relation

\

*Notation*

$[ a ]_R$ when $R$ is an equivalence relation on $A$ and $a in A$ is the equivalence class of $a$

Again, when $R$ is the only relation in the discussion.

we might omit it. resulting in $[a]$

Both $[a]_R$ and $[a]$ are ${x in A | (a, x) in R}$

\

*Example*

Suppose $A = {a, b, c, d, e, f}$ with $R$ having the following picture.

$a. -> a, c, e$

$c. -> c, e, a$

$e. -> e, a, c$

\


$b. -> b, f$

$f. -> f, b$

\

$d. -> d$

\

This $R$ is transitive.

*Note*

$[a]_R = {a, c, e}$

$[c]_R = {a, c, e}$


$[b]_R = {b, f}$

$[d]_R = {d}$

\

IT is not an accident that $[a] = [c]$

and $[a] inter [b] = emptyset$

in general any two equivalence classes are either equal, or disjoint.

$A = [a] union [b] union [d]$

\

*Theorem*

TFAE (The following are equivalent)

1. $a R B$
2. $[a]_R [b]_R$
3. $[a]_R inter [b]_R != emptyset$

i.e for any choice of a and b, either
- All 3 statements are true
- All 3 statments are false

*Example*
$d R d$

$[d] = [d]$

$[d] inter [d] != emptyset$

are all true.

\

but 
$a cancel(R) d$

$[a] != [d]$

$[a] inter [d] = emptyset$

All 3 are true

*Note*

TO show the equivalence we nominally need, to show 6 things

$(1) -> (2) \
(2) -> (1) \
(1) -> (3) \
(3) -> (1) \
(2) -> (3) \
(3) -> (2)$

\

But we cn get away with directly showing,

$(1) -> (2), (2) -> (3), "and" (3) -> 1$

The other claims then follow via hypothetical syllogism.

Also:

$(1) -> (2), (2) -> (1), (2) -> (3), (3) -> (2)$ would work.

\

#pagebreak()

= *Proof* (in 3 parts)

== Part 1:

$(1) -> (2)$

If $a R b$ consider $x in [a]$ 

since $x in [a]$ 

$a R x$ by symmetry $b R a$ 

and transitivity $b R x$ 

thus $x in [b]$,

thus $[a] subset.eq [b]$

\

Similarly if 

$y in [b]$ then $b R y$

but $a R b$ and $b R y$


means $a R y$ by transitivity

so $y in [a]$,

thus $[b] subset.eq [a]$


by $[a] subset.eq [b]$ and $[a] = [b]$ conclude (2)

So $(1) -> (2)$

== Part 2

$(2) -> (3)$

Assume $[a] = [b]$

By reflexivity, $a R a$ so $a in [a]$


but the class of $[a] = [b]$ so $a in [b]$ as well.

Thus $a in [a] inter [b]$ and $[a] inter [b] != emptyset$

== Part 3

$(3) -> (1)$


If the $[a] inter [b] != emptyset$

then $exists x in [a] inter [b]$

thus $a R x$ and $b R x$,


by symmetry $x R b$

so by transitivity $a R b$

\

The main consequence,

if we pick 2 equivalence classes $[x], [y]$, then either,

$[x] = [y]$ or

$[x] inter [y] = emptyset$

(2) is true, or (3) is false.

\

*Set Partition*

Definition,

If $S$ is a set, then a collection of sets,

${A_i}_(i in I)$ (Think $A_1, A_2, ..., A_k ...$ but the list might be finite or uncountable etc.) is called a partition. (Sometimes set partition is the discussion also involves integer partitions.)

If 

1. $A_i != emptyset$ for any $i$
2. $A_i inter A_j, = emptyset$ when $i != j$
3. $union.big_(i in I) A_i = S$

In our example we could use

$A_1 = {a, c, e} = [a]$

$A_2 = {b, f} = [b]$

$A_3 = {d} = [d]$

Check $A_1 != emptyset, A_2 != emptyset, A_3 != emptyset$

$A_1 inter A_2 = emptyset, A_1 inter A_3 = emptyset, A_2 inter A_3 = emptyset$

$A_1 union A_2 union A_3 = {a ,b , c, d, e, f}$

\

*Theorem 2* (Fundamental Theorem of Equivalence classes)

The equivalence classes of $a n$ equivalence relation on a set $S$ form a partition of $S$,

Moreover if ${A_i}_(i in I)$ is any partition of a set $T$, then the $A_i$ are equivalence classes of some relation.

\

*Example*

Let $B = {1, 2, 3, 4, 5, 6}$

then

${{1, 3}, {2, 4, 6}, {5}}$ is a partition.

\

We can build $R$ by 

call the sets,

$A_1 = {1, 3}$

$A_2 = {2, 4, 6}$

$A_3 = {5}$

to see if $x R y$ find $i$ such that $x in A_i$

find $j$ such that $y in A_j$

and check if $i = j$

