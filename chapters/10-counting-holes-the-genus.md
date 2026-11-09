# Counting Holes: The Genus

## The Problem

> **Problem 10.** (a) Find every regular differential on the Fermat quartic $x^4+y^4=1$.
> (b) The curve $\widehat G$, the smooth model of $y^2=x^5-x$, has exactly two independent regular differentials, as we check below. Does any smooth plane curve have exactly two? Equivalently, can $\widehat G$ be drawn as a smooth curve in the plane?

Chapter 9 showed that a single nonzero regular differential is enough to rule out a rational parametrization. The space $\Omega^1(X)$ of regular differentials is finite-dimensional, and its dimension is the number that this chapter calls the **genus**. Chapter 1 met the genus as a formula for plane curves, "$\frac{(d-1)(d-2)}{2}$ minus a correction for each singular point", and the preface listed a genus for every curve in the cast. Here the smooth case of that formula is proved.

Part (b) is a debt from Chapter 7. There $\widehat G$ had to be built in $\mathbb{P}^4$, because every plane model we tried had a singular point, and Chapter 7 claimed that this was inevitable.

Over $\mathbb{C}$ the genus has a second meaning, which gives the chapter its title. A smooth projective curve over $\mathbb{C}$ is a compact surface, and its genus is the number of holes in that surface.

## First Attempts

**Multiply the differential we have.** By Theorem 9.12, $\omega_0=dx/y^3$ is regular on the Fermat quartic $C$, and its divisor is $H=P_1+P_2+P_3+P_4$, the four points at infinity. Every differential is $h\,\omega_0$ for some function $h$, and by Section 9.3, $h\,\omega_0$ is regular exactly when $h\in L(H)$, that is, when $h$ has no poles except simple poles at the $P_i$. At each $P_i$ the functions $x$ and $y$ have simple poles, because $1/x$ is a uniformizer there and $y/x$ is regular (proof of Theorem 9.12). So $\omega_0$, $x\,\omega_0$ and $y\,\omega_0$ are regular. On the other hand $x^2\omega_0$, with double poles, is not.

Are there others? A function in $L(H)$ is regular on the affine curve, so it is a polynomial in $x$ and $y$ (Section 7.3). But the degree of a polynomial does not determine the function it defines: $x^4+y^4$ has degree 4 and is the constant 1 on $C$. Perhaps a cleverer polynomial of high degree has its poles cancel down to simple ones.

**Guess the pattern.** On any smooth plane curve of degree $d$, Theorem 9.12 gives $\operatorname{div}(dx/f_y)=(d-3)H$, so the same reasoning produces the regular differentials $h\,dx/f_y$ with $\deg h\leq d-3$. That is $\binom{d-1}{2}$ independent differentials, which gives $0,0,1,3,6,10,\dots$ for $d=1,2,3,\dots$. If this count is exact, the answer to (b) is no, since 2 is not on the list.

**Search for a smooth plane model of $\widehat G$.** Chapter 7 tried two plane models: the quintic $y^2z^3=x^5-xz^4$, which has a triple point at $[0:1:0]$, and the quartic $xs^2z=x^4-z^4$, which has a node. Every pair of generators of $k(G)$ gives another plane model, and there are infinitely many pairs. Trial and error can never show that all of them are singular.

So two things are needed. The number of regular differentials must not depend on the model, and the guess must be exact: no exotic regular differentials beyond the polynomial ones.

## The Ideas We Need

### The genus {-}

**Definition 10.1.** The **genus** of a smooth projective curve $X$ is
$$g(X)=\dim_k\Omega^1(X),$$
the number of independent regular differentials. The genus of any curve is the genus of its smooth projective model.

The genus is finite, because $\Omega^1(X)\cong L(K_X)$ (Section 9.3). It is also a birational invariant. Differentials and their orders are defined from the function field and its places alone, so curves with isomorphic function fields have the same genus. Equivalently, by Proposition 9.8, an isomorphism of smooth projective curves carries regular differentials to regular differentials in both directions. So the first requirement of Section 10.2 is met.

