#set document(title: "Math 1019 — Definitions")
#set page(paper: "us-letter", margin: 0.8in, numbering: "1")
#set text(size: 11pt)
#set par(leading: 0.65em)
#set heading(numbering: "1.")

#align(center)[
  #text(size: 19pt, weight: "bold")[Math 1019 — Definitions]

]

A cumulative glossary, grouped by topic. Dates identify the lectures where
the terms appear. Named laws and rules are included for reference. Wording
and formulas have been clarified where the notes contain transcription errors.
Coverage: September 11 through October 5.

= Statements and propositions
#block(sticky: true)[_September 11 and 14_]

/ Statement: An assertion expressed in words or mathematical notation.
  Mathematical relations such as $=$ and $>$ can serve the role of a verb.
  Whether an assertion is a proposition depends on whether it has a definite
  truth value.

/ Declarative sentence: A sentence that makes an assertion, such as
  “The grass is wet.” A declarative sentence is a proposition only if it is
  either true or false, but not both.

/ Imperative sentence: A sentence that gives a command or instruction, such
  as “Hand in the assignment.” It is not a proposition.

/ Interrogative sentence: A sentence that asks a question, such as
  “Are you in this class?” It is not a proposition.

/ Exclamatory sentence: A sentence that expresses strong feeling or
  emphasis, such as “Wow!” An exclamation alone is not a proposition;
  an exclamatory sentence that also makes a definite assertion can be one.

/ Proposition: A declarative statement that is either true or false, but
  not both. Its truth value need not be known to us. For example, $2 + 3 = 5$
  is a true proposition, and $2 + 3 = 6$ is a false proposition.

/ Truth value: The value true ($T$) or false ($F$) assigned to a proposition.

/ Propositional variable: A symbol, usually $p$, $q$, or $r$, that represents
  a proposition. For example, $p$ might represent “It is raining.”

/ Simple proposition: A proposition treated as a single unit, without
  breaking it into propositions joined by logical connectives.

/ Compound proposition: A proposition formed from other propositions using
  logical connectives, such as $not p$ or $p and q$.

/ Logical connective: An operation used to form a compound proposition.
  Its truth value is determined by the truth values of its inputs.

= Logical connectives and truth tables
#block(sticky: true)[_September 14 and 16_]

/ Negation (NOT): $not p$ means “not $p$.” It is true exactly when $p$ is false.

/ Conjunction (AND): $p and q$ means “$p$ and $q$.” It is true exactly when
  both $p$ and $q$ are true.

/ Disjunction (inclusive OR): $p or q$ means “$p$ or $q$.” It is true when
  at least one of $p$ and $q$ is true, including when both are true.
  This is the default meaning of OR in propositional logic.

/ Exclusive OR (XOR): $p xor q$ is true exactly when one of $p$ and $q$ is
  true and the other is false.

/ NAND: The negation of a conjunction, $not (p and q)$. It is false exactly
  when both inputs are true. (Named in the September 14 notes.)

/ Implication (conditional): $p -> q$ means “if $p$, then $q$.” It is false
  exactly when $p$ is true and $q$ is false; it is true in every other case.
  It rules out a true hypothesis with a false conclusion.

/ Hypothesis: In $p -> q$, the proposition $p$. It is the condition assumed
  in the “if” part of the implication.

/ Conclusion: In $p -> q$, the proposition $q$. It is the assertion in the
  “then” part. In an argument, the conclusion is the assertion that is meant
  to follow from the premises.

/ Biconditional (bi-implication): $p <-> q$ means “$p$ if and only if $q$,”
  abbreviated “$p$ iff $q$.” It is true exactly when $p$ and $q$ have the same
  truth value. Equivalently, both $p -> q$ and $q -> p$ hold.

/ Truth table: A table listing every combination of truth values of the
  propositional variables and the resulting values of expressions built
  from them. With $n$ distinct variables, there are $2^n$ rows of assignments.

/ Operator precedence: The order in which connectives are applied when
  parentheses do not specify the grouping. The order given in the notes is
  $not$, then $and$, then $or$, then $->$, then $<->$.

