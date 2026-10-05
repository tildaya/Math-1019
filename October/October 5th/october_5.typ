Reading 3: Due Wednesday \
Assignment 3: Due OCtober 18 \
Test 1: Wednesday after reading week on Chapters 1 & 2

= $section$ 2.2 Set Operations

$inter$ - intersection

$union$ - union

$without$ - set difference

== Definiton

if $S$ and $T$ are sets $i$

1. $S inter T$ is the #underline()[intersection] of $S$ with $T$ consisting of elements that are in both $S$ and $T$ 
- i.e $x in S and T <-> x in S and x in T$

2. $S union T$ is the #underline()[union] of $S$ or $T$
- i.e $x in S union T <-> x in S or x in T$

3. $S without T$ (sometimes is $S - T$) is the set difference $S without T = {x | x in S and x in.not T}$

4. With respect tp some universal set $u$, $overline(S)$ is $U without S$

== Example
If $A = {1, 2, 3, 4}$ and $B = {2, 4, 6}$ then \
$A inter B = {2, 4}$ \
$A union B = {1, 2, 3, 4, 6}$ \
$A without B = {1, 3}$ but $B without A = {6}$ \
Observe, there is no obvious relation between $A without B$ and $B without A$

Note: 

$|A inter B| + |A without B| + |B without A| = 2 + 2 + 1 = 5 = |A union B|$ \
This works for any finite sets,

If $U = {1, 2, 3, 4, 5, 6, 7, 8}$\ then
$overline(A) = {5, 6, 7, 8}$ and $overline(B) = {1, 3, 5, 7, 8}$

1. $overline(A) inter overline(B) = {5, 7, 8}$

and also

2. $overline(A union B) = {5, 7, 8}$

1. and 2. are specific sets dependen on $U$, try with $U = ZZ$ or $U = {1, 2, 3, 4, 5, 6,}$

The relations

$overline(A inter B) = overline(A) union overline(B)$

and

$overline(A union B) = overline(A) inter overline(B)$

apply for al lsets and all universes (also De Morgan's Law)

== How to see this? (questions)

== Turn it into a logic question (answer)

If $ x in overline(A inter B) "then" x in.not A inter B $

So $ not  (x in A inter B) $

or equivalently $ not (x in A and x in B) $

$ equiv x in.not A or x in.not B $
$ equiv x in overline(A) or x in overline(B) $
$ equiv x in overline(A) union overline(B) $

The above shows $x in overline(A inter B) -> x in overline(A) union overline(B)$

Thus

$overline(A inter B) subset.eq overline(A) union overline(B)$

We also need to show:

$ x in overline(A) union overline(B) -> x in overline(A inter B) $

Set identities can be verified using #underline()[set membership tables] which are like truth tables, but use 1 or 0 instead of $T$ and $F$ and have as rows the regions of an appropriate #underline()[Venn Diagram]

== Venn Diagrams
With more than 3 sets, these get messy.

== We can also build new identities from old ones

=== Example
$(A inter B) or C = C union (A inter B)$ (by commutative Law) \
$= (C union A) inter (C union B)$ (by distributive Law) \
$= (A union C) inter (C union B)$ (by commutative Laws)
$= (A union C) inter (B union C)$ (by commutative Laws)

#pagebreak()

= $section$ 2.3 Functions
More like computer science functions thanb calculus functions.
(Not drawing graphs, or slopes, etc)

== Definition
A function $f$ from set $A$ to set $B$ is a rule for assigning an element of $B$ to each element of $A$, we write: \
$f : A -> B $ ($f$ is a function from $A$ to $B$)

$f$ is the name of the function \
$A$ is the domain of the function $f$ \
$B$ is the #underline()[codomain] of the function $f$ (the range is the set of actual outputs.)

=== Example
If $A$ is all the students in this room \
$B$ is a set of colors \
and \
$f$ is the favorite color funciton, then the range of $f$ is 

${"lavender", "turquoise", "blue", "red", "green", "white", "teal", "purple", ...}$

Note: Puse is not in the range, but is in the codomain

== Notation
If the value $y (in B)$ is assigned to $x (in A)$ then we write: \
$ f(x) = y $

$y$ is called $underline("the")$ $underline("image")$ of $x$

$x$ is called $underline(a)$ $underline("pre-image")$ of $y$

Sometimes we apply a function to a set, 
$ f(S) = {x in B | exists a in S (f(a) = x)} $

=== Example
If $S = {"Net", "Ali", "Rayan"}$ \
the $f(S) = {"teal, blue"}$

The #underline()[range] of $f$ is $f(A)$ where $A$ is the domain,

== Nice Functions
We will only talk about 'nice' functions, since most functions can't be described at all.

Some ways functions can be nice is if they interact 'nicely' with their codomains.

=== Types of Funcitons
- onto functions
- one-to-one functions 
- one-to-one correspondences

=== Alternate names (from their types)
- Surjections
- Injections
- Bijections












