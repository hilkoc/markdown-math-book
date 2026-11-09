# Afterword. Roads Onward {#afterword -}

> *A very weighty observation, made by induction, linking the theory of biquadratic residues most elegantly with the lemniscatic functions. Namely: if $a+bi$ is a prime number and $a-1+bi$ is divisible by $2+2i$, then the number of all solutions of the congruence $1=xx+yy+xxyy$ (mod $a+bi$), counting $x=\infty,\ y=\pm i$ and $x=\pm i,\ y=\infty$, comes out as $(a-1)^2+bb$.*
>
> — Carl Friedrich Gauss, the last entry in his mathematical diary, 9 July 1814 (our translation from the Latin)

## Where the book has arrived {-}

The Preface promised answers to four questions. Here they are, one paragraph each.

**What is a curve?** A smooth projective curve over $k$ is the same thing as a function field of one variable over $k$, with its points recovered as valuations (Chapters 6 and 7). As a scheme it also remembers what its equation means over every ring, from $\mathbb{Z}$ to the dual numbers (Chapter 13).

**When are two curves the same?** When their function fields are isomorphic. The genus separates curves first (Chapters 10–12). Within one genus, the $j$-invariant, the hyperelliptic dichotomy and the automorphism group finish the job for every curve in our cast (Chapter 17).

**Which curves can be parametrized?** Exactly the curves of genus 0, and over $\mathbb{Q}$ only those whose smooth model has a rational point, which Legendre's theorem decides (Chapters 9 and 16).

**Why do the rational points of a cubic form a group?** Because they are the divisor classes of degree 0, and the chord-and-tangent construction is addition of classes (Chapter 16). The associative law comes free.

Each answer also opens a road, and this afterword follows five of them. Each road starts, as the chapters did, with a question that the book lets you ask but not yet answer. There are no proofs here, only the shape of the answers, with dates and references, and a last problem from Gauss that runs along several roads at once.

## Road 1. Jacobians {-}

> **The question.** On a curve of genus 1 with a rational point $O$, the map $P\mapsto[P-O]$ identifies the curve with $\operatorname{Pic}^0$ (Theorem 16.4). What does $\operatorname{Pic}^0$ look like for a curve of genus 2, or of genus $g$?

When $g\geq2$ the map $P\mapsto[P-O]$ is still injective, since $P-O\sim Q-O$ with $P\neq Q$ would give a function with a single simple pole. But it is far from onto, and Riemann–Roch shows what replaces it. If $D$ has degree 0, then $\ell(D+gO)\geq g+1-g=1$, so $D+gO$ is linearly equivalent to an effective divisor. Every class of degree 0 therefore has the form
$$[P_1+\dots+P_g-gO].$$
For general points the representative is unique, since then $\ell(P_1+\dots+P_g)=1$. So, apart from a smaller set, $\operatorname{Pic}^0(X)$ is the set of unordered $g$-tuples of points: an object of dimension $g$.

Over $\mathbb{C}$ it is a torus. Choose a basis $\omega_1,\dots,\omega_g$ of the regular differentials (Chapter 10), and integrate each of them around the $2g$ independent loops on the surface. The resulting vectors span a lattice $L\subset\mathbb{C}^g$, and the **Abel–Jacobi map**
$$\sum_i(P_i-Q_i)\longmapsto\Bigl(\sum_i\int_{Q_i}^{P_i}\omega_1,\ \dots,\ \sum_i\int_{Q_i}^{P_i}\omega_g\Bigr)\bmod L$$
is well defined on divisors of degree 0. **Abel's theorem** says that its kernel consists exactly of the divisors of functions, which is the criterion Chapter 8 promised. The **Jacobi inversion theorem** says that it is onto. So
$$\operatorname{Pic}^0(X)\cong\mathbb{C}^g/L,$$
a compact complex torus of dimension $g$, the **Jacobian** $J(X)$. Riemann's bilinear relations among the periods make it an **abelian variety**: theta functions embed it in projective space, and the group law is algebraic.

For genus 1 this is the uniformization by $\wp$ and $\wp'$ in the Threads of Chapter 16. The lemniscate curve shows how much the lattice can know. Its regular differential is the integrand of Chapter 9, and the substitution $x\mapsto ix$ multiplies $\int dx/\sqrt{1-x^4}$ by $i$, so the lattice of $\widehat\Lambda$ satisfies $iL=L$. Multiplication by $i$ is then an endomorphism of the curve, an example of **complex multiplication**. Gauss's "lemniscatic functions" are the inverse functions of this integral, and the last problem shows what the factor $i$ does to point counts.

