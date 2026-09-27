= Recap

= Two more derivations
De Morgan's Law can be extended:

$ not(p_1 or p_2 or p_3 or p_4) 
    equiv not(((p_1 or p_2)) or ((p_3) or p_4)) $

The above is a negation of a disjunction of two things.

$ equiv not((p_1 or p_2) or p_3) and not p_4 $

$ equiv not((p_2 or p_2) and not p_3) and not p_4 $

De Morgan's applied ...

$ equiv ((not p_1 and not p_2) and not p_3) and not p_4 $

$ equiv not p_1 and not p_2 and not p_3 and not p_4 $

Parentheses are optional

== Similarly
Wait for Chapter 5 so we can use induction (the "..." symbol)
$ not(p_1 and p_2 and p_3 ... and p_n) equiv not p_1 or not p_2 ... or not p_n $


=== Example
Claim:
$ (p_1 -> q) and (p_2 -> q) and (p_3 -> q) equiv (p_1 or p_2 or p_3) -> q $

==== Verification

$ (p_1 -> q) and (p_2 -> q) and (p_3 -> q) equiv ((p_1 -> q) and (p_2 -> q) and (p_3 -> q)) $

$ equiv ((p_1 or p_2) -> q) and (p_3 -> q) $

^ By 7th rule in table 7 (from book) ^

$ equiv ((p_1 or p_2) or p_3) -> q $

Same rule on the whole expression.


=  Satisfiability

#underline()[Definition]:
- A expression is #underline()[satisfiable] iff, there is an assignment of $T$ and $F$ to its varaibles so it evaluates to $T$

This is exactly the opposite of being a contradiciton,


= 1.4 Predicates and Quantifiers
$ x > 5 $ 
The above is not a proposition... Until we assign a value to $x$.

"blue > 5" still isn't a proposition

We need to pick a #underline()[domain], a collection of possible values that will make the expression a proposition.

we use function notation:

== Example
if $ Q(x) $ is $ x + 7 = 13 $ then $ Q(6) $ is $ 6 + 7 = 13 $ which is true, $ Q(5) $ is not true

== Propositional function
$ Q(x) $ is called a propositional function, $ x $ is its subject, the rest of the property is its #underline()[predicate]

== Quantifiers
Once we have a predicate and a domain, we get two (or) new questions,

== Definition
The universal quantification of $Q(x)$ is the statement $Q(x) $ is true for *All* $x$ in the domain

We denote this statement by: $ forall x Q(x) $

The above is itself a proposition, and maybe *true* or may be *false*

== Definition
The existential quantification of $Q(x)$ is the statement: "There exists (at least 1) $x$ in the domain so that $Q(x)$ is *true*"

We write it as: $ exists x Q(x) $

Informally they correspond to questions
- "Is $Q(x)$ _Always_ true?"
- "Is $Q(x)$ _Ever_ true?"

== Example
#text(align(center, [$P(x)$ is "$x$ is wearing red socks"])) 
#text(align(center, [$Q(x)$ is "$x$ is wearing socks"])) 

Suppose the domain is all students currently in this room

=== Observe
Nobody is qualified to answer $exists x P(x)$ since $exists x P(x)$ is *false* but nobody can speak for everyone

Similarly one example proves $exists x Q(x)$ but nobody is qualified to answer $forall x Q(x)$

== Finite Domains
If the domain is finite, say it consists of $ x_1, x_2, x_3, ... x_n $

then $ forall x P(x) $ is a conjunction $ P(x_1) and P(x_2), ... and P(x_n) $

and similarly:
$ exists x P(x)$ is a disjunction $ P(x_1) or P(x_2), ... or P(x_n) $

i.e $ sum_(i=1) P(x) $

== Negating Quantifiers
For a finite domain

$ not(exists x P(x)) equiv not (P(x_1) or P(x_2) or ... or P(x_n)) $

$ equiv not P(x_1) and not P(x_2) and ... and P(x_n) $

$ equiv forall x P(x) $

We take this as the infinite definition too,  so $ not(exists x P(X)) $ 

is $ forall x (not P(x)) $

and similarly 

$ exists x P(x) $ is a disjunction 

$ P(x_1) or P(x_2) or P(x_3) or ... or P(x_n) $

i.e

$ sum_(i=1) P(x_n)$
