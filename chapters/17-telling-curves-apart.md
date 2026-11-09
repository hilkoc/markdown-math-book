# Telling Curves Apart

## The Problem

Since Chapter 1 the book has asked when two curves are the same. Chapter 2 showed that a bijection between their points is not enough, and Chapter 7 reduced the question, for smooth projective curves, to their function fields. Chapter 10 found the first invariant, the genus. But one number cannot tell all curves apart. $E$ and the Fermat cubic both have genus 1, and Chapter 9 found that $E$ and the lemniscate curve are the same curve over $\mathbb{C}$, though they look nothing alike. This chapter collects enough invariants to sort the cast, and then asks how the answer depends on the field.

> **Problem 17.** Consider the smooth projective models of the seven curves
> $$\begin{gathered}y^2=x^3-x,\quad y^2=1-x^4,\quad x^3+y^3=1,\quad y^2=x^3+1,\\ y^2=x^5-x,\quad x^4+y^4=1,\quad y^2=x^8-1.\end{gathered}$$
> (a) Sort them into isomorphism classes over $\mathbb{C}$, and prove that curves in different classes are not isomorphic.
> (b) The first two are isomorphic over $\mathbb{Q}(i)$ (Chapter 16). Are they isomorphic over $\mathbb{Q}$?
> (c) How many automorphisms do the curves of genus 2 and 3 in the list have? Compare the numbers with Hurwitz's bound $84(g-1)$.

Five of the seven are the members of the cast with positive genus. The other two, $y^2=x^3+1$ and $y^2=x^8-1$, are newcomers chosen to resemble them. Throughout, $k$ has characteristic 0.

## First Attempts

**Compare the equations.** The shape of an equation is not an invariant. Chapter 5 found four plane curves with one function field, Chapter 7 gave $\widehat G$ a quintic model and a quartic one, and Chapter 16 rewrote the Fermat cubic and the lemniscate curve as $Y^2=X^3-432$ and $Y^2=X^3+4X$. To prove two curves different we need quantities that every model must share.

**Count points.** Isomorphic curves over a finite field have the same number of points, so counting is a natural test. But it answers a question about that field. Over $\mathbb{F}_7$ the Fermat cubic has 9 points and $y^2=x^3+1$ has 12, yet Section 17.4 shows that the two are isomorphic over $\mathbb{C}$. And $E$ and the lemniscate curve have the same number of points over $\mathbb{F}_p$ for every odd prime $p$, yet part (b) will show that they are not isomorphic over $\mathbb{Q}$. Point counts belong to the field they are taken over.

**The genus.** This one works, because the genus is the dimension of $\Omega^1(X)$ (Chapter 10), which an isomorphism preserves. Theorems 10.6 and 11.6 give genus 1 for the first four curves, genus 2 for $y^2=x^5-x$, and genus 3 for the last two. So the three groups are different, and two questions remain: which of the four curves of genus 1 are the same, and whether the two curves of genus 3 are.

## The Ideas We Need

In this section $k$ is algebraically closed, except where a smaller field is named.

### The $j$-invariant {-}

A curve of genus 1 with a point $O$ has a Weierstrass equation $y^2=x^3+Ax+B$, with $O$ at infinity (Theorem 16.3, whose proof works over any field of characteristic 0).

**Definition 17.1.** The **$j$-invariant** of $y^2=x^3+Ax+B$, where $4A^3+27B^2\neq0$, is
$$j=1728\,\frac{4A^3}{4A^3+27B^2}.$$

**Theorem 17.2.** Let $k$ be any field of characteristic 0, and let $(X,O)$ and $(X',O')$ be curves of genus 1 over $k$ with Weierstrass equations $y^2=x^3+Ax+B$ and $y'^2=x'^3+A'x'+B'$. There is an isomorphism over $k$ taking $O$ to $O'$ exactly when
$$A'=u^4A\quad\text{and}\quad B'=u^6B\qquad\text{for some }u\in k^*,$$
and then it is $x'=u^2x$, $y'=u^3y$. In particular the two curves have the same $j$-invariant.