Over an arbitrary field, Weil constructed the Jacobian algebraically in 1948, starting from the $g$-fold symmetric product and the group law that Riemann–Roch gives it. When $X$ has a point over $K$, the points of $J(X)$ over $K$ are the classes of degree 0 defined over $K$. By **Torelli's theorem** (1913), a curve is determined by its Jacobian together with the theta divisor, the image of the $(g-1)$-tuples. By the **Mordell–Weil theorem**, $J(\mathbb{Q})$ is finitely generated: Mordell proved this for genus 1 in 1922 (Chapter 16), and Weil for all Jacobians in his thesis of 1928.

**Genus 1 without a point.** Selmer's curve $C:\ 3x^3+4y^3+5z^3=0$ (Chapter 16) has no rational point, so Theorem 16.4 cannot identify it with $\operatorname{Pic}^0$. Its Jacobian exists all the same. It is the elliptic curve
$$J(C):\ x^3+y^3+60z^3=0,$$
which has the rational point $[1:-1:0]$, and it acts on $C$. A class $[D]$ of degree 0 sends a point $P$ to the unique point $Q$ with $Q\sim P+D$, which exists because $\ell(P+D)=1$ in genus 1. A curve with such a simply transitive action is a **torsor** for $J(C)$, isomorphic to it over $\overline{\mathbb{Q}}$ but perhaps not over $\mathbb{Q}$. The torsors with points over $\mathbb{R}$ and every $\mathbb{Q}_p$ form a group, the **Tate–Shafarevich group** Ш of $J(C)$, and Selmer's curve is a nonzero element of it. So the failure of the local test in genus 1 is measured by a group attached to the Jacobian. A computation bears this out: over $\mathbb{F}_p$ the two cubics have the same number of points for every prime $p$ from 7 to 400. They must, because over a finite field every curve of genus 1 has a point (Theorem 18.6), and so it is isomorphic to its Jacobian.

> **Look up.** Abel's theorem and Jacobi inversion: O. Forster, *Lectures on Riemann Surfaces*, §§20–21. Jacobians over any field: J. S. Milne, "Jacobian varieties", in G. Cornell and J. H. Silverman (eds.), *Arithmetic Geometry*; D. Mumford, *Curves and Their Jacobians*. Torsors and Ш: [Si, X.3–X.4]. Selmer's curve and its Jacobian: K. Conrad, "Selmer's example".

## Road 2. Moduli {-}

> **The question.** Over $\mathbb{C}$, curves of genus 1 are classified by one number $j$, and every value occurs: the $j$-line (Chapter 17). What replaces the $j$-line in genus $g\geq2$, and how many numbers does it take to pin a curve down?

**Riemann's count.** Riemann answered the second half in 1857, with two theorems of this book. Give a curve $X$ of genus $g$ a map to $\mathbb{P}^1$ of large degree $n$ with simple branching. By Riemann–Hurwitz (Theorem 11.5) the map has $2n+2g-2$ branch points. By Riemann's existence theorem they can be placed anywhere, and they determine the cover up to finitely many choices. So the pairs (curve, map) form a family of dimension $2n+2g-2$. A single curve, on the other hand, carries a family of such maps of dimension
$$g+\bigl(2(n+1-g)-1\bigr)=2n+1-g.$$
That is $g$ parameters for the class of the divisor of poles $D$, and then two functions in $L(D)$ up to a common scalar, where $\ell(D)=n+1-g$ by Riemann–Roch (Theorem 15.1). The difference
$$(2n+2g-2)-(2n+1-g)=3g-3$$
is the number of parameters of the curve itself. Riemann called these parameters the **moduli** of the curve, which is where the word comes from.

For $g=0$ and $g=1$ the count gives $-3$ and $0$. What it measures is the number of moduli minus the dimension of the automorphism group: the line has no moduli and three dimensions of automorphisms, and a curve of genus 1 has one modulus and one dimension of translations. For $g\geq2$ the automorphism group is finite (Theorem 17.8), so the count is exact.

Explicit families confirm it in low genus. In each row the last number subtracted is the dimension of the group of projective transformations.