> **Look up.** The geometric genus $p_g=\dim\Gamma(X,\omega_X)$ and its birational invariance: [H, II.8, Theorem 8.19]. Riemann's definition of the genus by counting functions: [F, §8.3]; [S, Chapter 1]. Chapter 15 shows that the definitions agree.

**Proposition 10.2 (the genus so far).**

1. Every rational curve has genus 0. In particular, the circle, the node and the cusp have genus 0.
2. $E$, the lemniscate curve and every smooth plane cubic have genus 1.
3. $\widehat G$ has genus 2, and $\Omega^1(\widehat G)$ is spanned by $dx/y$ and $x\,dx/y$.
4. A curve of positive genus cannot be parametrized by rational functions.

*Proof.*

1. The smooth projective model of a rational curve is $\mathbb{P}^1$, which has no nonzero regular differentials (Proposition 9.9).
2. Each of these curves carries a differential $\omega$ with $\operatorname{div}(\omega)=0$ (Theorems 9.11 and 9.12, Corollary 9.13). So $\Omega^1=L(0)\cdot\omega=k\cdot\omega$.
3. As for $E$, the map $x:\widehat G\to\mathbb{P}^1$ has degree 2 and is ramified at the five points $(a,0)$ with $a^5=a$ and at $\infty$, so Proposition 9.6 gives $\operatorname{div}(dx)=\sum_a(a,0)-3\infty$. The function $y$ vanishes simply at the five points $(a,0)$, and $v_\infty(y)=-5$ (Chapter 7), so $\operatorname{div}(y)=\sum_a(a,0)-5\infty$. Hence $\operatorname{div}(dx/y)=2\infty$ and $\Omega^1(\widehat G)=L(2\infty)\cdot dx/y$. By Chapter 8's table, $L(2\infty)$ has dimension 2, with basis $1,x$.
4. This is Theorem 9.10. $\square$

Part 4 is the "only if" half of Theorem 1.6, in exactly the form Chapter 1 stated it.

### Functions with poles only at infinity {-}

In this subsection and in Theorem 10.6, $C$ is a smooth projective plane curve of degree $d$ with affine equation $f(x,y)=0$, in coordinates as in Theorem 9.12. That is, the line at infinity meets $C$ in $d$ distinct points $P_1,\dots,P_d$, none of which is $[0:1:0]$. Write $H=P_1+\dots+P_d$ and $P_i=[1:b_i:0]$.

**Lemma 10.3.** For every $m\geq0$, $L(mH)$ consists of the restrictions to $C$ of the polynomials $h(x,y)$ of degree at most $m$. In particular $\ell(mH)=\binom{m+2}{2}$ for $0\leq m<d$.

*Proof.* At each $P_i$ we have $v(x)=-1$, and $v(y)\geq-1$ because $y/x$ is regular there. So polynomials of degree at most $m$ lie in $L(mH)$.

Conversely, let $\varphi\in L(mH)$. It is regular at every affine point, so it is the restriction of a polynomial. Choose a polynomial $h$ of smallest possible degree $n$ that restricts to $\varphi$, and suppose that $n>m$. Write $h_n$ for its homogeneous part of degree $n$. Then
$$h(x,y)=x^n\Bigl(h_n\bigl(1,\tfrac yx\bigr)+(\text{terms with a factor }\tfrac1x)\Bigr),$$
and the bracket takes the value $h_n(1,b_i)$ at $P_i$. Since $v_{P_i}(h)\geq-m>-n$, every $h_n(1,b_i)$ must be 0. So the binary form $h_n$ vanishes at the $d$ distinct points $[1:b_i]$, which are exactly the zeros of the top-degree part $f_d$ of $f$. If $n<d$ this forces $h_n=0$, which is absurd. If $n\geq d$, then $f_d$ divides $h_n$, say $h_n=qf_d$, and $h-qf$ restricts to $\varphi$ with smaller degree. Either way we have a contradiction, so $n\leq m$.

Finally, if $m<d$ then no nonzero polynomial of degree at most $m$ vanishes on $C$, since it would be divisible by $f$. So $\ell(mH)$ is the number of monomials of degree at most $m$, which is $\binom{m+2}{2}$. $\square$