*Proof.* An isomorphism $\varphi$ with $\varphi(O)=O'$ preserves pole orders at the base points, so it carries $L(2O')$ onto $L(2O)$ and $L(3O')$ onto $L(3O)$. Hence $\varphi^*x'=\alpha x+\beta$ and $\varphi^*y'=\gamma y+\delta x+\varepsilon$ with $\alpha,\gamma\neq0$. Substitute these into $y'^2=x'^3+A'x'+B'$ and use $y^2=x^3+Ax+B$. The functions $1,x,x^2,x^3,y,xy$ are linearly independent, because their pole orders at $O$ are $0,2,4,6,3,5$, so each coefficient must vanish. The coefficient of $xy$ is $2\gamma\delta$, that of $y$ is $2\gamma\varepsilon$, that of $x^2$ is $\delta^2-3\alpha^2\beta$, and that of $x^3$ is $\gamma^2-\alpha^3$. So $\delta=\varepsilon=\beta=0$, and $u=\gamma/\alpha$ satisfies $u^2=\alpha$ and $u^3=\gamma$. The remaining coefficients give $A'=u^4A$ and $B'=u^6B$. Conversely, these formulas define an isomorphism. In the $j$-invariant, numerator and denominator are both multiplied by $u^{12}$. $\square$

**Corollary 17.3.** Over $\mathbb{C}$, the automorphisms of $(X,O)$ are $(x,y)\mapsto(u^2x,u^3y)$ with $u^4A=A$ and $u^6B=B$. There are 2 of them if $AB\neq0$, 4 if $B=0$ (that is, $j=1728$), and 6 if $A=0$ ($j=0$).

On $E$ the automorphism $(x,y)\mapsto(-x,iy)$ has order 4, and on $y^2=x^3+1$ the automorphism $(x,y)\mapsto(\omega x,-y)$, with $\omega$ a primitive cube root of 1, has order 6.

**Theorem 17.4.** Let $k$ be algebraically closed of characteristic 0.

1. For any two points $O$ and $Q$ of a curve $X$ of genus 1, some automorphism of $X$ takes $O$ to $Q$. So the $j$-invariant depends only on $X$, not on the choice of base point.
2. Two curves of genus 1 are isomorphic exactly when their $j$-invariants are equal.
3. Every element of $k$ is the $j$-invariant of some curve of genus 1.

*Proof.* (1) With $O$ as zero, the translation $\tau(P)=P\oplus Q$ is given by the chord-and-tangent formulas, which are rational functions in the coordinates of $P$. So it is a morphism (Proposition 7.6), bijective with inverse $P\mapsto P\ominus Q$, hence an isomorphism, and $\tau(O)=Q$. (2) By (1), if two curves are isomorphic there is an isomorphism taking base point to base point, and Theorem 17.2 applies. Conversely, suppose $j=j'$, so that $A^3B'^2=A'^3B^2$. If $A=0$, then $A'=0$, and $u$ with $u^6=B'/B$ works. If $B=0$, take $u^4=A'/A$. Otherwise choose $u$ with $u^2=AB'/(A'B)$; then $u^4=A'/A$ and $u^6=B'/B$. (3) The curves $y^2=x^3+1$ and $y^2=x^3+x$ have $j=0$ and $j=1728$, and Variation 1 covers every other value. $\square$

Over a field that is not algebraically closed, Theorem 17.2 is the finer statement. Curves with the same $j$ can still differ there, and they are then **twists**, or forms, of one another in the sense of Chapter 13.

> **Look up.** [Si, III.1, Proposition 1.4] for the $j$-invariant, and [Si, III.1] with [Si, III.3, Proposition 3.1(b)] for changes of Weierstrass coordinates; [Si, III.10, Theorem 10.1] for automorphisms; [Si, X.5] for twists; [H, IV.4, Theorem 4.1], which uses the Legendre form $y^2=x(x-1)(x-\lambda)$.

### Hyperelliptic and canonical curves {-}

For a curve of genus $g\geq2$ with a basis $\omega_1,\dots,\omega_g$ of $\Omega^1(X)$, the **canonical map** is
$$\varphi_K:X\to\mathbb{P}^{g-1},\qquad P\mapsto[\omega_1(P):\dots:\omega_g(P)],$$
which means $[f_1:\dots:f_g]$ where $\omega_i=f_i\,\omega$ for a fixed nonzero differential $\omega$. Another choice of basis changes the map by a linear change of coordinates on $\mathbb{P}^{g-1}$.

**Theorem 17.5.** Let $X$ have genus $g\geq2$.