| genus | the general curve | moduli |
|---|---|---|
| 1 | a plane cubic | $(10-1)-8=1$ |
| 2 | $y^2=$ sextic, with six branch points on $\mathbb{P}^1$ | $6-3=3$ |
| 3 | a plane quartic (Corollary 17.6) | $(15-1)-8=6$ |
| 4 | a quadric and a cubic surface meeting in $\mathbb{P}^3$ | $9+15-15=9$ |

Hyperelliptic curves of genus $g$ have $2g+2$ branch points, so they have $2g-1$ moduli, fewer than $3g-3$ once $g\geq3$. In genus 3 they form a hypersurface of dimension 5 in the six-dimensional family, and from then on the general curve is not hyperelliptic.

**First-order moduli.** Chapter 4 found tangent vectors as points with coordinates in the dual numbers $k[\varepsilon]$, and Chapter 13 turned such points into morphisms from $\operatorname{Spec}k[\varepsilon]$. If a space $M_g$ of curves of genus $g$ exists, a tangent vector at the point $[X]$ should be a curve over $k[\varepsilon]$ that reduces to $X$ at $\varepsilon=0$: a **first-order deformation** of $X$. Chapter 14's tools classify them. Cover $X$ by affine open sets $U_i$, over each of which the deformation is trivial, since smooth affine curves do not deform. On $U_i\cap U_j$ two trivializations differ by an automorphism $f\mapsto f+\varepsilon\,\theta_{ij}(f)$, where $\theta_{ij}$ is a derivation, a section of the tangent sheaf $T_X$. The $\theta_{ij}$ form a cocycle, and changing the trivializations changes it by a coboundary. So the first-order deformations of $X$ correspond to the elements of $H^1(X,T_X)$ [H, Ex. III.4.10], by the pattern that gave $\operatorname{Pic}(X)\cong H^1(X,\mathcal O_X^\times)$ in Chapter 14.

The tangent sheaf of a curve is $\mathcal O(-K)$, so Serre duality (Theorem 14.9) makes $H^1(X,T_X)$ dual to $L(2K)$, the space of **quadratic differentials** $f\,(dx)^2$ without poles. For $g\geq2$ we have $\deg2K=4g-4>2g-2$, and Riemann–Roch gives
$$\dim H^1(X,T_X)=\ell(2K)=(4g-4)+1-g=3g-3.$$
Riemann's count and the cohomology agree. On a hyperelliptic curve $y^2=f(x)$ with $\deg f=2g+1$ the answer splits visibly. There $K=(2g-2)\infty$, and $L(2K)$ has the basis $x^i$ for $0\leq i\leq2g-2$, fixed by $y\mapsto-y$, and $yx^j$ for $0\leq j\leq g-3$. The $2g-1$ invariant functions give the deformations that stay hyperelliptic, and the $g-2$ others point out of the hyperelliptic family: in genus 3 there is exactly one, as the table predicts.

**The moduli space.** Mumford constructed $M_g$ in 1965 as a variety of dimension $3g-3$, using geometric invariant theory. It is only a **coarse** moduli space, because of the curves with extra automorphisms (Chapter 17), and the modern remedy is to treat $M_g$ as a stack. Deligne and Mumford (1969) compactified it by admitting **stable curves**, nodal curves with finitely many automorphisms, and used the compactification to prove that $M_g$ is irreducible in every characteristic. Families like those in the table exist only in low genus: Harris and Mumford (1982) showed that $M_g$ is of general type once $g$ is large, so the general curve of large genus cannot be written down with free parameters.

> **Look up.** J. Harris and I. Morrison, *Moduli of Curves*; E. Arbarello, M. Cornalba, P. Griffiths and J. Harris, *Geometry of Algebraic Curves*, vol. I, and its sequel, vol. II, by the first three authors; R. Hartshorne, *Deformation Theory*; P. Deligne and D. Mumford, "The irreducibility of the space of curves of given genus", *Publ. Math. IHÉS* 36 (1969).

## Road 3. The Weil conjectures {-}

> **The question.** The curve $y^2+y=x^3$ has 9 points over $\mathbb{F}_4$, 9 over $\mathbb{F}_{16}$ and 81 over $\mathbb{F}_{64}$ (Chapter 18). Does the first count determine the rest? For a curve of genus $g$, how many counts determine them all?

Package the counts $N_n=\#X(\mathbb{F}_{q^n})$ into the **zeta function**
$$Z(X,t)=\exp\Bigl(\sum_{n\geq1}N_n\frac{t^n}{n}\Bigr).$$