> **Look up.** Regular functions on an affine curve are its coordinate ring: [H, I.3, Theorem 3.2]; Section 7.3. For $m\geq d$ the same argument gives $\ell(mH)=\binom{m+2}{2}-\binom{m-d+2}{2}$ (Variation 2).

### Counting holes {-}

Over $\mathbb{C}$, the points of a smooth projective curve $X$ form a compact Riemann surface $X(\mathbb{C})$. As a topological space it is a compact, connected, orientable surface. By the classification of surfaces, it is a sphere with some number $g_{\mathrm{top}}$ of handles, and its Euler characteristic is $\chi=2-2g_{\mathrm{top}}$.

**Theorem 10.4.** For every smooth projective curve $X$ over $\mathbb{C}$, $g_{\mathrm{top}}=g(X)$. The number of holes equals the number of independent regular differentials.

*Reference.* [H, Appendix B] explains the passage from $X$ to the Riemann surface $X(\mathbb{C})$. Kirwan proves the theorem for smooth plane curves by computing both sides, and Miranda proves it for all algebraic curves (Section 10.8). $\square$

We can test the theorem on our curves with one topological tool.

**Proposition 10.5 (Euler characteristic of a branched cover).** Let $\varphi:X\to\mathbb{P}^1$ be a nonconstant morphism of degree $n$ over $\mathbb{C}$, with ramification indices $e_P$. Then
$$\chi\bigl(X(\mathbb{C})\bigr)=2n-\sum_P(e_P-1).$$

*Sketch.* Triangulate the sphere so that every branch value is a vertex. Each open edge and open face is simply connected and contains no branch value, so it has exactly $n$ disjoint preimages. Over a vertex $Q$ there are $n-\sum_{\varphi(P)=Q}(e_P-1)$ points, by Theorem 8.3. The preimages triangulate $X(\mathbb{C})$, so $\chi(X)=n\,\chi(S^2)-\sum_P(e_P-1)$. $\square$

Compare Proposition 9.6, applied to $x=\varphi$: $\deg K_X=\sum_P(e_P-1)-2n$. That is the same count with the opposite sign. So over $\mathbb{C}$,
$$\deg K_X=-\chi\bigl(X(\mathbb{C})\bigr)=2g_{\mathrm{top}}-2,$$
and by Theorem 10.4 this is $2g-2$, the pattern that Chapter 9's table displayed. Chapter 15 proves $\deg K_X=2g-2$ over every field, and Chapter 11 proves an algebraic version of Proposition 10.5, the Riemann–Hurwitz formula.

## The Solution

### Regular differentials on smooth plane curves {-}

**Theorem 10.6.** Let $C$ be a smooth plane curve of degree $d$, in coordinates as in Theorem 9.12. The regular differentials on $C$ are exactly
$$\frac{h(x,y)\,dx}{f_y}\qquad\text{with }\deg h\leq d-3.$$
Hence every smooth plane curve of degree $d$ has genus
$$g=\frac{(d-1)(d-2)}{2}.$$

*Proof.* By Theorem 9.12, $\operatorname{div}(dx/f_y)=(d-3)H$, so by Section 9.3
$$\Omega^1(C)=L\bigl((d-3)H\bigr)\cdot\frac{dx}{f_y}.$$
For $d\geq3$, Lemma 10.3 with $m=d-3<d$ identifies $L\bigl((d-3)H\bigr)$ with the polynomials of degree at most $d-3$, a space of dimension $\binom{d-1}{2}$. For $d\leq2$ the divisor $(d-3)H$ has negative degree, so $L\bigl((d-3)H\bigr)=0$ and $g=0=\binom{d-1}{2}$. Finally, the genus does not depend on coordinates, and Chapter 9 showed that suitable coordinates always exist. $\square$

This is the second half of the guess in Section 10.2: there are no exotic regular differentials. Lemma 10.3 is what rules out the cleverer polynomials, because a polynomial whose poles cancel at infinity can always be reduced modulo $f$ to one of lower degree.

### The Fermat quartic {-}

The Fermat quartic already has good coordinates: $[0:1:0]$ is not on it, and the line at infinity meets it in the four distinct points $[1:\zeta:0]$ with $\zeta^4=-1$. Here $f_y=4y^3$, so Theorem 10.6 answers part (a).

