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
#block(sticky: true)[_September 23 and 25_]

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

/ Resolution: From $p or q$ and $not p or r$, infer $q or r$.
  In the September 25 example, the remaining terms are both $q$, giving
  $q or q$, which is equivalent to $q$.

/ Universal instantiation: From $forall x P(x)$, infer $P(a)$ for any
  particular element $a$ of the domain.

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
#block(sticky: true)[_September 25_]

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
