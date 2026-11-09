# Counting Functions: The Riemann–Roch Theorem

```{=latex}
\chaptermark{Counting Functions}
```

## The Problem

Chapter 8 counted, on three curves, the functions whose only pole is at $\infty$, of order at most $n$. Writing $\ell(n\infty)$ for the dimension of that space, it found:

| $n$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|---|
| $\mathbb{P}^1$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
| $E$ | 1 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
| $\widehat G$ | 1 | 1 | 2 | 2 | 3 | 4 | 5 | 6 | 7 |

> **Problem 15.** Explain this table.
> (a) Prove that each row eventually reads $\ell(n\infty)=n+1-g$, where $g$ is the genus, and find where that begins.
> (b) No function on $E$ has a single simple pole, and no function on $\widehat G$ whose only pole is at $\infty$ has a pole of order 1 or 3. Show that at every point of a curve of genus $g$, exactly $g$ pole orders are missing.
> (c) Does every point of $\widehat G$ miss the orders 1 and 3?

Chapters 8 and 10 kept meeting the same shortfall. Eventually $\ell(n\infty)$ falls short of $n+1$ by 1 on $E$ and by 2 on $\widehat G$, and on the Fermat quartic $\ell(mH)$ falls short of $4m+1$ by 3. Each time the shortfall is the genus. Riemann found the inequality behind this in 1857, and his student Roch found the exact correction in 1865.

Chapter 14 did the hard work, so the theorem now takes a few lines. The rest of the chapter collects what it buys: the degree of the canonical class, which Chapter 11 borrowed; the missing pole orders, called **Weierstrass gaps**; and the projective embeddings that Chapter 7 promised. As in Chapter 14, $k$ is algebraically closed of any characteristic, except 2 when $E$ or $G$ appears.

## First Attempts

**An upper bound.** Proposition 8.8 gives $\ell(D)\leq\deg D+1$ when $\deg D\geq0$, with equality on $\mathbb{P}^1$. It cannot explain a shortfall.

**Count parameters, as Riemann did.** Let $D\geq0$. A function in $L(D)$ is determined up to an added constant by its principal parts, and the prescriptions with poles bounded by $D$ form a space of dimension $\deg D$. Chapter 14 says which of them occur: those that pass $g$ residue tests, one for each element of a basis of $\Omega^1(X)$ (Corollary 14.10). At most $g$ conditions, plus one constant, give
$$\ell(D)\geq\deg D+1-g.$$
The table shows that the conditions can be dependent. On $\widehat G$ with $D=2\infty$ this bound is 1, but $\ell(2\infty)=2$, because of $x$. The reason is visible in Chapter 14's terms. The differential $dx/y$ vanishes to order 2 at $\infty$, so for a principal part $r$ with a pole of order at most 2 there, $r\,dx/y$ is regular at $\infty$ and has no residue. The test given by $dx/y$ is blind to such prescriptions. In general a test is blind to the prescriptions bounded by $D$ exactly when its differential vanishes along $D$, so the correction should count the regular differentials with $\operatorname{div}(\omega)\geq D$. That number is $\ell(K-D)$.

## The Ideas We Need

Throughout, $X$ is a smooth projective curve of genus $g$ with canonical divisor $K=\operatorname{div}(\omega_0)$.

### The theorem {-}

**Theorem 15.1 (Riemann–Roch).** For every divisor $D$ on $X$,
$$\ell(D)-\ell(K-D)=\deg D+1-g.$$

*Proof.* Put $\chi(D)=\ell(D)-h^1(\mathcal O(D))$, which is finite by Theorem 14.9. Let $P$ be a point, and apply Proposition 14.4 to $\mathcal O(D)\subseteq\mathcal O(D+P)$. Their stalks differ only at $P$, where $\mathcal O(D+P)_P/\mathcal O(D)_P$ is one-dimensional, so
$$0\to L(D)\to L(D+P)\to k\to H^1(\mathcal O(D))\to H^1(\mathcal O(D+P))\to0$$
is exact. The alternating sum of the dimensions is 0, which says $\chi(D+P)=\chi(D)+1$. Every divisor is reached from $0$ by adding and removing points one at a time, so $\chi(D)=\deg D+\chi(0)$, and $\chi(0)=\ell(0)-h^1(\mathcal O)=1-g$ by Corollary 7.9 and Theorem 14.9. Finally, Theorem 14.9 gives $h^1(\mathcal O(D))=\ell(K-D)$. $\square$