**The answer to (a).** The regular differentials on $x^4+y^4=1$ are exactly
$$\frac{(a+bx+cy)\,dx}{y^3},\qquad a,b,c\in k,$$
and the Fermat quartic has genus 3.

Their divisors have a pleasant description. The function $a+bx+cy$ is the linear form $aZ+bX+cY$ divided by $Z$. So its divisor is the line section $C\cdot L$ minus $C\cdot\{Z=0\}=H$, as in Section 8.4, and
$$\operatorname{div}\Bigl(\frac{(a+bx+cy)\,dx}{y^3}\Bigr)=C\cdot L,\qquad L:\ aZ+bX+cY=0.$$
The canonical divisors of the Fermat quartic are its line sections. Equivalently, the map $P\mapsto[\omega_1(P):\omega_2(P):\omega_3(P)]$ given by the basis $dx/y^3$, $x\,dx/y^3$, $y\,dx/y^3$ is $[1:x:y]$, the original embedding. The curve can rebuild its own plane model from its differentials (Variation 3).

Over $\mathbb{C}$ we can also count the holes. The map $x:C\to\mathbb{P}^1$ has degree 4. Over each fourth root of unity $a$ it has the single point $(a,0)$, with $e=4$, and it is unramified elsewhere: away from $y=0$, the vertical line through a point is not tangent, and at infinity there are four distinct points. Proposition 10.5 gives
$$\chi=2\cdot4-4\cdot3=-4,$$
so the Fermat quartic is a surface with three holes, as Theorem 10.4 predicts.

### Genus 2 is not a plane genus {-}

**Corollary 10.7.** The genus of a smooth plane curve is one of
$$0,\ 0,\ 1,\ 3,\ 6,\ 10,\ 15,\ \dots$$
for degrees $1,2,3,4,5,6,7,\dots$. In particular, no smooth plane curve has genus 2, and $\widehat G$ is not isomorphic, or even birational, to any smooth plane curve.

*Proof.* The genus of a smooth plane curve of degree $d$ is $\binom{d-1}{2}$ by Theorem 10.6, and these values jump from 1 straight to 3 and then keep growing. The curve $\widehat G$ has genus 2 by Proposition 10.2, and the genus is a birational invariant. $\square$

**The answer to (b).** No. Every plane model of $\widehat G$ is singular, which is why Chapter 7 had to leave the plane. The values $2,4,5,7,8,9,\dots$ are all missed, so most genera have no smooth plane curves at all.

The theorem also says what a singular model has lost. The quintic $y^2z^3=x^5-xz^4$ would have genus $\binom{4}{2}=6$ if it were smooth, yet its genus is 2: its triple point at infinity costs 4. The nodal quartic $xs^2z=x^4-z^4$ would have genus 3, and its node costs 1. Likewise the node and the cusp would be cubics of genus 1, and each singular point costs 1. Chapter 12 computes these costs, the $\delta$-invariants, and proves Chapter 1's formula $g=\frac{(d-1)(d-2)}{2}-\sum_P\delta_P$.

Over $\mathbb{C}$, Theorem 10.4 says that $\widehat G$ should have two holes, and Proposition 10.5 confirms it. The map $x:\widehat G\to\mathbb{P}^1$ has degree 2 and is ramified at the six points over $0,\infty,\pm1,\pm i$, so
$$\chi=2\cdot2-6=-2.$$
Those six values are the vertices of a regular octahedron on the Riemann sphere. Lifting the octahedron's triangulation (6 vertices, 12 edges, 8 faces) gives a triangulation of $\widehat G(\mathbb{C})$ with 6 vertices, 24 edges and 16 faces. For $E$, ramified only over $0,\pm1,\infty$, the same octahedron lifts to 8 vertices, 24 edges and 16 faces, a torus.

### The cast, counted {-}

The genus column of the preface's table is now proved.