For quick reference:

#table(
  columns: 8,
  align: center,
  inset: 6pt,
  table.header(
    [$p$], [$q$], [$not p$], [$p and q$], [$p or q$],
    [$p xor q$], [$p -> q$], [$p <-> q$],
  ),
  [T], [T], [F], [T], [T], [F], [T], [T],
  [T], [F], [F], [F], [T], [T], [F], [F],
  [F], [T], [T], [F], [T], [T], [T], [F],
  [F], [F], [T], [F], [F], [F], [T], [T],
)

= Related implications
#block(sticky: true)[_September 16_]

Relative to the original implication $p -> q$:

/ Converse: $q -> p$. Exchange the hypothesis and conclusion.

/ Inverse: $not p -> not q$. Negate both the hypothesis and conclusion.

/ Contrapositive: $not q -> not p$. Exchange and negate both parts.
  An implication is logically equivalent to its contrapositive.

The converse and inverse are logically equivalent to each other, but neither
is generally equivalent to the original implication.

= Classification and logical equivalence
#block(sticky: true)[_September 16, 18, and 21_]

/ Tautology: A propositional expression that is true for every assignment
  of truth values to its variables. Example: $p or not p$.

/ Contradiction: A propositional expression that is false for every
  assignment of truth values to its variables. Example: $p and not p$.

/ Contingency: A propositional expression that is true for at least one
  assignment and false for at least one assignment. Example: $p -> q$.

/ Satisfiable expression: An expression for which at least one assignment
  of truth values makes it true. Both tautologies and contingencies are
  satisfiable; contradictions are not.

/ Logical equivalence: Expressions $S$ and $T$ are logically equivalent,
  written $S equiv T$, if they have the same truth value under every
  assignment. Equivalently, $S <-> T$ is a tautology. Equivalent
  subexpressions may be substituted for one another.

== Named logical laws
#block(sticky: true)[_September 18; extensions on September 21 and 23_]

Here $T$ and $F$ denote the constant truth values true and false.

/ Identity laws: $p and T equiv p$; $p or F equiv p$.

/ Domination laws: $p or T equiv T$; $p and F equiv F$.

/ Idempotent laws (idempotency): $p and p equiv p$; $p or p equiv p$.

/ Double negation law: $not (not p) equiv p$.

/ Negation laws: $p or not p equiv T$; $p and not p equiv F$.

/ Commutative laws: The order of the operands can be exchanged:
  $p and q equiv q and p$; $p or q equiv q or p$.

/ Associative laws: The grouping can be changed:
  $(p and q) and r equiv p and (q and r)$;
  $(p or q) or r equiv p or (q or r)$.

/ Distributive laws: Each of AND and OR distributes over the other:
  $ p and (q or r) equiv (p and q) or (p and r) $
  $ p or (q and r) equiv (p or q) and (p or r) $

/ Absorption laws: $p or (p and q) equiv p$;
  $p and (p or q) equiv p$.

/ De Morgan's laws: Negating a conjunction or disjunction negates each
  part and exchanges AND with OR:
  $ not (p and q) equiv not p or not q $
  $ not (p or q) equiv not p and not q $
  The same pattern applies to more than two propositions.

/ Conditional–disjunction equivalence (CD-equivalence):
  $(p -> q) equiv (not p or q)$.
  Consequently, $not (p -> q) equiv p and not q$.

/ Contrapositive equivalence:
  $(p -> q) equiv (not q -> not p)$.

/ Biconditional equivalence:
  $(p <-> q) equiv ((p -> q) and (q -> p))$.

= Predicates and quantifiers
#block(sticky: true)[_September 21 and 23_]

/ Domain (of discourse): The collection of values a variable is allowed
  to take. Values must make the propositional function meaningful.
  For example, one possible domain for $x > 5$ is the integers.

/ Propositional function: An expression such as $P(x)$ whose truth value
  depends on its variable. Substituting a particular value from the domain
  produces a proposition. For example, if $P(x)$ is $x + 7 = 13$, then
  $P(6)$ is true and $P(5)$ is false.