The proof uses only the places of the function field and two affine charts, so the theorem holds on the abstract curve $C_K$ of Chapter 7 before we know that $C_K$ is projective.

> **Look up.** [H, IV.1, Theorem 1.3], proved there in the same way; [S, §1.5], by Weil's repartitions; [F, §8.6], by adjoint curves for plane curves with ordinary singularities; [Si, II.5, Theorem 5.4].

**Corollary 15.2.**

1. $\ell(K)=g$ and $\deg K=2g-2$.
2. **(Riemann's inequality)** $\ell(D)\geq\deg D+1-g$, with equality whenever $\deg D>2g-2$.
3. $g$ is the largest value of $\deg D+1-\ell(D)$ over all divisors $D$.

*Proof.* With $D=0$, Theorem 15.1 reads $1-\ell(K)=1-g$. With $D=K$ it reads $g-1=\deg K+1-g$. For part 2, $\ell(K-D)\geq0$, and if $\deg D>2g-2=\deg K$ then $K-D$ has negative degree, so $\ell(K-D)=0$ (Proposition 8.8). Part 3 follows from part 2. $\square$

Part 1 holds in every characteristic, and it repays three loans:

- **Chapter 9's table**, where the canonical divisors of the cast all had degree $2g-2$, is now a theorem.
- **The Riemann–Hurwitz formula** (Theorem 11.5) is proved, including Theorem 11.8 in characteristic 2. Chapter 14 never used Chapter 11, so nothing is circular.
- **Chapter 12's first proof** of the genus formula borrowed $\ell(mH)=md+1-g$ for large $m$. That is part 2, since $\deg mH=md>2g-2$ once $m$ is large.

Part 3 is Riemann's own definition of the genus, which [F, §8.3] and [S, §1.4] use, so the two definitions agree, as Chapter 10 promised. A divisor with $\ell(K-D)>0$ is called **special**. The correction term $\ell(K-D)$ counts the regular differentials with $\operatorname{div}(\omega)\geq D$, the blind tests of Section 15.2.

### Weierstrass gaps {-}

**Definition 15.3.** Let $P$ be a point of $X$. A positive integer $n$ is a **gap** at $P$ if $\ell(nP)=\ell\bigl((n-1)P\bigr)$, that is, if no function has a pole of order exactly $n$ at $P$ and no other poles. Otherwise $n$ is a **non-gap**. The non-gaps, together with 0, form a semigroup under addition, since pole orders add when functions are multiplied: the **Weierstrass semigroup** of $P$.

**Theorem 15.4 (Weierstrass gap theorem).** Let $P$ be a point of $X$.

1. A positive integer $n$ is a gap at $P$ exactly when some regular differential vanishes to order exactly $n-1$ at $P$.
2. There are exactly $g$ gaps at $P$, and all of them lie between 1 and $2g-1$.

*Proof.* Subtracting Theorem 15.1 for $(n-1)P$ from Theorem 15.1 for $nP$ gives
$$\ell(nP)-\ell\bigl((n-1)P\bigr)=1-\Bigl(\ell\bigl(K-(n-1)P\bigr)-\ell(K-nP)\Bigr),$$
and both differences are 0 or 1 by Proposition 8.8. The differentials $f\omega_0$ with $f\in L(K-mP)$ are the regular differentials that vanish to order at least $m$ at $P$. So the bracket is 1 exactly when some regular differential vanishes to order exactly $n-1$ at $P$. That is part 1. In the chain $\ell(K)\geq\ell(K-P)\geq\ell(K-2P)\geq\cdots$, which starts at $g$ and ends at 0, each step drops by at most 1, so exactly $g$ orders of vanishing occur. None exceeds $\deg K=2g-2$. $\square$

At a typical point the regular differentials vanish to orders $0,1,\dots,g-1$, and the gaps are $1,2,\dots,g$. The exceptions have a name.

**Definition 15.5.** For $g\geq1$, a point is a **Weierstrass point** if its gaps are not $1,2,\dots,g$, that is, if some nonzero regular differential vanishes there to order at least $g$. Its **weight** is the sum of its gaps minus $\frac{g(g+1)}{2}$.

In characteristic 0 the Weierstrass points are finite in number, and their weights add up to $g^3-g$. No point has weight more than $\frac{g(g-1)}{2}$, so a curve of genus $g\geq2$ has between $2g+2$ and $g^3-g$ Weierstrass points, and a curve of genus 1 has none. In characteristic $p$ there are **non-classical** curves on which no point has the gaps $1,\dots,g$, and F. K. Schmidt adapted the definition in 1939.

> **Look up.** [S, §1.6] for the gap theorem; H. M. Farkas and I. Kra, *Riemann Surfaces*, III.5, for Weierstrass points and the count $g^3-g$; R. Miranda, *Algebraic Curves and Riemann Surfaces*, Chapter VII.

### Embeddings {-}

**Theorem 15.6.** Let $D$ be a divisor with $\deg D\geq2g+1$, and let $f_0,\dots,f_N$ be a basis of $L(D)$, so that $N=\deg D-g$. Then $[f_0:\dots:f_N]$ is an isomorphism of $X$ onto a smooth curve of degree $\deg D$ in $\mathbb{P}^N$.

*Sketch.* By Proposition 7.6 the formula defines a morphism. A hyperplane $\sum a_iX_i=0$ cuts out the divisor $\operatorname{div}(f)+D$ of $f=\sum a_if_i$, so the hyperplane sections have degree $\deg D$ (Section 8.4). The morphism is injective, with nowhere-vanishing differential, if for all points $P$ and $Q$, including $P=Q$,
$$\ell(D-P-Q)=\ell(D)-2.$$
For $P\neq Q$ this provides a hyperplane through the image of $P$ that misses the image of $Q$, and for $P=Q$ a hyperplane that meets the curve simply at $P$. Since $\deg(D-P-Q)\geq2g-1$, part 2 of Corollary 15.2 gives both sides exactly. $\square$

This keeps a promise from Chapter 7. For any function field $K$, Theorem 15.1 holds on the abstract curve $C_K$, and Theorem 15.6 with $D=(2g+1)P$ embeds $C_K$ in projective space. That is a second proof of Theorem 7.7.

> **Look up.** [H, IV.3, Proposition 3.1 and Corollary 3.2]; Farkas–Kra, III.10.

## The Solution

### (a) The rows of the table {-}

Theorem 15.1 needs one canonical divisor on each curve, and earlier chapters found them: $\operatorname{div}(dt)=-2\infty$ on $\mathbb{P}^1$ (Section 9.3), $\operatorname{div}(dx/y)=0$ on $E$ (Corollary 9.13), and $\operatorname{div}(dx/y)=2\infty$ on $\widehat G$ (Proposition 10.2). With $D=n\infty$:

| Curve | $g$ | $K$ | Theorem 15.1 for $D=n\infty$ |
|---|---|---|---|
| $\mathbb{P}^1$ | 0 | $-2\infty$ | $\ell(n\infty)-\ell\bigl(-(n+2)\infty\bigr)=n+1$ |
| $E$ | 1 | $0$ | $\ell(n\infty)-\ell(-n\infty)=n$ |
| $\widehat G$ | 2 | $2\infty$ | $\ell(n\infty)-\ell\bigl((2-n)\infty\bigr)=n-1$ |

On $\mathbb{P}^1$ the second term vanishes for all $n\geq0$, so $\ell(n\infty)=n+1$. On $E$ it vanishes for $n\geq1$, so $\ell(n\infty)=n$, while $\ell(0)=1$. On $\widehat G$ it vanishes for $n\geq3$, so $\ell(n\infty)=n-1$. For $n=2$ the second term is $\ell(0)=1$, so $\ell(2\infty)=2$, and for $n=1$ the formula reads $\ell(\infty)-\ell(\infty)=0$, which is true but empty. A function with a single simple pole would make $\widehat G$ rational (Section 8.3), so $\ell(\infty)=1$. The three rows are reproduced.

**The answer to (a).** By Corollary 15.2, $\ell(nP)=n+1-g$ for $n\geq2g-1$, at every point $P$ of every curve. In our table it begins exactly at $n=2g-1$, because $(2g-2)\infty$ is a canonical divisor on each of the three curves. Below that point, $\ell(n\infty)$ exceeds $n+1-g$ by Roch's correction $\ell(K-n\infty)$. On $\widehat G$ at $n=2$ the correction is the differential $dx/y$, the blind test of Section 15.2.

Chapter 10's count on the Fermat quartic fits too. Its canonical divisors are the line sections, so $K=H$ (Section 10.4), and Theorem 15.1 for $D=mH$ reads $\ell(mH)-\ell\bigl((1-m)H\bigr)=4m-2$. For $m\geq2$ this gives $\ell(mH)=4m-2$, as Variation 2 of Chapter 10 found by counting polynomials. For $m=1$ the correction is $\ell(0)=1$, so $\ell(H)=3$: the functions $1$, $x$ and $y$.

### (b) The gaps {-}

By Theorem 15.4, the gaps at a point are one more than the orders of vanishing of the regular differentials there.

- **On $E$**, $dx/y$ has no zeros (Corollary 9.13). So at every point $P$ the only gap is 1, and $\ell(nP)=n$ for $n\geq1$. The non-gaps $2,3,4,\dots$ form the semigroup $\langle2,3\rangle$.
- **On $\widehat G$ at $\infty$**, $dx/y$ vanishes to order 2, and $x\,dx/y$ to order 0, because $x$ has a double pole. So the gaps are 1 and 3, and the non-gaps $2,4,5,6,\dots$ form the semigroup $\langle2,5\rangle$, generated by the pole orders of $x$ and $y$.

**This answers (b).** It also explains what Chapter 14 found. There the obstruction space $H^1(X,\mathcal O)$ was spanned by a simple pole on $E$, and by a simple and a triple pole at $(0,0)$ on $\widehat G$. Those are the gap orders.

**Proposition 15.7.** Let $P$ be a point with uniformizer $t$. The classes in $H^1(X,\mathcal O)$ of the prescriptions $t^{-n}$ at $P$, for the $g$ gaps $n$, form a basis.

*Proof.* By Proposition 14.4, the prescriptions with poles bounded by $(2g-1)P$ map onto $H^1(X,\mathcal O)$, because $h^1\bigl(\mathcal O((2g-1)P)\bigr)=\ell\bigl(K-(2g-1)P\bigr)=0$. They are spanned by $t^{-1},\dots,t^{-(2g-1)}$. If $n$ is a non-gap, a function with a pole of order exactly $n$ at $P$ and no other poles has principal part $c\,t^{-n}$ plus multiples of $t^{-m}$ with $m<n$, where $c\neq0$, and its class is 0. So the class of $t^{-n}$ is a combination of classes of $t^{-m}$ with $m<n$. By induction the $g$ gap classes span $H^1(X,\mathcal O)$, whose dimension is $g$. $\square$

### (c) The Weierstrass points of $\widehat G$ {-}

Let $P=(a,b)$ be a point of $G$ with $b\neq0$. There $x-a$ is a uniformizer, and $dx/y$ does not vanish, since its only zeros are at $\infty$. So the regular differentials $(\alpha+\beta x)\,dx/y$ vanish at $P$ to order 0, or to order 1 for $(x-a)\,dx/y$, and the gaps at $P$ are 1 and 2. At the five points $(a,0)$, the uniformizer is $y$ and $x-a$ vanishes to order 2, so the orders are 0 and 2 and the gaps are 1 and 3, as at $\infty$.

**The answer to (c) is no.** Exactly six points of $\widehat G$ miss the orders 1 and 3: the ramification points of $x$, over $0$, $\pm1$, $\pm i$ and $\infty$, the six vertices of Chapter 10's octahedron. They are the Weierstrass points of $\widehat G$, each of weight $(1+3)-(1+2)=1$, for a total of $6=2^3-2$. At every other point $P$ the counts are $\ell(nP)=1,1,1,2,3,4,\dots$, so some function has a triple pole at $P$ and no other poles. Variation 2 of Chapter 14 found the same six points with the residue test.

### Why Chapter 7's five functions {-}

Theorem 7.10 embedded $\widehat G$ in $\mathbb{P}^4$ by $1,x,x^2,x^3,y$, and Chapter 7 asked why those five. They are a basis of $L(6\infty)$, of dimension $6+1-2=5$, and $6\geq2g+1=5$. Theorem 15.6 explains both the embedding and the degree 6 found in Chapter 8. It also shows that $L(5\infty)$, spanned by $1,x,x^2,y$, already embeds $\widehat G$ in $\mathbb{P}^3$ (Variation 3). But $L(4\infty)$, spanned by $1,x,x^2$, does not: it sends $(x,y)$ and $(x,-y)$ to the same point, so the bound $2g+1$ is sharp. On $E$, the space $L(3\infty)$ is spanned by $1,x,y$, and Theorem 15.6 gives back the plane cubic itself.

## What Just Happened

- **The theorem.** $\ell(D)-\ell(K-D)=\deg D+1-g$. Chapter 14's exact sequence shows that $\ell(D)-h^1(\mathcal O(D))$ grows by 1 with each point added, and Serre duality turns $h^1(\mathcal O(D))$ into $\ell(K-D)$.
- **What Riemann and Roch each saw.** Riemann's inequality $\ell(D)\geq\deg D+1-g$ counts parameters minus conditions. Roch's correction $\ell(K-D)$ counts the regular differentials vanishing along $D$, whose residue tests are blind to $D$.
- **First consequences.** $\deg K=2g-2$ in every characteristic, and $\ell(D)=\deg D+1-g$ once $\deg D>2g-2$. This explains Chapter 8's table, and completes the Riemann–Hurwitz formula and Chapter 12's first proof.
- **Gaps.** At each point exactly $g$ pole orders are impossible, all below $2g$, and they are one more than the orders of vanishing of the regular differentials. Their classes form a basis of $H^1(X,\mathcal O)$.
- **Weierstrass points.** On $E$ every point has the single gap 1. On $\widehat G$ six points have the gaps 1 and 3, and the others have 1 and 2.
- **Embeddings.** A divisor of degree at least $2g+1$ embeds the curve in projective space, which explains Chapter 7's five functions and reproves Theorem 7.7.

## Threads

**Which curves can be parametrized?** Riemann–Roch settles the converse of Theorem 9.10 in one line. If $g=0$, then $\ell(P)=2$ for every point $P$, so some function has a single simple pole, and the curve is $\mathbb{P}^1$ (Section 8.3). Chapter 16 proves this over $\mathbb{Q}$, where it needs a rational point and the theorem for divisors defined over $\mathbb{Q}$ [Si, II.5]. With the same tools it finds a Weierstrass equation for every curve of genus 1 with a rational point, using $L(3P)$, and shows that every curve of genus 2 is hyperelliptic.

**When are two curves the same?** Weierstrass points are intrinsic, so an isomorphism preserves them, with their gaps and weights. Automorphisms permute them, which is the key step in the standard proof that a curve of genus at least 2 has only finitely many automorphisms. Hurwitz bounded their number by $84(g-1)$ in 1893. Chapter 17 takes this up, together with the canonical map $P\mapsto[\omega_1(P):\dots:\omega_g(P)]$, which tells hyperelliptic curves from the others.

**Semigroups again.** Chapter 6 met the semigroups $\langle2,3\rangle$, $\langle2,5\rangle$ and $\langle3,4\rangle$ at the cusps $y^2=x^3$, $y^2=x^5$ and $y^3=x^4$, where the number of gaps was $\delta$. They return here as Weierstrass semigroups: at every point of $E$, at the Weierstrass points of $\widehat G$, and at the hyperflexes of the Fermat quartic (Variation 2), where the number of gaps is $g$. One family shows why this is no accident. In the family $y^2=x^5-\mu x$ every curve with $\mu\neq0$ is isomorphic to $\widehat G$, and as $\mu\to0$ five of its Weierstrass points merge into the cusp $y^2=x^5$. The genus disappears into $\delta=2$, and the arithmetic genus stays 2, as Chapter 14 predicts. Not every semigroup arises as a Weierstrass semigroup: Hurwitz asked which do, and Buchweitz found the first counterexamples in 1980.

**Codes.** Over a finite field, the spaces $L(D)$ become error-correcting codes, and Riemann–Roch computes their dimension. Chapter 18 builds one from $y^2+y=x^3$ over $\mathbb{F}_4$.

**History.** Riemann's 1857 paper on abelian functions proved the inequality. Roch's paper of 1865 added the correction, and Roch died the next year, aged 26. Brill and Noether reproved the theorem geometrically in 1874, Dedekind and Weber arithmetically in 1882, and Weil with repartitions in 1938. Serre's cohomological form is the one this book has followed. The Afterword describes Riemann–Roch in higher dimensions.

## Variations

These are optional. A hint follows each one.

**Variation 1.** Let $X$ be the smooth model of $y^2=f(x)$, with $f$ squarefree of degree $2g+1$ and $g\geq2$. Show that the gaps at $\infty$ are $1,3,\dots,2g-1$, and that the non-gaps form $\langle2,2g+1\rangle$. Show that the Weierstrass points are exactly the $2g+2$ ramification points of $x$, each of weight $\frac{g(g-1)}{2}$, and check that the weights add up to $g^3-g$.
*Hint:* The regular differentials are $a(x)\,dx/y$ with $\deg a\leq g-1$ (Section 11.4), and $\operatorname{div}(dx/y)=(2g-2)\infty$. At a ramification point $(c,0)$, the function $x-c$ vanishes to order 2, so the orders of vanishing are $0,2,\dots,2g-2$. At any other affine point they are $0,1,\dots,g-1$.

**Variation 2.** On the Fermat quartic $x^4+y^4=1$, the canonical divisors are the line sections (Section 10.4). Show that the gaps at a point $P$ are $1,2,3$ if the tangent at $P$ meets the curve to order 2 there, $1,2,4$ at an ordinary flex, and $1,2,5$ at a **hyperflex**, where the tangent meets it to order 4. Show that the 12 points of $x^4+y^4=z^4$ with $xyz=0$ are hyperflexes, and that their weights already add up to $3^3-3=24$. Deduce that, in characteristic 0, they are all the Weierstrass points.
*Hint:* A line meets the curve at $P$ to order 0 if it misses $P$, to order 1 if it crosses the curve there, and to the tangent's order if it is the tangent. At $(0,1)$ the tangent is $y=1$, and $x^4+y^4=1$ gives $y-1=-\frac14x^4+\cdots$. A hyperflex has weight $(1+2+5)-6=2$. The non-gaps there form $\langle3,4\rangle$.

**Variation 3.** Show that $P\mapsto[1:x:x^2:y]$ embeds $\widehat G$ in $\mathbb{P}^3$ as a curve of degree 5 lying on the quadric cone $X_0X_2=X_1^2$, and that $[1:x:x^2]$ maps it two-to-one onto a conic.
*Hint:* This is Theorem 15.6 for $D=5\infty$, where $\ell(5\infty)=4$. The point $\infty$ goes to the vertex $[0:0:0:1]$ of the cone. The relation $y^2=x^5-x$ becomes $X_3^2X_0=X_1X_2^2-X_1X_0^2$.

**Variation 4.** On $\widehat G$, show that an effective divisor $D$ of degree 2 has $\ell(D)=2$ exactly when it is canonical, and that the canonical divisors are the fibres $P+P'$ of $x$, as Variation 3 of Chapter 10 found.
*Hint:* Theorem 15.1 gives $\ell(D)=1+\ell(K-D)$, and $K-D$ has degree 0, so $\ell(K-D)=1$ exactly when $K-D\sim0$. The divisor of $(\alpha+\beta x)\,dx/y$ is the fibre of $x$ over $-\alpha/\beta$.

**Variation 5.** Show that every curve of genus $g$ has a nonconstant morphism to $\mathbb{P}^1$ of degree at most $g+1$.
*Hint:* Corollary 15.2 gives $\ell\bigl((g+1)P\bigr)\geq2$, and a nonconstant $f\in L\bigl((g+1)P\bigr)$ has degree equal to its number of poles (Corollary 8.4). Brill–Noether theory improves the bound to $\lfloor\frac{g+3}{2}\rfloor$, but that needs deeper tools.

## Reading Map

- **[H, IV.1 and IV.3]:** the Riemann–Roch theorem (Theorem 1.3) proved with Serre duality, and the criterion for embeddings (Proposition 3.1 and Corollary 3.2).
- **[F, §8.3–8.6]:** Riemann's theorem, canonical divisors and the Riemann–Roch theorem for plane curves, by adjoint curves.
- **[Si, II.5]:** the theorem, with the facts needed over a field that is not algebraically closed.
- **[S, §1.4–1.6]:** the genus defined by Riemann's inequality, Weil's proof of Riemann–Roch, and the Weierstrass gap theorem, over any field.
- **H. M. Farkas and I. Kra, *Riemann Surfaces*,** III.4–III.7 and III.10: Riemann–Roch on compact Riemann surfaces, Weierstrass points and their weights, hyperelliptic surfaces, and projective embeddings.
- **R. Miranda, *Algebraic Curves and Riemann Surfaces*,** Chapters V–VII: divisors, the Riemann–Roch theorem and its applications, with many examples.
- **Sources.** B. Riemann, "Theorie der Abel'schen Functionen", *Journal für die reine und angewandte Mathematik* 54 (1857). G. Roch, "Ueber die Anzahl der willkürlichen Constanten in algebraischen Functionen", same journal, 64 (1865). F. K. Schmidt, "Zur arithmetischen Theorie der algebraischen Funktionen II: Allgemeine Theorie der Weierstraßpunkte", *Mathematische Zeitschrift* 45 (1939).