**Theorem (F. K. Schmidt, 1931).** For a smooth projective curve $X$ of genus $g$ over $\mathbb{F}_q$,
$$Z(X,t)=\frac{P(t)}{(1-t)(1-qt)},$$
where $P$ is a polynomial of degree $2g$ with integer coefficients and $P(0)=1$. Moreover $Z(X,1/(qt))=q^{1-g}t^{2-2g}Z(X,t)$.

The proof is Riemann–Roch. Sorting the points over each $\mathbb{F}_{q^n}$ by the closed points of $X$ they lie on turns $Z$ into a sum over the effective divisors defined over $\mathbb{F}_q$, $Z=\sum_{D\geq0}t^{\deg D}$. Group them by linear equivalence. There are the same finite number $h$ of classes in each degree, and a class $[D]$ contains $(q^{\ell(D)}-1)/(q-1)$ effective divisors, one for each line in $L(D)$. Once $\deg D>2g-2$, Riemann–Roch gives $\ell(D)=\deg D+1-g$, so all but finitely many terms form geometric series, and $Z$ is rational. The functional equation comes from pairing $D$ with $K-D$; it is Riemann–Roch in another guise.

Write $P(t)=\prod_{i=1}^{2g}(1-\alpha_it)$. Taking logarithms gives
$$N_n=q^n+1-\sum_{i=1}^{2g}\alpha_i^n,$$
and the functional equation pairs each $\alpha_i$ with $q/\alpha_i$. So $P$ is determined by its first $g$ coefficients, which are determined in turn by $N_1,\dots,N_g$. For $y^2+y=x^3$ one count is enough: $N_1=9$ gives $P(t)=1+4t+4t^2=(1+2t)^2$, so both $\alpha_i$ equal $-2$ and $N_n=4^n+1-2(-2)^n$, as Chapter 18 found. For $G:\ y^2=x^5-x$ over $\mathbb{F}_7$, of genus 2, the counts $N_1=8$ and $N_2=78$ give $P(t)=1+14t^2+49t^4$, which predicts $N_3=344$ and $N_4=2206$; direct counts agree. The value $P(1)$ is the number $h$ of divisor classes of degree 0 over $\mathbb{F}_q$, the order of the group $J(\mathbb{F}_q)$ of Road 1.

**The Riemann hypothesis.** The deep statement is that every $\alpha_i$ has absolute value $\sqrt q$. It gives the Hasse–Weil bound of Chapter 18 at once, since $\vert N_1-(q+1)\vert=\vert\sum_i\alpha_i\vert\leq2g\sqrt q$. In the variable $s$ with $t=q^{-s}$ it says that the zeros of $Z$ lie on the line $\operatorname{Re}s=\tfrac12$, which explains the name. E. Artin's thesis (1921) introduced these zeta functions for curves $y^2=f(x)$ and checked the hypothesis in examples. Hasse proved it for genus 1 in the 1930s, and Weil for every genus, announcing the proof in 1940 and publishing it in 1948. To make his proof rigorous Weil rebuilt the foundations of algebraic geometry, the algebraic Jacobian of Road 1 included. The proof uses intersection theory on the surface $X\times X$ [H, Ex. V.1.10]. Stepanov (1969) and Bombieri (1973) later found a proof that uses only Riemann–Roch, and that is the proof in [S, Chapter 5].

**Higher dimensions.** In 1949 Weil computed the zeta functions of the diagonal hypersurfaces $a_0x_0^m+\dots+a_rx_r^m=0$ with Gauss and Jacobi sums. He then conjectured what should be true for every smooth projective variety $X$ of dimension $d$ over $\mathbb{F}_q$:

1. $Z(X,t)$ is a rational function $\dfrac{P_1(t)P_3(t)\cdots P_{2d-1}(t)}{P_0(t)P_2(t)\cdots P_{2d}(t)}$, with each $P_i\in\mathbb{Z}[t]$;
2. it satisfies a functional equation exchanging $t$ and $1/(q^dt)$;
3. the reciprocal roots of $P_i$ have absolute value $q^{i/2}$ (the Riemann hypothesis);
4. if $X$ is the reduction of a variety defined over a number field, then $\deg P_i$ is the $i$-th Betti number of the corresponding complex variety.