1. $\varphi_K$ is defined at every point of $X$.
2. If $X$ is not hyperelliptic, $\varphi_K$ is an embedding, as a curve of degree $2g-2$.
3. If $X$ is hyperelliptic, with $x:X\to\mathbb{P}^1$ of degree 2, then $\varphi_K$ is $x$ followed by $t\mapsto[1:t:\dots:t^{g-1}]$. In particular the map of degree 2 is unique up to an automorphism of $\mathbb{P}^1$.

*Proof.* (1) For a point $P$, Theorem 15.1 gives $\ell(K-P)=\ell(P)+g-2=g-1$, since $\ell(P)=1$. So some regular differential does not vanish at $P$. (2) By the criterion in the proof of Theorem 15.6, $\varphi_K$ is an embedding if $\ell(K-P-Q)=g-2$ for all $P$ and $Q$, including $P=Q$. Theorem 15.1 gives $\ell(K-P-Q)=\ell(P+Q)+g-3$. So the criterion fails exactly when $\ell(P+Q)=2$ for some $P$ and $Q$, that is, when some function has polar divisor $P+Q$ and is therefore a map of degree 2 to $\mathbb{P}^1$. The image has degree $\deg K=2g-2$ (Section 8.4). (3) Write $X$ as $y^2=f(x)$ (Section 11.4). The regular differentials are $a(x)\,dx/y$ with $\deg a\leq g-1$, so $\varphi_K=[1:x:\dots:x^{g-1}]$, and its fibres are the fibres of $x$. If $h$ is another map of degree 2 and $P+P'$ is a fibre of $h$, the computation in (2) gives $\ell(K-P-P')=g-1=\ell(K-P)$. So every regular differential that vanishes at $P$ also vanishes at $P'$, and $\varphi_K(P)=\varphi_K(P')$. The fibres of $h$ are therefore fibres of $x$, and $h$ is $x$ followed by a bijective morphism of $\mathbb{P}^1$, a Möbius transformation. $\square$

**Corollary 17.6.**

1. A smooth plane quartic is not hyperelliptic.
2. Every curve of genus 3 that is not hyperelliptic is a smooth plane quartic.

*Proof.* (1) By Theorem 10.6 the regular differentials on a smooth plane quartic are $h\,dx/f_y$ with $\deg h\leq1$, so $\varphi_K=[1:x:y]$ is the given embedding. That is injective, while the canonical map of a hyperelliptic curve is two-to-one. (2) Theorem 17.5 embeds the curve in $\mathbb{P}^2$ as a curve of degree $2g-2=4$. $\square$

> **Look up.** [H, IV.5], for the canonical embedding and the uniqueness of the hyperelliptic map; Farkas–Kra, III.7 (hyperelliptic surfaces) and III.10 (embeddings).

### Automorphisms {-}

An automorphism of $X$ acts on $\Omega^1(X)$, so it commutes with the canonical map up to a projective linear map of $\mathbb{P}^{g-1}$. It also permutes the Weierstrass points, since they are defined by the gaps (Chapter 15).

**Proposition 17.7.** Let $X$ be the smooth model of $y^2=f(x)$, hyperelliptic of genus $g\geq2$, and let $B\subset\mathbb{P}^1$ be its branch set: the roots of $f$, together with $\infty$ when $\deg f$ is odd. Every automorphism $\sigma$ of $X$ satisfies $x\circ\sigma=m\circ x$ for a Möbius transformation $m$ with $m(B)=B$. Conversely, each such $m$ comes from exactly two automorphisms, $\sigma$ and $\iota\circ\sigma$, where $\iota(x,y)=(x,-y)$. So $\vert\operatorname{Aut}(X)\vert$ is twice the number of Möbius transformations that preserve $B$.

*Proof.* The function $x\circ\sigma$ has degree 2, so by Theorem 17.5 it is $m\circ x$ for a Möbius transformation $m$. Its branch points are those of $x$, which form $B$, and they are also $m(B)$. Conversely, let $m(x)=(ax+b)/(cx+d)$ preserve $B$, and let $F(X,Z)$ be $f$ made homogeneous of degree $2g+2$. Then $m$ permutes the roots of $F$, with $\infty$ standing for $Z=0$, so $F(aX+bZ,\,cX+dZ)=\lambda F(X,Z)$ for a constant $\lambda\neq0$. The map
$$(x,y)\mapsto\Bigl(m(x),\ \frac{\sqrt\lambda\,y}{(cx+d)^{g+1}}\Bigr)$$
carries the curve to itself, and the two square roots give $\sigma$ and $\iota\circ\sigma$. $\square$