/ Subject: The object or variable about which a property is asserted.
  In the September 21 example $Q(x)$, the subject is $x$.

/ Predicate: The property asserted of the subject, such as “is greater
  than 5.” The notation $P(x)$ is also commonly called a predicate;
  predicates may involve more than one variable, as in $P(x, y)$.

/ Quantifier: A symbol specifying how widely a predicate holds over a
  domain. The quantifiers introduced in the notes are $forall$ and $exists$.

/ Universal quantification: $forall x P(x)$ means “$P(x)$ is true for every
  $x$ in the domain.” It is false if there is even one domain element for
  which $P(x)$ is false.

/ Existential quantification: $exists x P(x)$ means “there is at least one
  $x$ in the domain for which $P(x)$ is true.” It does not mean exactly one.

/ Counterexample: An example that disproves a claim. For $forall x P(x)$,
  it is a value $a$ in the domain for which $P(a)$ is false.

/ Finite domain: A domain with finitely many elements. For a domain
  consisting of $x_1, dots, x_n$, quantification can be expanded as
  $ forall x P(x) equiv P(x_1) and dots and P(x_n) $
  $ exists x P(x) equiv P(x_1) or dots or P(x_n) $

/ Negation of quantifiers (De Morgan's laws for quantifiers): Negating a
  quantified statement exchanges the quantifier and negates the predicate:
  $ not (forall x P(x)) equiv exists x (not P(x)) $
  $ not (exists x P(x)) equiv forall x (not P(x)) $

/ Nested quantifiers: Multiple quantifiers applied to a predicate involving
  multiple variables. Read them from left to right.
  For example, $forall x exists y P(x, y)$ allows the choice of $y$ to depend
  on $x$, whereas $exists y forall x P(x, y)$ requires one $y$ that works
  for every $x$.

/ Commuting quantifiers: Quantifiers commute if exchanging their order
  preserves the meaning. Two universal quantifiers commute, as do two
  existential quantifiers:
  $ forall x forall y P(x, y) equiv forall y forall x P(x, y) $
  $ exists x exists y P(x, y) equiv exists y exists x P(x, y) $
  A universal and an existential quantifier generally cannot be exchanged.

/ Implicit universal quantifier: A universal quantifier understood from
  context rather than written explicitly. For example, “If $m$ and $n$ are
  even integers, then $m + n$ is even” is a claim about all integers $m$
  and $n$. (September 25.)

== Application from the notes: continuity
#block(sticky: true)[_September 23_]

/ Continuity at a point: A function $f: RR -> RR$ is continuous at $x_0$ if
  $ forall epsilon > 0, exists delta > 0, forall x in RR,
    (abs(x - x_0) < delta -> abs(f(x) - f(x_0)) < epsilon). $
  Every positive error bound $epsilon$ permits a positive distance bound
  $delta$ that works for all $x$ that close to $x_0$.
  Its negation is
  $ exists epsilon > 0, forall delta > 0, exists x in RR,
    (abs(x - x_0) < delta and abs(f(x) - f(x_0)) >= epsilon). $

= Arguments and rules of inference
#block(sticky: true)[_September 23 and 25; extensions on September 28 and 30_]

/ Argument: A collection of premises together with a proposed conclusion.
  The symbol $therefore$ is read “therefore” and introduces the conclusion.

/ Premises (hypotheses): The propositions assumed or given in an argument,
  usually written $p_1, p_2, dots, p_n$.

/ Valid argument: An argument in which the premises cannot all be true
  while the conclusion is false. With premises $p_1, dots, p_n$ and
  conclusion $q$, validity means
  $ (p_1 and dots and p_n) -> q $
  is a tautology. Validity concerns the inference; it does not assert that
  the premises are actually true.

/ Rule of inference: A valid argument pattern that can be used to derive
  a conclusion from known or assumed premises.

/ Fallacy: An invalid argument pattern. To show invalidity, give an
  assignment making every premise true and the conclusion false.

== Rules used or named in the notes

/ Simplification: From $p and q$, infer $p$ (or infer $q$).

/ Addition: From $p$, infer $p or q$.

/ Conjunction rule: From $p$ and $q$ as separate premises, infer $p and q$.

/ Modus ponens: From $p -> q$ and $p$, infer $q$.

/ Hypothetical syllogism: From $p -> q$ and $q -> r$, infer $p -> r$.

/ Disjunctive syllogism: From $p or q$ and $not p$, infer $q$.
  Equivalently, from $p or q$ and $not q$, infer $p$. (September 30.)

/ Resolution: From $p or q$ and $not p or r$, infer $q or r$.
  In the September 25 example, the remaining terms are both $q$, giving
  $q or q$, which is equivalent to $q$.

/ Universal instantiation: From $forall x P(x)$, infer $P(a)$ for any
  particular element $a$ of the domain.

/ Universal generalization: If $P(a)$ has been proved for an arbitrary
  element $a$ of the domain, infer $forall x P(x)$. The proof must not rely
  on assumptions specific to that element. (September 28.)

/ Existential instantiation: From $exists x P(x)$, introduce a new symbol
  $a$ for an element satisfying $P(a)$. This element is a witness, not an
  arbitrary element. Use separate new symbols for independent existential
  assertions; their witnesses need not be the same. (September 28.)

/ Existential generalization: From $P(a)$ for a particular element $a$ of
  the domain, infer $exists x P(x)$. The element $a$ supplies an example
  showing that the existential statement is true. (September 28.)

/ Universal modus ponens: From $forall x (P(x) -> Q(x))$ and $P(a)$,
  infer $Q(a)$, where $a$ belongs to the domain.

/ Universal modus tollens: From $forall x (P(x) -> Q(x))$ and $not Q(a)$,
  infer $not P(a)$, where $a$ belongs to the domain.

== Common fallacies

/ Affirming the conclusion: Incorrectly inferring $p$ from $p -> q$ and
  $q$. Counterexample: $p$ is false and $q$ is true.

/ Denying the hypothesis: Incorrectly inferring $not q$ from $p -> q$ and
  $not p$. Counterexample: $p$ is false and $q$ is true.

/ Affirming the disjunction: Incorrectly inferring $not q$ from $p or q$
  and $p$ (or inferring $not p$ from $p or q$ and $q$).
  Counterexample: both $p$ and $q$ are true. Inclusive OR allows both.

= Proof terminology and parity
#block(sticky: true)[_September 25 and 28_]

/ Proof: A valid mathematical argument establishing that a statement
  follows from the assumptions, definitions, and results being used.

/ Theorem: A mathematical statement that has been proved, usually one
  regarded as important.

/ Proposition (as a proved result): A neutral name for a mathematical
  result that has been proved. This use differs from “proposition” in
  logic, where the statement may be true or false and need not be proved.

/ Lemma: A proved result used as a stepping stone toward another result.

/ Corollary: A proved result that follows readily from an established result.

/ Conjecture: A statement proposed as true but not yet proved or disproved.

/ Even integer: An integer $n$ is even if and only if there exists an
  integer $k$ such that $n = 2k$:
  $ exists k in ZZ, n = 2k. $

/ Odd integer: An integer $n$ is odd if and only if there exists an
  integer $k$ such that $n = 2k + 1$:
  $ exists k in ZZ, n = 2k + 1. $

= Proof techniques
#block(sticky: true)[_September 28 and 30; vacuous proof on October 2_]

/ Direct proof: To prove $p -> q$, assume $p$ and use definitions, known
  facts, and rules of inference to establish $q$. For a universally
  quantified claim, keep the elements under consideration arbitrary.

/ Proof by contraposition: Prove $p -> q$ by proving the logically
  equivalent implication $not q -> not p$. This can be easier when the
  negation of the conclusion gives a more useful starting assumption.

/ Proof by contradiction: To prove a statement $p$, assume $not p$ and
  derive a contradiction. Since the assumption leads to something
  impossible, conclude that $p$ is true.

/ Proof by cases (case analysis): Establish a conclusion $q$ separately
  under each of the cases $p_1, dots, p_n$, and show that the cases cover
  every possibility:
  $ p_1 or dots or p_n. $
  Once every implication $p_i -> q$ is proved, conclude $q$. (September 30.)

/ Exhaustive cases: Cases whose disjunction is guaranteed to hold, so no
  possibility is left out. For example, the remainder when an integer is
  divided by 3 must be 0, 1, or 2. Cases need not be mutually exclusive.
  (September 30.)

/ Proof of existence: A proof of $exists x P(x)$. Giving an element $a$
  of the domain and showing $P(a)$ proves the claim by existential
  generalization.

/ Existence by cases: An existence proof using exhaustive alternatives,
  with a suitable example in every case. It can establish that an example
  exists without determining which case actually holds. In the September 30
  example, either $sqrt(2)^sqrt(2)$ is rational, or it is irrational; each
  case gives irrational $x$ and $y$ for which $x^y$ is rational.

/ Vacuous proof: A proof of an implication by showing that its hypothesis
  is always false. For example, $forall x (x in emptyset -> x in S)$ is
  true because no $x$ belongs to the empty set. (October 2.)

= Numbers and divisibility
#block(sticky: true)[_September 28 and 30; number-set notation on October 2_]

/ Rational number: A real number $r$ that can be written $r = p/q$ for
  integers $p$ and $q$ with $q != 0$. Equivalently, the denominator can be
  required to be a positive integer.

/ Irrational number: A real number that is not rational; it cannot be
  expressed as a quotient of integers with a nonzero denominator.
  For example, $sqrt(2)$ is irrational.

/ Multiple and divisibility: For integers $a$ and $b$, the integer $b$ is
  a multiple of $a$ if $b = a k$ for some integer $k$. In this case, $a$
  divides $b$. For example, being even means being a multiple of 2.
  (September 30.)

/ Quotient and remainder: When an integer $n$ is divided by a positive
  integer $d$, it can be written uniquely as $n = d k + r$, where $k$ and
  $r$ are integers and $0 <= r < d$. Here $k$ is the quotient and $r$ is
  the remainder. The possible remainders give exhaustive cases for a proof.
  (September 28 and 30.)

== Common sets of numbers
#block(sticky: true)[_October 2_]

/ Natural numbers: $NN = {0, 1, 2, 3, dots}$. In this course, 0 is a
  natural number.

/ Integers: $ZZ = {dots, -2, -1, 0, 1, 2, dots}$.

/ Positive integers: $ZZ^+ = {x in ZZ | x > 0} = {1, 2, 3, dots}$.

/ Rational numbers: $QQ$, the set of all rational numbers:
  $ QQ = {x in RR | exists p in ZZ, exists q in ZZ^+, x = p/q}. $

/ Positive rational numbers: $QQ^+ = {x in QQ | x > 0}$.

/ Real numbers: $RR$, the numbers on the real number line, including
  both rational and irrational numbers.

/ Complex numbers: $CC = {a + b i | a in RR and b in RR}$, where
  $i^2 = -1$.

== Intervals
#block(sticky: true)[_October 2_]

/ Interval: A subset of $RR$ that contains every real number between any
  two of its elements. Parentheses exclude an endpoint; square brackets
  include it.

/ Open interval: $(a, b) = {x in RR | a < x < b}$.

/ Closed interval: $[a, b] = {x in RR | a <= x <= b}$.

/ Half-open intervals: $(a, b] = {x in RR | a < x <= b}$ and
  $[a, b) = {x in RR | a <= x < b}$.

= Sets and membership
#block(sticky: true)[_October 2_]

/ Set: A collection of distinct objects, called its elements. A set is
  determined by which elements it contains: changing their order or
  repeating them in a description does not change the set.

/ Element (membership): $x in A$ means that $x$ is an element of the
  set $A$; $x in.not A$ means that $x$ is not an element of $A$.

/ Roster notation: Describe a set by listing its elements between curly
  brackets, separated by commas. For example, $A = {1, 4, 7, 9}$.
  An ellipsis may indicate a clear pattern, as in ${4, 5, 6, dots, 28}$.

/ Set-builder notation: Describe a set by a condition its elements must
  satisfy: ${x | P(x)}$, or ${x in D | P(x)}$ when restricting $x$ to a
  domain $D$. The vertical bar is read “such that.”

/ Set equality: Sets $S$ and $T$ are equal if and only if they have the
  same elements:
  $ S = T <-> forall x (x in S <-> x in T). $
  To show that two sets are unequal, find an element in one but not the other.

/ Empty set: The unique set with no elements, written $emptyset$ or ${}$.
  The set ${emptyset}$ is not empty: its one element is the empty set.

/ Subset: $A subset.eq B$ means that every element of $A$ is also an
  element of $B$:
  $ forall x (x in A -> x in B). $
  Every set is a subset of itself, and $emptyset$ is a subset of every set.

/ Superset: $B supset.eq A$ means $A subset.eq B$; that is, $B$ contains
  every element of $A$.

/ Strict subset (proper subset): $A subset B$ means that $A subset.eq B$
  and $A != B$. Thus $B$ has at least one element that is not in $A$.

/ Not a subset: $A subset.eq.not B$ means that some element of $A$ does
  not belong to $B$:
  $ exists x (x in A and x in.not B). $

= Set size and constructions
#block(sticky: true)[_October 2_]

/ Finite set: A set whose elements can all be counted, with the count
  equal to a nonnegative integer $n$.

/ Cardinality: The number of distinct elements of a finite set $S$,
  written $|S|$. For example, $|emptyset| = 0$ and $|{emptyset}| = 1$.
  A set that is itself an element counts as one element: the set
  ${emptyset, 1, {1, 2, 4}}$ has cardinality 3.

/ Power set: The set of all subsets of a set $S$, written $P(S)$:
  $ A in P(S) <-> A subset.eq S. $
  For example, $P({a, b}) = {emptyset, {a}, {b}, {a, b}}$.
  If $S$ is finite, then $|P(S)| = 2^(|S|)$.

/ Ordered pair: A pair $(a, b)$ in which position matters. Two ordered
  pairs are equal exactly when their corresponding entries are equal:
  $(a, b) = (c, d)$ if and only if $a = c$ and $b = d$.

/ Ordered $n$-tuple: A list $(x_1, x_2, dots, x_n)$ with $n$ entries in
  specified positions. Equality requires equality in every corresponding
  position.

/ Cartesian product: The set of ordered pairs formed by choosing the
  first entry from $A$ and the second from $B$:
  $ A times B = {(a, b) | a in A and b in B}. $
  More generally, $A_1 times dots times A_n$ consists of all ordered
  $n$-tuples $(x_1, dots, x_n)$ with $x_i in A_i$ for each $i$.

= Set operations and identities
#block(sticky: true)[_October 5_]

/ Intersection: The set of elements belonging to both $A$ and $B$:
  $ A inter B = {x | x in A and x in B}. $
  Thus $x in A inter B <-> (x in A and x in B)$.

/ Union: The set of elements belonging to at least one of $A$ and $B$:
  $ A union B = {x | x in A or x in B}. $
  An element belonging to both sets appears only once in their union.

/ Set difference: The set of elements in $A$ that are not in $B$, written
  $A without B$ or $A - B$:
  $ A without B = {x | x in A and x in.not B}. $
  In general, $A without B != B without A$.

/ Universal set (universe): The set $U$ containing all elements under
  consideration. Sets being discussed are subsets of $U$; complements
  are taken relative to this specified universe.

/ Complement: The complement of $A$ relative to $U$, written $overline(A)$,
  consists of the elements of $U$ that are not in $A$:
  $ overline(A) = U without A = {x in U | x in.not A}. $
  Changing $U$ can change the complement, even when $A$ stays the same.

/ Set identity: An equality between set expressions that holds for all
  sets under consideration. It can be proved by showing that an arbitrary
  element belongs to one side if and only if it belongs to the other.
  Equivalently, prove that each side is a subset of the other.

/ Set membership table: A table using 1 for membership and 0 for
  nonmembership. It lists all combinations of membership in the sets
  involved, like a truth table. Identical columns for two set expressions
  verify a set identity.

/ Venn diagram: A diagram representing sets as regions, usually inside
  a rectangle representing $U$. Overlapping regions show shared elements;
  shading can indicate a set operation or a complement.

== Named set laws

All complements below use the same universal set $U$.

/ Commutative laws for sets: The order of the sets can be exchanged:
  $ A inter B = B inter A; quad A union B = B union A. $

/ Distributive laws for sets: Each of intersection and union distributes
  over the other:
  $ A inter (B union C) = (A inter B) union (A inter C) $
  $ A union (B inter C) = (A union B) inter (A union C) $

/ De Morgan's laws for sets: Taking a complement exchanges intersection
  with union and complements each set:
  $ overline(A inter B) = overline(A) union overline(B) $
  $ overline(A union B) = overline(A) inter overline(B) $
  These follow from the corresponding logical laws applied to membership.

/ Cardinality of a union (two-set inclusion–exclusion): For finite sets
  $A$ and $B$,
  $ |A union B| = |A| + |B| - |A inter B|. $
  Subtract the intersection once because its elements were counted twice.
  Equivalently, the union splits into three nonoverlapping parts:
  $ |A union B| = |A inter B| + |A without B| + |B without A|. $

= Functions
#block(sticky: true)[_October 5_]

/ Function: A rule $f: A -> B$ assigning exactly one element of $B$ to
  each element of $A$. Every input in $A$ must have an output, and no input
  can have two different outputs. Different inputs may have the same output.

/ Domain of a function: In $f: A -> B$, the set $A$ of all permitted
  inputs. It is part of the specification of the function.

/ Codomain: In $f: A -> B$, the specified set $B$ in which the outputs
  must lie. Some elements of $B$ may never occur as outputs.

/ Function value (image of an element): If $f$ assigns $y$ to the input
  $x$, write $f(x) = y$. The element $y$ is the image of $x$ under $f$.

/ Pre-image of an element: An input $x$ satisfying $f(x) = y$ is a
  pre-image of $y$. An element of the codomain may have no pre-image,
  one pre-image, or several pre-images.

/ Image of a set: For $S subset.eq A$, the set of outputs obtained from
  inputs in $S$:
  $ f(S) = {f(a) | a in S}
    = {y in B | exists a in S, f(a) = y}. $

/ Range: The set of actual outputs of $f$, namely $f(A)$, where $A$ is
  its domain. Always $f(A) subset.eq B$; the range need not equal the codomain.

== Types of functions named in the notes

The October 5 notes introduce these names. Their defining properties are
included here for reference, with $f: A -> B$ throughout.

/ Onto function (surjection): A function whose range equals its codomain.
  Every $y in B$ has at least one pre-image in $A$:
  $ forall y in B, exists x in A, f(x) = y. $

/ One-to-one function (injection): A function that sends different inputs
  to different outputs. Equivalently,
  $ forall x_1, x_2 in A, (f(x_1) = f(x_2) -> x_1 = x_2). $
  Each element of the codomain has at most one pre-image.

/ One-to-one correspondence (bijection): A function that is both
  one-to-one and onto. Each element of the codomain has exactly one
  pre-image in the domain.

= Corrections applied in this glossary

- September 16: the inverse of $p -> q$ is $not p -> not q$.
  An implication excludes $p$ true with $q$ false.
- September 21: negating an existential quantifier gives
  $forall x (not P(x))$. Existential quantification over a finite domain
  expands into a disjunction, rather than an arithmetic sum.
- September 23: $not (p -> q) equiv p and not q$.
  Negating a strict bound $abs(f(x) - f(x_0)) < epsilon$ gives
  $abs(f(x) - f(x_0)) >= epsilon$.
- September 25: the usual “affirming the conclusion” fallacy includes
  both premises $p -> q$ and $q$.
- October 5: membership in an intersection is
  $x in A inter B <-> (x in A and x in B)$. Set expressions use $union$
  for union, so the distributive example begins with $(A inter B) union C$.
  A function assigns exactly one output to each input; an output can have
  several pre-images.