For a curve, the last statement links counting points to counting holes: $\deg P=2g$ is the number of independent loops on the surface of Chapter 10. For $\mathbb{P}^1\times\mathbb{P}^1$, with $N_n=(q^n+1)^2$, the zeta function is $1/\bigl((1-t)(1-qt)^2(1-q^2t)\bigr)$, and the exponents $1,2,1$ are the Betti numbers of a product of two spheres.

Dwork proved rationality in 1960 by $p$-adic analysis. Grothendieck, with M. Artin and Verdier, built étale cohomology so that a Lefschetz fixed-point formula would give rationality and the functional equation, and by the mid-1960s it did. The $\alpha_i$ became the eigenvalues of Frobenius acting on cohomology. Deligne proved the Riemann hypothesis in 1974.

> **Look up.** [S, Chapter 5] for curves; [H, Appendix C] for all dimensions; K. Ireland and M. Rosen, *A Classical Introduction to Modern Number Theory*, Chapters 8, 10 and 11, for Gauss and Jacobi sums and Weil's diagonal hypersurfaces; J. S. Milne, "The Riemann hypothesis over finite fields: from Weil to the present day"; P. Roquette, "The Riemann hypothesis in characteristic $p$, its origin and development", for the history.

## Road 4. Rational points {-}

> **The question.** Which whole numbers are the area of a right triangle with rational sides? The 3–4–5 triangle has area 6, and the triangle with sides $\tfrac32,\tfrac{20}{3},\tfrac{41}{6}$ has area 5. Fermat proved that 1 is not such an area (Chapter 1).

These numbers are called **congruent numbers**. A right triangle with rational sides $a,b,c$ and area $n$ gives the rational point
$$\Bigl(\bigl(\tfrac c2\bigr)^2,\ \tfrac{c\,(b^2-a^2)}{8}\Bigr)$$
on the curve $E_n:\ y^2=x^3-n^2x$. The 3–4–5 triangle gives $(\tfrac{25}{4},\tfrac{35}{8})$ on $y^2=x^3-36x$. Conversely, a rational point with $y\neq0$ gives a triangle. The only torsion points of $E_n(\mathbb{Q})$ are $O$ and the three points with $y=0$, so $n$ is congruent exactly when $E_n(\mathbb{Q})$ has positive rank. For $n=1$ the curve $E_1$ is our $E$, and Fermat's theorem is the statement $E(\mathbb{Q})=\{O,(0,0),(\pm1,0)\}$ of Chapter 1. The question is about ranks.

Ranks are the subject of the **Birch and Swinnerton-Dyer conjecture**. Build the $L$-function of an elliptic curve $E$ over $\mathbb{Q}$ from its point counts modulo primes:
$$\begin{gathered}L(E,s)=\prod_{p\ \text{good}}\frac{1}{1-a_pp^{-s}+p^{1-2s}}\times(\text{factors for the bad primes}),\\ a_p=p+1-\#E(\mathbb{F}_p).\end{gathered}$$
Each factor is $1/P(p^{-s})$, where $P(t)=1-a_pt+pt^2$ is the numerator from Road 3 for the curve modulo $p$. Computing on the EDSAC 2 at Cambridge in the early 1960s, Birch and Swinnerton-Dyer found that curves with many rational points tend to have many points modulo $p$, and conjectured:

**Conjecture (Birch–Swinnerton-Dyer).** The rank of $E(\mathbb{Q})$ equals the order of vanishing of $L(E,s)$ at $s=1$.

The product converges only for $\operatorname{Re}s>\tfrac32$, and that $L(E,s)$ extends to $s=1$ at all follows from the modularity of elliptic curves (Wiles and Taylor–Wiles, 1995; Breuil, Conrad, Diamond and Taylor, 2001). When $L(E,s)$ vanishes to order 0 or 1 at $s=1$, the rank is known to be 0 or 1 respectively: Coates and Wiles (1977) proved the first case for curves with complex multiplication, such as the $E_n$, and Gross–Zagier and Kolyvagin proved both cases in general in the 1980s. The full conjecture, which also predicts the leading coefficient in terms of Ш and other invariants, is open; it is one of the Clay Millennium Problems.

