= Some Graphs

== Complete Graphs
$K_n$ has $n$ vertices each adjacent to every other. Each has degree $n - 1$


== Cycles
$C_n$ has $n$ vertices each with degree 2

== Wheels
$W_n$ has $n+1$ vertices $n$ with degree 3, 1 with degree $n$

== Cube Graphs
$Q_n$ has $2^n$ vertices each with degree n

The vertices are all linked length-$n$ ${0, 1}$-strings, the vertices are adjacent iff they differ in exactly 1 position.

$Q_3$ can actaully look like a cube. But also can look nothing like a cube.

\

Cube graphs can be constructed recursively. To draw $Q_(n+1)$, Draw two copies of $Q_n$

Prepend one set of vertices with 0,

the other set with 1,

and join corresponding vertices.

\

= Matchings and Bipartitedness 

*Defintion*

A matching in a graph is a collection of edges, so that no vertex is incident with more than one of the edges.

\

*Example 1*

In $Q_3$ the edges,

${001, 011},{111, 110},{000, 100}$

form a matching.

\

A matching matches some vertices in pairs. The vertices at opposite ends of an included edg, are paired or matched to each other.

\

*Example 2*

We could have a graph where vertices are jobs, and candidates with an edge connecting a candidate to each job that they are qualified for.

A matching assigns candidates to jobs, and avoids two candidates in the same job, and two jobs with the same candidate.

\

We could also hope to match passengers to seats.

We often want large matchings,

*Example 3*

We might also want to pair people into canoes for a canoe trip. (Not all pairs are compatible.)

*Example 4*

To pair off for group work, (in teams of two) students need to check for
- Compatible schedules
- Comptaible Goals
- etc.

\

There are algorithms for finding as large as possible matchings.

\

Problems 1 & 2 are significantly easier than 3 & 4.

Why?

*Defintion*

A graph $G = (V, E)$ is bipartite, if there exists a partition

$V = V_1 union V_2$ (and $V_1 != emptyset$ and $V_2 != emptyset$ and $V_1 union V_2 != emptyset$)

So that no edge has both ends in the same part.

\

*Example*

In the jobs/candidates graph
there is a bipratition with

$V_1 = {"jobs"}$

$V_2 = {"candidates"}$

*Example*

$C_8$ is bipartite

*Example*

$C_5$ is not bipartite

Algothmically.

Try putting one vertex in one part

\

*Theorem*

A graph $G = (V, E)$ is bipartite, iff its vertices can be colored with exactly two colors so that no adjacent vertices get the same color. (This can be decided by a brute force algorithm that is efficient.)

Moreover if the coloring by brute force fails, we get a certificate in the form of a cycle (of forcing) with odd length.

\

Q: What can prevent a matching from being large?

A: Small neighbourhoods.

*Example*

If there are 28 jobs that require a FORTRAN skills, but only 24 skilled FORTRAN programmers, thats a problem.

Let $A = {"FORTRAN Jobs"}$

We'd have:

$|A| = 28$ but,

$|N(A)| <= 24$

Obstacle is $|N(A)| < |A|$

In Bipartite graphs, this is the only kind of obstacles.


\

*Hall's Marriage Theorem*

aka Hall's Matching Theorem.

If $G = (V, E)$ is bipartite with bipartition

$V = V_1 union V_2$

there is a complete matching from $V_1$ to $V_2$

- Complete means every vertex in $V_1$ gets matched

if and only If

$forall A subset.eq V, (|N(A)| >= |A|)$