| Curve | Genus | Reason | Over $\mathbb{C}$ |
|---|---|---|---|
| circle, node, cusp | 0 | rational (Chapter 5) | sphere |
| $E$, lemniscate curve, Fermat cubic | 1 | a differential with no zeros or poles (Chapter 9) | torus |
| $G$ | 2 | $\Omega^1$ spanned by $dx/y$ and $x\,dx/y$ | two holes |
| Fermat quartic | 3 | Theorem 10.6 | three holes |

## What Just Happened

- **The genus is a count of differentials.** It is the dimension of the space of regular differentials. Because differentials and their orders come from the function field, the genus is a birational invariant, and a curve of positive genus cannot be parametrized.
- **On a plane curve, functions with poles at infinity are polynomials.** Their degree is controlled by the order of their poles, after reduction modulo the equation (Lemma 10.3).
- **The regular differentials on a smooth plane curve are $h\,dx/f_y$ with $\deg h\leq d-3$.** So the genus is $\frac{(d-1)(d-2)}{2}$. On the Fermat quartic they are $(a+bx+cy)\,dx/y^3$, the genus is 3, and the canonical divisors are the line sections.
- **Genus 2 is not a plane genus.** Smooth plane curves have genus $0,0,1,3,6,10,\dots$. So $\widehat G$, of genus 2, has no smooth plane model, and every plane model of it is singular.
- **Over $\mathbb{C}$, the genus counts holes.** A branched cover of the sphere has Euler characteristic $2n-\sum(e_P-1)$, which is $-\deg K_X$. The curves of genus 0, 1, 2 and 3 in the cast are a sphere and surfaces with one, two and three holes.

## Threads

**When are two curves the same?** The genus is the first global invariant that separates curves. $\mathbb{P}^1$, $E$, $\widehat G$ and the Fermat quartic have genera 0, 1, 2 and 3, so no two of them are isomorphic, or even birational. Equal genus does not mean isomorphic: curves of genus 1 form a one-parameter family, told apart by the $j$-invariant of Chapter 17. $E$ and the lemniscate curve have the same genus and, over $\mathbb{C}$, are the same curve (Chapter 9).

**Which curves can be parametrized?** Rational curves have genus 0 (Proposition 10.2). Chapter 16 proves the converse with Riemann–Roch, completing Theorem 1.6.

**Riemann–Roch.** In Chapter 8, $\ell(n\infty)$ fell short of $n+1$ by 1 on $E$ and by 2 on $\widehat G$. On the Fermat quartic, $\ell(mH)=4m-2$ for $m\geq2$, which falls short of $\deg(mH)+1$ by 3 (Variation 2). Each time the shortfall is the genus, and Chapter 15 explains why.

**Where did the genus go?** A singular plane curve has smaller genus than a smooth one of the same degree. Chapter 12 measures the loss at each singular point, with $\delta$-invariants, blow-ups and Puiseux expansions.

**Covers of the line.** Proposition 10.5 counts the holes of a branched cover of the sphere. Chapter 11 proves the algebraic version, the Riemann–Hurwitz formula, which works over any field. In characteristic $p$ it also has to handle wild ramification.

**What is a curve?** Over $\mathbb{C}$ a smooth projective curve is also a compact Riemann surface. The genus is visible in both worlds: as the number of holes, and as the number of independent holomorphic 1-forms.

## Variations

These are optional. A hint follows each one.

**Variation 1.** Show that the Fermat curve $x^n+y^n=1$ has genus $\binom{n-1}{2}$, with basis $x^ay^b\,dx/y^{n-1}$ for $a+b\leq n-3$. Confirm the count of holes using the map $x$.
*Hint:* The coordinates are already good, as for the quartic. The map $x$ has degree $n$ and is totally ramified over the $n$-th roots of unity, so Proposition 10.5 gives $\chi=2n-n(n-1)$. Chapter 11 recovers this from the Riemann–Hurwitz formula.

**Variation 2.** On a smooth plane curve of degree $d$, in good coordinates, show that
$$\ell(mH)=\binom{m+2}{2}-\binom{m-d+2}{2}\qquad(m\geq d),$$
and deduce that $\ell(mH)=md+1-g$ for $m\geq d-2$. Then show that $\ell(mH)-\ell(K-mH)=md+1-g$ for every integer $m$, where $K=(d-3)H$. On the Fermat quartic, find $\ell(mH)=4m-2$ for $m\geq2$.
*Hint:* By Lemma 10.3, $L(mH)$ is the image of the polynomials of degree at most $m$, and the kernel consists of the multiples $qf$ with $\deg q\leq m-d$. This is Chapter 15's Riemann–Roch theorem for the divisors $mH$.