For congruent numbers it leads to **Tunnell's theorem** (1983). For odd squarefree $n$, let $A_n$ and $B_n$ count the integer solutions of $n=2x^2+y^2+32z^2$ and of $n=2x^2+y^2+8z^2$. If $n$ is congruent then $B_n=2A_n$, and if the Birch–Swinnerton-Dyer conjecture holds for $E_n$ the converse holds too; a similar pair of forms handles even $n$. For $n=1$ the counts are $A_1=B_1=2$, and for $n=3$ they are $A_3=B_3=4$, so neither is congruent: Fermat's theorem again, this time from $L(E,1)\neq0$. For every odd $n\equiv5$ or $7\pmod8$ both counts are 0, and indeed 5 and 7 are congruent. The conjecture predicts that every squarefree $n\equiv5$, 6 or $7\pmod8$ is congruent.

**Beyond genus 1.** The genus decides the shape of the answer to "how many rational points?":

- genus 0: none, or infinitely many, parametrized by a line (Chapter 16);
- genus 1: none, or a finitely generated group of them (Mordell);
- genus 2 or more: finitely many.

Mordell conjectured the last line in his paper of 1922, and Faltings proved it in 1983. The Fermat curve $x^n+y^n=1$ is a smooth plane curve of genus $(n-1)(n-2)/2$ (Chapter 10), at least 3 once $n\geq4$. So by Faltings's theorem, for each $n\geq4$ the equation $a^n+b^n=c^n$ has only finitely many solutions in coprime integers. That it has none, as Fermat claimed in the epigraph of Chapter 1, was proved by Wiles in 1995, and the proof runs through genus 1. Frey observed that a solution of $a^p+b^p=c^p$ with $p\geq5$ prime would produce the elliptic curve $y^2=x(x-a^p)(x+b^p)$, too strange to be modular; Ribet proved that in 1986, as Serre had predicted, and Wiles proved that the curve would have to be modular. A question about curves of large genus was settled by the arithmetic of genus 1. For $n=4$, Fermat's own descent gives the exact answer: the Fermat quartic has only the four points $(\pm1,0)$ and $(0,\pm1)$.

Faltings's theorem is ineffective: no known proof bounds the size of the rational points, so none gives a way to find them all. When the Jacobian has small rank there is a sharper tool.

**Theorem (Coleman 1985, after Chabauty 1941).** Let $X$ be a curve over $\mathbb{Q}$ of genus $g\geq2$ whose Jacobian has rank less than $g$. Then for every prime $p>2g$ of good reduction,
$$\#X(\mathbb{Q})\leq\#X(\mathbb{F}_p)+2g-2.$$

The proof integrates differentials $p$-adically, in a $p$-adic version of the Abel–Jacobi map, and the term $2g-2$ is $\deg K$, the number of zeros of a regular differential. Point counts over finite fields bound the rational points.

> **Look up.** N. Koblitz, *Introduction to Elliptic Curves and Modular Forms*, built around congruent numbers and Tunnell's theorem; J. H. Silverman and J. Tate, *Rational Points on Elliptic Curves*; [Si, Chapter VIII] for Mordell–Weil; M. Hindry and J. H. Silverman, *Diophantine Geometry*, which proves Faltings's theorem; W. McCallum and B. Poonen, "The method of Chabauty and Coleman"; G. Cornell, J. H. Silverman and G. Stevens (eds.), *Modular Forms and Fermat's Last Theorem*.

## Road 5. Riemann–Roch in higher dimensions {-}

> **The question.** On a curve, Riemann–Roch counts the functions whose poles are bounded by a divisor. On a surface, the poles of a function lie along curves. How many functions have poles bounded by a given curve, and what plays the part of the genus?

On a smooth projective surface $X$ a divisor is a formal sum of curves, and two divisors have an **intersection number** $D\cdot D'$. On $\mathbb{P}^2$, where a curve of degree $d$ is linearly equivalent to $d$ times a line $H$, this is Bézout's theorem (Chapter 3): $(dH)\cdot(eH)=de$. A canonical divisor $K$ is the divisor of a 2-form $f\,dx\wedge dy$. Cohomology now has three groups, and the computable quantity is $\chi(D)=h^0(D)-h^1(D)+h^2(D)$.

**Theorem (Riemann–Roch for surfaces).** $\chi(D)=\chi(\mathcal O_X)+\tfrac12D\cdot(D-K)$. Serre duality gives $h^2(D)=h^0(K-D)$, and **Noether's formula** gives the constant: $\chi(\mathcal O_X)=\tfrac1{12}(K^2+e)$, where $e$ is the topological Euler characteristic of $X$.