**Theorem 17.8 (Hurwitz, 1893).** In characteristic 0, a curve of genus $g\geq2$ has at most $84(g-1)$ automorphisms.

*Sketch.* The group $G=\operatorname{Aut}(X)$ is finite [H, Ex. IV.5.2]. Its invariant functions form a subfield $k(X)^G$ with $[k(X):k(X)^G]=\vert G\vert$, by Galois theory, and that subfield is the function field of a curve $Y=X/G$, of some genus $h$ (Chapter 7). Over each branch point $y_i$ of the quotient map $X\to Y$, the group permutes the points of $X$ transitively, so they all have the same ramification index $e_i$, and there are $\vert G\vert/e_i$ of them. Riemann–Hurwitz (Theorem 11.5) becomes
$$2g-2=\vert G\vert\Bigl(2h-2+\sum_i\Bigl(1-\frac1{e_i}\Bigr)\Bigr).$$
The bracket is positive because $g\geq2$. Its smallest possible positive value is $\frac1{42}$, attained only at $h=0$ and $(e_1,e_2,e_3)=(2,3,7)$, since $1-\frac12-\frac13-\frac17=\frac1{42}$. So $\vert G\vert\leq42(2g-2)=84(g-1)$. $\square$

> **Look up.** [H, Ex. IV.2.5] (Hurwitz's theorem), [H, Ex. IV.5.2] (finiteness) and [H, Ex. IV.5.7] (automorphisms in genus 3); Farkas–Kra, V.1.

## The Solution

### (a) Sorting the list {-}

| Curve | Genus | Model | Invariant that decides |
|---|---|---|---|
| $y^2=x^3-x$ | 1 | itself | $j=1728$ |
| $y^2=1-x^4$ | 1 | $Y^2=X^3+4X$ (Chapter 16) | $j=1728$ |
| $x^3+y^3=1$ | 1 | $Y^2=X^3-432$ (Chapter 16) | $j=0$ |
| $y^2=x^3+1$ | 1 | itself | $j=0$ |
| $y^2=x^5-x$ | 2 | hyperelliptic | alone in its genus |
| $x^4+y^4=1$ | 3 | smooth plane quartic | not hyperelliptic; 12 Weierstrass points |
| $y^2=x^8-1$ | 3 | hyperelliptic | 8 Weierstrass points |

**Genus 1.** By Theorem 17.4 the $j$-invariant decides. $E$ and the lemniscate curve have $j=1728$, and the Fermat cubic and $y^2=x^3+1$ have $j=0$, so these four curves form exactly two classes. The isomorphisms can be written down. For $j=1728$ it is Chapter 16's $X=2ix$, $Y=(2i-2)y$, with $u=1+i$. For $j=0$, take $u=\sqrt{-3}\,\sqrt[3]4$, whose sixth power is $(-27)\cdot16=-432$. Then $X=u^2x$, $Y=u^3y$ carries $y^2=x^3+1$ onto $Y^2=X^3-432$, which is the Fermat cubic.

**Genus 3.** The curve $y^2=x^8-1$ is hyperelliptic, since $x$ has degree 2. The Fermat quartic is a smooth plane quartic, so by Corollary 17.6 it is not. Hence the two are not isomorphic. Chapter 15 gives a second proof, because an isomorphism must match Weierstrass points. On $y^2=x^8-1$ they are the 8 branch points, each with gaps 1, 3, 5 (Variation 1 of Chapter 15, after moving one branch point to infinity). On the Fermat quartic they are the 12 hyperflexes, with gaps 1, 2, 5 (Variation 2 of Chapter 15). Both totals of weights are $8\cdot3=12\cdot2=24=g^3-g$; the number of points is what differs.

**Genus 2.** $\widehat G$ is alone in its genus. Like every curve of genus 2, it is hyperelliptic (Proposition 16.5).

**This answers (a).** There are five classes:
$$\begin{gathered}\{E,\ \widehat\Lambda\},\qquad\{\text{Fermat cubic},\ y^2=x^3+1\},\\ \{\widehat G\},\qquad\{\text{Fermat quartic}\},\qquad\{y^2=x^8-1\}.\end{gathered}$$
The members of the cast of genus 0, the circle, the node and the cusp, all have smooth model $\mathbb{P}^1$ (Chapter 16).

### (b) Over $\mathbb{Q}$ {-}

Both curves have rational points, and translation by a rational point is defined over $\mathbb{Q}$, because the chord-and-tangent formulas then have rational coefficients. So if $E$ and the lemniscate curve were isomorphic over $\mathbb{Q}$, some isomorphism would take base point to base point. Theorem 17.2, applied to $y^2=x^3-x$ and $Y^2=X^3+4X$, would then give a rational $u$ with $4=u^4\cdot(-1)$. No rational number satisfies $u^4=-4$.

**This answers (b).** $E$ and the lemniscate curve are not isomorphic over $\mathbb{Q}$. They become isomorphic over $\mathbb{Q}(i)$, where $u=1+i$. In the language of Chapter 13 the lemniscate curve is a form of $E$, a **twist**. Theorem 17.2 also shows that $y^2=x^3+Dx$ and $y^2=x^3+D'x$ are isomorphic over $\mathbb{Q}$ exactly when $D'/D$ is a fourth power, so $E$ has infinitely many twists over $\mathbb{Q}$ (Variation 2).

A second proof avoids coordinates. With a rational base point the rational points form a group, and by translating, as above, its isomorphism type does not depend on which rational point is the zero. On $E$ the three points $(0,0)$ and $(\pm1,0)$ have order 2. On $Y^2=X^3+4X$ only $(0,0)$ does, because $X^2+4$ has no rational root.

**Why the field matters.** Over finite fields the comparison is subtler still. The map
$$\varphi(x,y)=\Bigl(x-\frac1x,\ -\frac{y\,(x^2+1)}{x^2}\Bigr)$$
sends $E$ onto $Y^2=X^3+4X$. It has degree 2, kills $(0,0)$, and is defined over $\mathbb{Q}$, so the two curves are **isogenous**. Isogenous curves have the same number of points over every finite field where both are smooth, and here that means every $\mathbb{F}_p$ with $p$ odd. Over $\mathbb{F}_3$ both have 4 points, but $E(\mathbb{F}_3)\cong\mathbb{Z}/2\times\mathbb{Z}/2$ while the other group is $\mathbb{Z}/4$, so the curves differ over $\mathbb{F}_3$ as well. Tate proved in 1966 that, over a finite field, two curves of genus 1 have the same number of points exactly when they are isogenous.

### (c) Automorphisms {-}

**$\widehat G$.** Its branch set is $\{0,\infty,\pm1,\pm i\}$, the six vertices of Chapter 10's octahedron. A Möbius transformation is determined by the images of three points, so it is enough to test the $6\cdot5\cdot4=120$ candidates. Exactly 24 of them preserve the set: the rotations of the octahedron. By Proposition 17.7, $\vert\operatorname{Aut}(\widehat G)\vert=48$. That is the most possible in genus 2, and $\widehat G$ is known as the **Bolza curve**, after Bolza's study of 1887.

**$y^2=x^8-1$.** The branch set is the set of eighth roots of unity, the vertices of a regular octagon around the equator of the Riemann sphere. Testing the $8\cdot7\cdot6=336$ candidates shows that the Möbius transformations preserving it are $x\mapsto\zeta x$ and $x\mapsto\zeta/x$ with $\zeta^8=1$, sixteen in all, so $\vert\operatorname{Aut}\vert=32$.

**The Fermat quartic.** Here Corollary 17.6 helps a second time. An automorphism acts linearly on $\Omega^1$, whose basis $dx/f_y$, $x\,dx/f_y$, $y\,dx/f_y$ matches the coordinates, so it is the restriction of a projective linear map of $\mathbb{P}^2$. It permutes the 12 Weierstrass points. These lie four on each of the lines $x=0$, $y=0$ and $z=0$, and any other line through two of them contains no third. So the map permutes the three coordinate lines, and its matrix is monomial:
$$(x,y,z)\mapsto\bigl(a\,x_{\sigma(1)},\ b\,x_{\sigma(2)},\ x_{\sigma(3)}\bigr)$$
for a permutation $\sigma$ of the coordinates and constants $a,b$. For each of the 6 permutations, exactly 16 choices of $a$ and $b$, all eighth roots of unity, preserve $x^4+y^4=z^4$. So $\vert\operatorname{Aut}\vert=96$.

**This answers (c).** The three curves have 48, 96 and 32 automorphisms, against Hurwitz's bounds of 84 in genus 2 and 168 in genus 3. Riemann–Hurwitz confirms the counts. For $\widehat G$ and the Fermat quartic the quotient by the whole group has genus 0 and ramification indices $(2,3,8)$, and indeed $2=48\cdot\frac1{24}$ and $4=96\cdot\frac1{24}$, since $-2+\frac12+\frac23+\frac78=\frac1{24}$. For $y^2=x^8-1$ the indices are $(2,4,8)$, and $4=32\cdot\frac18$. The bound 168 is attained by Klein's quartic $x^3y+y^3z+z^3x=0$ (Variation 5).

## What Just Happened

- **Invariants.** To prove two curves different, compute something that every isomorphism preserves: the genus, the $j$-invariant, whether the curve is hyperelliptic, the number of Weierstrass points, the size of the automorphism group.
- **Genus 1.** The $j$-invariant classifies curves of genus 1 over $\mathbb{C}$. Over a smaller field, curves with the same $j$ can differ by twisting, as $y^2=x^3+Ax+B$ and $y^2=x^3+u^4Ax+u^6B$ do when $u$ is not in the field.
- **Genus at least 2.** The canonical map either embeds the curve or folds it two-to-one onto a rational normal curve, and the second case is exactly the hyperelliptic one, with a unique double cover of the line. In genus 3 every curve is hyperelliptic or a smooth plane quartic.
- **Automorphisms.** On a hyperelliptic curve they come from Möbius transformations of the branch points, and on a plane quartic from projective linear maps. Riemann–Hurwitz bounds their number by $84(g-1)$.
- **The problem.** The seven curves fall into five classes over $\mathbb{C}$. Over $\mathbb{Q}$, $E$ and the lemniscate curve are twists of each other, isogenous but not isomorphic. The curves of genus 2 and 3 have 48, 96 and 32 automorphisms.

## Threads

**When are two curves the same?** For the cast this thread is finished. Over $\mathbb{C}$, curves of genus 1 are classified by a single number $j$, so they form a one-parameter family, the $j$-line. Riemann counted in 1857 that curves of genus $g\geq2$ depend on $3g-3$ parameters. The space whose points are their isomorphism classes, the moduli space, is one of the subjects of the Afterword.

**Forms and twists.** Over $\mathbb{Q}$ the classification has a second layer. Curves that become isomorphic over $\overline{\mathbb{Q}}$ can differ over $\mathbb{Q}$, and Galois cohomology classifies the possibilities [Si, X.2 and X.5]. The circle and the hyperbola (Chapter 2), the conic $x^2+y^2=3$ and the line (Chapter 16), and now $E$ and the lemniscate curve are three examples.

**Weierstrass points as fingerprints.** An isomorphism preserves gaps and weights. In genus 3 the number of Weierstrass points ranges from 8, on a hyperelliptic curve, to 24 on a general plane quartic, whose Weierstrass points are its 24 ordinary flexes. The Fermat quartic, with 12 hyperflexes, sits in between.

**History.** Klein found the quartic with 168 symmetries in 1879, in a paper on the transformation of order 7 of elliptic functions. Bolza listed the curves of genus 2 with extra automorphisms in 1887, and Hurwitz proved the bound $84(g-1)$ in 1893. A curve attaining the bound in some genus is called a Hurwitz curve.

**Codes.** Chapter 18 builds a code from $y^2+y=x^3$ over $\mathbb{F}_4$. Over $\mathbb{Q}$ the same equation, with $Y=8y+4$ and $X=4x$, becomes $Y^2=X^3+16$. Its $j$-invariant is 0, and it is a twist of the Fermat cubic, isomorphic to it over $\mathbb{Q}(\sqrt{-3})$, because $-432=(\sqrt{-3})^6\cdot16$.

## Variations

These are optional. A hint follows each one.

**Variation 1.** Show that for $j\neq0,1728$ the curve $y^2=x^3+Ax+A$ with $A=\frac{27j}{4(1728-j)}$ has $j$-invariant $j$.
*Hint:* Here $4A^3+27B^2=A^2(4A+27)$, so the $j$-invariant is $1728\cdot\frac{4A}{4A+27}$. Solve for $A$.

**Variation 2.** Show that $y^2=x^3+Dx$ and $y^2=x^3+D'x$, with $D,D'\in\mathbb{Q}^*$, are isomorphic over $\mathbb{Q}$ exactly when $D'/D$ is a fourth power in $\mathbb{Q}$. Deduce that $y^2=x^3-x$, $y^2=x^3+x$, $y^2=x^3+4x$ and $y^2=x^3-4x$ are pairwise non-isomorphic over $\mathbb{Q}$. Over which fields do the last three become isomorphic to $E$?
*Hint:* With $B=B'=0$, Theorem 17.2 only asks for $u^4=D'/D$, and translations take care of the base points, as in part (b). Isomorphism with $E$ needs $u^4=-1$, $-4$ and $4$ respectively. The smallest fields containing such a $u$ are $\mathbb{Q}(\zeta_8)$, where $\zeta_8$ is a primitive eighth root of unity, then $\mathbb{Q}(i)$, and then either $\mathbb{Q}(\sqrt2)$ or $\mathbb{Q}(\sqrt{-2})$.

**Variation 3.** Show that the Fermat cubic and $y^2=x^3+1$ are isomorphic over a field $K\supseteq\mathbb{Q}$ exactly when $K$ contains $\sqrt{-3}$ and $\sqrt[3]2$.
*Hint:* Theorem 17.2 asks for $u\in K$ with $u^6=-432$. One solution is $u=\sqrt{-3}\,\sqrt[3]4$, and the others are $u\zeta$ with $\zeta^6=1$. From $u^2=-6\sqrt[3]2$ and $u^3=-12\sqrt{-3}$, each solution generates $\mathbb{Q}(\sqrt{-3},\sqrt[3]2)$, a field of degree 6.

**Variation 4.** Show that $y^2=x^8+14x^4+1$ has genus 3 and at least 48 automorphisms, so that it is not isomorphic to $y^2=x^8-1$ over $\mathbb{C}$, although both are hyperelliptic of genus 3.
*Hint:* The rotations $x\mapsto ix$ and $x\mapsto(1+x)/(1-x)$ of Chapter 10's octahedron generate its 24 rotations, and both preserve the roots of $x^8+14x^4+1$, which are the vertices of a cube. For the second, check that $(1-x)^8+14(1+x)^4(1-x)^4+(1+x)^8=16(x^8+14x^4+1)$. Then use Proposition 17.7 and part (c).

**Variation 5.** Show that Klein's quartic $x^3y+y^3z+z^3x=0$ is smooth, and that $(x,y,z)\mapsto(\zeta x,\zeta^4y,\zeta^2z)$ with $\zeta^7=1$ and $(x,y,z)\mapsto(y,z,x)$ are automorphisms. Klein proved that it has exactly 168. Granting this, show that the quotient map to $X/\operatorname{Aut}(X)$ has ramification indices $2,3,7$.
*Hint:* If the three partial derivatives vanish, then $3x^2y=-z^3$, $3y^2z=-x^3$ and $3z^2x=-y^3$. Multiplying them gives $28x^3y^3z^3=0$, and then all three coordinates vanish. For the quotient, Riemann–Hurwitz gives $4=168\bigl(2h-2+\sum(1-\frac1{e_i})\bigr)$, so the bracket is $\frac1{42}$, which forces $h=0$ and $(2,3,7)$.

## Reading Map

- **[H, IV.4–IV.5]:** the $j$-invariant through the Legendre form (Theorem IV.4.1), and the canonical embedding and hyperelliptic curves (IV.5). Hurwitz's theorem is Ex. IV.2.5, the finiteness of automorphism groups Ex. IV.5.2, and the automorphisms of curves of genus 3, with Klein's quartic, Ex. IV.5.7.
- **[Si, III.1, III.10 and X.5]:** Weierstrass equations, their changes of coordinates and the $j$-invariant (Proposition III.1.4), automorphism groups (Theorem III.10.1), and twists.
- **H. M. Farkas and I. Kra, *Riemann Surfaces*,** III.7, III.10 and V.1: hyperelliptic surfaces, the canonical embedding, and Hurwitz's theorem.
- **S. Levy (ed.), *The Eightfold Way: The Beauty of Klein's Quartic Curve*:** essays on Klein's quartic, with an English translation of Klein's paper.
- **Sources.** F. Klein, "Ueber die Transformation siebenter Ordnung der elliptischen Functionen", *Mathematische Annalen* 14 (1879). O. Bolza, "On binary sextics with linear transformations into themselves", *American Journal of Mathematics* 10 (1887). A. Hurwitz, "Über algebraische Gebilde mit eindeutigen Transformationen in sich", *Mathematische Annalen* 41 (1893). J. Tate, "Endomorphisms of abelian varieties over finite fields", *Inventiones Mathematicae* 2 (1966).