**Variation 3.** Show that $P\mapsto[1:x:y]$ is the map defined by the regular differentials of the Fermat quartic, as in Section 10.4. What does the same recipe give on $\widehat G$?
*Hint:* On $\widehat G$ the basis $dx/y$, $x\,dx/y$ gives the map $[1:x]$ to $\mathbb{P}^1$, which is two-to-one, and every canonical divisor is a fibre $P+P'$ of $x$. Chapter 17 shows that these are the only two behaviours for a curve of genus at least 2, which is either "canonical" or "hyperelliptic".

**Variation 4.** The nodal quartic $xs^2z=x^4-z^4$ is a model of $\widehat G$ with its node at $[0:1:0]$ (Chapter 7), with affine equation $f=xs^2-x^4+1$. The recipe of Theorem 10.6 offers the three differentials $h\,dx/f_s$ for $h=1,x,s$. Using $s=y/x$, show that they are $\tfrac12dx/y$, $\tfrac12x\,dx/y$ and $\tfrac12dx/x$, and that only the first two are regular on $\widehat G$. Which of the lines $z=0$, $x=0$ and $s=0$ pass through the node?
*Hint:* $f_s=2xs=2y$. The function $s$ has a simple pole at $(0,0)$ and a triple pole at $\infty$, the two points of $\widehat G$ pinched together in the node, and $dx/x=s\,dx/y$ has a simple pole at each. The regular differentials come from the lines through the node. Chapter 12 makes this the general rule, with "adjoint curves".

**Variation 5.** For a plane curve $F=0$ of degree $d$, smooth or not, show that the homogeneous coordinate ring $k[X,Y,Z]/(F)$ has dimension $dm+1-\binom{d-1}{2}$ in each degree $m\geq d-2$. The number $\binom{d-1}{2}$ is the **arithmetic genus**. Why does it agree with the genus for smooth curves but not for the node?
*Hint:* Multiplication by $F$ maps forms of degree $m-d$ injectively into forms of degree $m$. For the node the arithmetic genus is 1 but the genus is 0: the arithmetic genus is blind to singular points. See [H, Ex. I.7.2] and Chapter 12.

## Reading Map

- **[H, II.8 and Ex. I.7.2]:** the canonical sheaf and the geometric genus $p_g$, its birational invariance (Theorem 8.19), and the adjunction formula (Proposition 8.20), which gives $\omega_C\cong\mathcal O_C(d-3)$ for a smooth plane curve. Exercise I.7.2 computes the arithmetic genus of a plane curve from its Hilbert polynomial.
- **[F, Chapter 8]:** Riemann's definition of the genus (§8.3), with the formula $\frac{(n-1)(n-2)}{2}-\sum\frac{r_P(r_P-1)}{2}$ for plane curves with ordinary multiple points, and canonical divisors (§8.5).
- **[S, Chapter 1]:** the genus of a function field, defined through Riemann's inequality, and the space of regular Weil differentials, whose dimension is the genus.
- **F. Kirwan, *Complex Algebraic Curves*,** Chapters 4 and 6: the topology of smooth plane curves, including the degree–genus formula, and holomorphic differentials of the form $h\,dx/(\partial f/\partial y)$.
- **R. Miranda, *Algebraic Curves and Riemann Surfaces*:** the topological genus, triangulations and Hurwitz's formula, and the proof that the holomorphic 1-forms on an algebraic curve of genus $g$ form a space of dimension $g$.
- **[H, Appendix B]:** the comparison between complex algebraic curves and compact Riemann surfaces.
- **B. Riemann, "Theorie der Abel'schen Functionen",** *Journal für die reine und angewandte Mathematik* 54 (1857): the genus $p$ of a Riemann surface, both as a count of integrals of the first kind and through the connectivity of the surface.