On $\mathbb{P}^2$ we have $K=-3H$, since $dx\wedge dy$ has a pole of order 3 along the line at infinity, and the higher cohomology of $dH$ vanishes for $d\geq0$. So the number of independent forms of degree $d$ is
$$\chi(dH)=1+\tfrac12\,d(d+3)=\binom{d+2}{2},$$
the number of monomials of degree $d$ in three variables. Noether's formula checks out too: $K^2=9$ and $e=3$, and $(9+3)/12=1$.

The genus formula returns as a special case. For a smooth curve $C$ on a surface, the **adjunction formula** says that $2g(C)-2=C\cdot(C+K)$ [H, Ex. V.1.3]. For a plane curve of degree $d$ this is $2g-2=d(d-3)$, the formula of Chapter 10. On $\mathbb{P}^1\times\mathbb{P}^1$, where $K$ has bidegree $(-2,-2)$, a smooth curve of bidegree $(a,b)$ has genus $(a-1)(b-1)$. That is the number of interior lattice points of its Newton rectangle, in agreement with Baker's Theorem 12.8.

**All dimensions.** Hirzebruch (1954) found the formula for every smooth projective complex variety $X$ and every vector bundle $V$ on it:
$$\chi(X,V)=\int_X\operatorname{ch}(V)\,\operatorname{td}(T_X).$$
Here the Chern character $\operatorname{ch}$ and the Todd class $\operatorname{td}$ are polynomials in Chern classes, and $\int_X$ takes the part of top degree. On a curve, $\operatorname{ch}(\mathcal O(D))=1+D$ and $\operatorname{td}(T_X)=1-\tfrac12K$, and the part of degree one in the product is $D-\tfrac12K$, of degree $\deg D+1-g$: Theorem 15.1. On a surface the same recipe gives the theorem above, Noether's formula included. Grothendieck (1957) made the theorem relative, for a proper morphism, with Hirzebruch's theorem as the case of a map to a point. To state it he introduced the group $K(X)$ built from vector bundles, the beginning of K-theory; Borel and Serre published his proof in 1958. In 1963 Atiyah and Singer proved the index theorem, which reads Riemann–Roch as a statement about elliptic differential operators on any compact manifold.

> **Look up.** [H, V.1, Theorem 1.6] for surfaces, and [H, Appendix A] for the theorems of Hirzebruch and Grothendieck; A. Beauville, *Complex Algebraic Surfaces*; W. Fulton, *Intersection Theory*, the standard reference for Riemann–Roch in every dimension; D. Eisenbud and J. Harris, *3264 and All That*, for intersection theory through examples.

## A last problem {-}

Gauss found the statement in the epigraph by computing, which is what "made by induction" means. With the book behind you, you can prove it.

> **The last problem.** Let $p$ be an odd prime. Show that the number of solutions $(x,y)\in\mathbb{F}_p^2$ of
> $$x^2+y^2+x^2y^2=1$$
> is $p+1$ if $p\equiv3\pmod4$, and $p-3-2a$ if $p\equiv1\pmod4$, where $p=a^2+b^2$ with $b$ even and $a+b\equiv1\pmod4$.

For instance $5=(-1)^2+2^2$, $13=3^2+2^2$, $17=1^2+4^2$ and $29=(-5)^2+2^2$, so there should be 4, 4, 12 and 36 solutions. Gauss's form of the answer counts four more points, and $(a-1)^2+b^2=p+1-2a$. Here is a route through the book.

