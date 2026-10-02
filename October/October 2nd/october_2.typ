= Notation

x is an element of A

$x in A$ X 

x is not an element of A

$x in.not A$

== Specifying a Set
- Roster Notation
- Set Builder Notation
- Set operations applied to existing sets

The above have the following in common:
- Set description are surrounded by curly brackets

=== Roster Notation
List elements, seperated by commas "," between '{' and a '}'

==== Example
$A = {1, 4, 7, 9}$

When communication requires, we can use patterns.

===== Example
$B = {4, 5, 6, 7, ..., 28}$
\ then $22 in B$ but $34 in.not B$

=== Set Builder Notation
${"subject" | "predicate" }$

- Subject: possibly restricted to a domain

==== Example
$C = {x | x "is a student in this room"}$

$D = {x in B | x "is a multiple of 6"}$

Here our subject is a domain restriction, 

In this case $D = {6, 12, 18, 24}$

=== Definition
Two sets, $S$ and $T$ are equal, iff they have the same elements.

i.e $ x in S <-> x in T $

In this case we write $S = T$

==== Example
if $B = {4, 5, 6, 7, ... 28}$

Let $E = {x in B | x "is a perfect square"}$

Let $F = {4, 9, 16, 25}$

Let $G = {16, 9, 16, 4, 16, 16, 4, 25, 16}$

In this case:

$E = F$

$F = G$

$E = G$

==== Consequently
$S != T$

means

$exists x ((x in S and x in.not T) or (x in T and x in.not S))$

Example

$B != E$ because $5 in B$ but $5 in.not E$

== Common Sets of Numbers

$NN = {0, 1, 2, 3, ...}$ Natural Numbers (In this class $0 in NN$)

$ZZ = {..., -2, -1, 0, 1, 2, 3 ...}$ Integers

We can write the above in Set Builder Notation

${x | x in NN or -x in NN}$

$ZZ^+ = {x in ZZ | x > 0}$

$QQ = "The rational numbers" $ \
"$QQ$" is for quotient

${x | exists p in ZZ, exists q in ZZ^+ (x = p/q)}$

$QQ^+ = {x in QQ | x > 0}$

$RR = "The real numbers"$

$CC = "Complex Numbers"$ \
${a + b i | a in RR and b in RR}$

== Intervals
Continuous subsets of $RR$

$(a, b) = {x in RR | a < x < b}$
$[a, b] = {x in RR | a <= x <= b}$

We can mix and match the brackets and square brackets.

$(a, b] = {x in RR | a < x <= b}$

$[a, b) = {x in RR | a <= x < b}$

=== Example
$3 in (2.5, 4.6)$ (3 is between 2.5 and 4.6)

$2.5 in.not (2.5, 4.6)$

but \ $2.5 in [2.5, 4.6)$

== A Special Set
The #underline()[empty set] is the unique set with no elements

We write $emptyset$ instead of ${}$ when appropriate

= Definition
A set $A$ is a #underline()[subset] of $B$ if every element of $A$ is also an element of $B$

We write $A subset.eq B$

Alternatively $B supset A$ read "B is a super of A"

We can write $A subset B$ A is a strict subset of B

to say $A subset.eq B$ and $A != B$

think $<= "vs" <$

== Note
$A subset.eq B$

means

$x in A -> x in B$

implicitly there is a universal quanitfier and we intepret this as

$forall x (x in A -> x in B)$

Thus "A is not a subset of B"

means

$not(forall x (x in A -> x in B))$

$equiv exists x (x in A and x not in B)$

By De Morgans Law and CD-Equivalence

=== Recall
$not(p -> q) equiv not(not p or q)$ \
$equiv not not p and not q$ \
$equiv p and not q$

=== Example
If $S = {"red", "blue"}$

$T = {"red", "blue", "blue"}$

$R = {x | x "is a colour"}$

Then $S subset.eq T$ and $T subset.eq R$

but $T subset.eq.not S$ since $"green" in T "but green" in.not S$

and $R subset.eq.not T$ since ... (exercise)

== Theorem
If $S$ is any set then,

1. $emptyset subset.eq S$
2. $S subset.eq S$

=== Proof of (1)
We need to show 

$forall x(x in emptyset -> x in S)$

By contradiction the alternative would be $exists x (x in emptyset and x in.not S)$

But $x in emptyset$ is never true

This structure pattern is called a #underline()[vacuous proof], the implication is true because kits hypothesis is never true.

=== Proof of (2)
... Exercise

== Corollary
If $S$ is any set other than the emptyset, then $S$ has atleast two subsets.

= Definition
If we can count all of the elements of $S$, and th total is $n$ we say $S$ is a #underline()[finite] set and the #underline()[cardinality] of $S$ is $n$, we write:

$ |S| = n $

== Example
if $A = {emptyset, 1, {1, 2, 4}, {}, {1, 1, 2, 4, 2}, emptyset, 1}$

Then $|A| = 3$

Elements are:
1, $emptyset$, and {1, 2, 4}

= Power Sets
The power set of a set $S$ is the set of all subsets of S \
i.e $A in P(s) "iff" A subset.eq S$

== Example
With A as before:

$P(A) = {emptyset, {emptyset}, {1}, {1, 2, 4}, {emptyset, 1}, {emptyset, {1, 2, 4}}, {1, [1, 2, 4}, {emptyset, 1, {1, 2, 4}}}$

Note: 

$ |P(A)| = 8 = 2^3 $

More generally,

$|P(s)| = 2^(|s|)$ if $S$ is finite

= Cartesian Products
Named after Des Cartes

The set $A_1 times A_2 times A_3 times ... times A_n$

consists of all ordered n-tuples:

$(x_1, x_2, ..., x_n)$ such that $x_i in A_i$ for each $i$