1. **The curve.** In $\mathbb{P}^1\times\mathbb{P}^1$ the closure of the curve is smooth of bidegree $(2,2)$, so it has genus 1 (Road 5). Its points at infinity are $x=\infty,\ y=\pm i$ and $x=\pm i,\ y=\infty$, four of them when $-1$ is a square modulo $p$ and none otherwise: the extra solutions in Gauss's statement. So the claim is that the smooth curve has $p+1-2a$ points, or $p+1$.
2. **A better model.** From the equation, $y^2=(1-x^2)/(1+x^2)$, so $Y=y(1+x^2)$ satisfies $Y^2=1-x^4$. The curve is birational to the lemniscate curve, hence isomorphic to $\widehat\Lambda$ (Chapter 7). That is $Y^2=X^3+4X$ (Chapter 16), which is isogenous to $E:\ y^2=x^3-x$ (Chapter 17). Isogenous curves have the same number of points, so it is enough to count $E(\mathbb{F}_p)$.
3. **When $p\equiv3\pmod4$.** Here $-1$ is not a square. Since $(-x)^3-(-x)=-(x^3-x)$, for each $x\neq0,\pm1$ exactly one of $x^3-x$ and $(-x)^3-(-x)$ is a square. Count.
4. **When $p\equiv1\pmod4$.** Now $i\in\mathbb{F}_p$, so the automorphism $[i](x,y)=(-x,iy)$ of $E$ (Corollary 17.3) is defined over $\mathbb{F}_p$. It commutes with the Frobenius map $\phi(x,y)=(x^p,y^p)$. The endomorphisms that commute with $[i]$ form $\mathbb{Z}[i]$ [Si, III.9], so $\phi$ is a Gaussian integer $\pi$ with $\pi\bar\pi=\deg\phi=p$. The group $E(\mathbb{F}_p)$ is the kernel of the separable map $1-\phi$, so $\#E(\mathbb{F}_p)=\deg(1-\phi)=(1-\pi)(1-\bar\pi)$ [Si, V.1]. That is $(a-1)^2+b^2$ when $\pi=a+bi$.
5. **Which $\pi$.** Show that $E(\mathbb{F}_p)$ contains a point $Q$ with $2Q=(0,0)$ as well as the three points of order 2, so that 8 divides $(1-\pi)(1-\bar\pi)$. The only Gaussian prime over 2 is $1+i$, and $2+2i$ has norm 8, so this forces $\pi\equiv1\pmod{2+2i}$: Gauss's condition. Of the eight Gaussian integers of norm $p$, only a conjugate pair satisfies it, and both members have real part $a$, with $a$ and $b$ as in the problem.

The problem runs along several roads. Gauss's curve has the rational point $(1,0)$, so it is its own Jacobian, and complex multiplication by $i$ is what makes its Frobenius computable. The bound $\vert2a\vert<2\sqrt p$ is the Riemann hypothesis for this curve, seen by Gauss more than a century before Hasse. The numbers $a_p=2a$, and $a_p=0$ for $p\equiv3\pmod4$, are the coefficients of $L(E,s)$, whose value at $s=1$ decides through Tunnell's theorem that 1 is not a congruent number. The first published proof of the entry is Herglotz's, from 1921.

> **Look up.** F. Oort, "Gauss: the last entry", *Notices of the ICCM* 4 (2016), on the history of the entry and its proofs; Ireland and Rosen, §11.5, and their Chapter 18 on the curves $y^2=x^3-Dx$ and $y^2=x^3+D$; [Si, III.9 and V.1].

## A short shelf {-}

Beyond the references along each road, a few books carry the whole subject further.

- **Foundations.** U. Görtz and T. Wedhorn, *Algebraic Geometry I: Schemes*; Q. Liu, *Algebraic Geometry and Arithmetic Curves*, which builds schemes with curves over rings such as $\mathbb{Z}$ in mind; and the rest of [V].
- **Curves over $\mathbb{C}$.** O. Forster, *Lectures on Riemann Surfaces*; R. Miranda, *Algebraic Curves and Riemann Surfaces*; S. Donaldson, *Riemann Surfaces*. They do the analytic side of this book in full.
- **Arithmetic.** [Si] and its sequel, *Advanced Topics in the Arithmetic of Elliptic Curves*; B. Poonen, *Rational Points on Varieties*.
- **History.** J. Dieudonné, *History of Algebraic Geometry*, an outline of the whole development from the Greeks to schemes.

## One number, again {-}

The Preface said that the real subject of this book is why one number counts the holes of a surface, the regular differentials, the obstruction to partial fractions and the correction in Riemann–Roch. Every road out of the book is marked by the same number. The Jacobian has dimension $g$. Curves of genus $g$ have $3g-3$ moduli. The zeta function has $2g$ Frobenius eigenvalues, one for each independent loop. The rational points are parametrized by a line when $g=0$, form a finitely generated group when $g=1$, and are finite in number when $g\geq2$. And the correction term $1-g$ is half the degree of $-K$, the first piece of the Todd class that corrects Riemann–Roch in every dimension.

Diophantus drew a line through a point of a circle, and the Pythagorean triples fell out. This book grew from asking why the same line fails on a cubic. The roads above ask that question of every curve, over every field and in every dimension, and none of them has come to an end.
