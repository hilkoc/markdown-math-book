# The Circle and the Cubic, Revisited

## The Problem

Chapter 1 parametrized the circle by drawing lines through one rational point, watched the method fail on cubics, and left two questions open. Which curves can be parametrized? And why does the chord-and-tangent construction on a cubic behave like addition? It stated the answer to the first as Theorem 1.6, without proof.

Since then, Chapter 9 has proved the "only if" half of Theorem 1.6: a curve of positive genus cannot be parametrized. Chapters 8 and 9 made the points of a smooth cubic $y^2=x^3+ax+b$ into a group by sending each point $P$ to the divisor class $[P-\infty]$, but they left open whether every class of degree 0 arises in this way. This chapter finishes both questions.

> **Problem 16.** Let $X$ be a smooth projective curve defined over $\mathbb{Q}$.
> (a) If $X$ has genus 0 and a rational point, show that it can be parametrized over $\mathbb{Q}$. What can be said when there is no rational point, as for $x^2+y^2=3$?
> (b) If $X$ has genus 1 and a rational point $O$, show that $X$ is isomorphic over $\mathbb{Q}$ to a cubic $y^2=x^3+ax+b$, with $O$ at infinity. Show that its rational points, under the chord-and-tangent law, form exactly the group of rational divisor classes of degree 0.
> (c) Find the cubic hiding inside the lemniscate curve $y^2=1-x^4$.

Chapter 15 supplies the tool for all three parts. But it was proved over an algebraically closed field, and the problem is about $\mathbb{Q}$.

## First Attempts

**Lines through a known point.** For a conic with a rational point, Chapter 1's method always works. But a curve of genus 0 need not arrive as a conic. Lines through a singular point parametrized the node and the cusp (Chapter 1) and the three-leaved rose (Chapter 12). For Bernoulli's lemniscate, lines through the node meet the quartic in two further points, and Chapter 12 could only check a parametrization that was handed to it. A curve given by its function field, or by a smooth model in a higher-dimensional space, offers no pencil of lines at all.

**Riemann–Roch over $\overline{\mathbb{Q}}$.** Chapter 15 found the parameter in one line: if $g=0$ then $\ell(P)=2$, so some function has a single simple pole at $P$. But the theorem was proved over $\overline{\mathbb{Q}}$, and the function it provides might have irrational coefficients. A parametrization with coefficients in $\mathbb{Q}(\sqrt3)$ would say nothing about rational points.

**Lines on a cubic only rewrite it.** Chapter 1 turned the Fermat cubic $x^3+y^3=1$ into $Y^2=X^3-432$, and concluded only that the method "does not solve it; it only rewrites it". On the lemniscate curve, lines through $(0,1)$ meet the quartic in three further points (Chapter 9), and the method does not even produce a cubic. We need to know when a curve *is* a cubic, and how to find the equation.

## The Ideas We Need

### Curves over $\mathbb{Q}$ {-}

Let $X$ be a smooth projective curve defined by equations with rational coefficients and irreducible over $\overline{\mathbb{Q}}$. Over $\overline{\mathbb{Q}}$ it is a curve in the sense of Chapters 7–15, with the same genus, and the Galois group $\operatorname{Gal}(\overline{\mathbb{Q}}/\mathbb{Q})$ acts on its points and functions. The rational points are the fixed points, and the functions defined over $\mathbb{Q}$ form the field $\mathbb{Q}(X)$. A divisor is **defined over $\mathbb{Q}$** if the Galois group fixes it. Examples are a rational point, the pair $I+J$ of conjugate points at infinity on the circle, the divisor of any $f\in\mathbb{Q}(X)$, and the divisor of any differential $\omega=f\,dg$ with $f,g\in\mathbb{Q}(X)$. So a canonical divisor $K$ can be chosen defined over $\mathbb{Q}$.

**Proposition 16.1 (descent).** If a divisor $D$ is defined over $\mathbb{Q}$, then $L(D)$ has a basis of functions in $\mathbb{Q}(X)$. Hence Riemann–Roch holds for $D$ with dimensions counted over $\mathbb{Q}$.

*Sketch.* The Galois group acts on $L(D)$, because it fixes $D$. A vector space over $\overline{\mathbb{Q}}$ with a compatible Galois action is spanned by its fixed vectors, a form of Hilbert's Theorem 90, and the fixed vectors in $L(D)$ are the functions in $\mathbb{Q}(X)$. $\square$

> **Look up.** [Si, II.5, Proposition 5.8], next to Riemann–Roch itself (Theorem II.5.4); [S, Chapter 1], which works over any constant field from the start.

Everything below works over any field of characteristic 0 in place of $\mathbb{Q}$, and most of it in characteristic $p$ too.

### Genus 0 {-}

**Theorem 16.2.** Let $X$ be a smooth projective curve of genus 0 over $\mathbb{Q}$.

1. If $X$ has a rational point $P$, some $f\in\mathbb{Q}(X)$ has a single simple pole, at $P$, and $f$ is an isomorphism $X\to\mathbb{P}^1$ over $\mathbb{Q}$. Its inverse is a parametrization of $X$ over $\mathbb{Q}$.
2. In general, the functions in $L(-K)$ embed $X$ in $\mathbb{P}^2$ as a smooth conic defined over $\mathbb{Q}$.
3. $X$ has a rational point exactly when it carries a divisor of odd degree defined over $\mathbb{Q}$.

*Proof.* (1) By Theorem 15.1, $\ell(P)=1+1-0+\ell(K-P)=2$, since $K-P$ has degree $-3$. By Proposition 16.1 there is a nonconstant $f\in\mathbb{Q}(X)$ with $\operatorname{div}(f)\geq-P$. It has a single simple pole, so the morphism $f:X\to\mathbb{P}^1$ has degree 1 (Corollary 8.4), and $\mathbb{Q}(X)=\mathbb{Q}(f)$. So the coordinates on $X$ are rational functions of $f$ with rational coefficients, and $f$ is a rational function of the coordinates. (2) The divisor $-K$ has degree 2, and $\ell(-K)=3$. Since $2\geq2g+1$, Theorem 15.6 embeds $X$ by a basis of $L(-K)$, which can be taken in $\mathbb{Q}(X)$, as a curve of degree 2 in $\mathbb{P}^2$. (3) A rational point is a divisor of degree 1. Conversely, if $D$ is defined over $\mathbb{Q}$ and has degree $2m+1$, then $D+mK$ has degree 1 and $\ell(D+mK)=2$. A nonzero $f\in\mathbb{Q}(X)$ in that space gives an effective divisor $\operatorname{div}(f)+D+mK$ of degree 1, defined over $\mathbb{Q}$, and that is a rational point. $\square$

Hilbert and Hurwitz proved in 1890 that every curve of genus 0 over $\mathbb{Q}$ is birational over $\mathbb{Q}$ to a line or a conic, which is parts 1 and 2 in the language of their time.

> **Look up.** [S, §1.6], over any field; [H, IV.1], over an algebraically closed field, where every curve of genus 0 is $\mathbb{P}^1$.

### Genus 1: Weierstrass equations {-}

**Theorem 16.3.** Let $X$ be a smooth projective curve of genus 1 over $\mathbb{Q}$, with a rational point $O$. Then there are $x\in L(2O)$ and $y\in L(3O)$ in $\mathbb{Q}(X)$, with poles of exact orders 2 and 3 at $O$, such that $P\mapsto[x:y:1]$ is an isomorphism over $\mathbb{Q}$ from $X$ onto a smooth cubic
$$y^2=x^3+ax+b,\qquad a,b\in\mathbb{Q},\quad 4a^3+27b^2\neq0,$$
sending $O$ to the point at infinity $[0:1:0]$.

*Proof.* By Corollary 15.2, $\ell(nO)=n$ for $n\geq1$, and by Proposition 16.1 the spaces have bases in $\mathbb{Q}(X)$. So $L(2O)=\langle1,x\rangle$ and $L(3O)=\langle1,x,y\rangle$ for some $x$ and $y$ with poles of orders 2 and 3. The seven functions
$$1,\ x,\ y,\ x^2,\ xy,\ x^3,\ y^2$$
lie in $L(6O)$, which has dimension 6, so they satisfy a linear relation over $\mathbb{Q}$. Only $x^3$ and $y^2$ have poles of order 6, so both occur in it, and after scaling $x$ and $y$ the relation reads
$$y^2+a_1xy+a_3y=x^3+a_2x^2+a_4x+a_6.$$
Completing the square in $y$ and then the cube in $x$ brings it to the form $y^2=x^3+ax+b$, and the new $x$ and $y$ still lie in $L(2O)$ and $L(3O)$. By Theorem 15.6, with $\deg3O=3=2g+1$, the map $P\mapsto[x:y:1]$ embeds $X$ in $\mathbb{P}^2$ as a curve of degree 3, which must be this cubic. So the cubic is smooth, which for $y^2=x^3+ax+b$ means $4a^3+27b^2\neq0$. Finally $[x:y:1]=[x/y:1:1/y]$, and $x/y$ and $1/y$ vanish at $O$, so $O$ goes to $[0:1:0]$. $\square$

The equation is called a **Weierstrass equation**, and a curve of genus 1 with a chosen rational point is an **elliptic curve**. The line at infinity meets the cubic only at $O$, three times, so $O$ is a flex.

> **Look up.** [Si, III.3, Proposition 3.1], and [Si, III.1] for Weierstrass equations; [H, IV.4]; [S, §6.1].

### The group law {-}

For a curve $X$ over $\mathbb{Q}$, let $\operatorname{Pic}^0_{\mathbb{Q}}(X)$ be the group of divisors of degree 0 defined over $\mathbb{Q}$, modulo the divisors of functions in $\mathbb{Q}(X)$.

**Theorem 16.4.** Let $X$ be an elliptic curve over $\mathbb{Q}$, with base point $O$. The map
$$\iota:X(\mathbb{Q})\to\operatorname{Pic}^0_{\mathbb{Q}}(X),\qquad P\mapsto[P-O],$$
is a bijection, and it carries the chord-and-tangent construction of Section 8.4, with $O$ as the zero, to addition. So the rational points of $X$ form an abelian group.

*Proof.* Injectivity is Chapter 8's argument: if $P-O\sim Q-O$ with $P\neq Q$, some function would have a single simple pole, and $X$ would be rational, which a curve of genus 1 is not (Theorem 9.10). For surjectivity, let $D$ be a divisor of degree 0 defined over $\mathbb{Q}$. Then $\ell(D+O)=1$ by Corollary 15.2, so some $f\in\mathbb{Q}(X)$ makes $\operatorname{div}(f)+D+O$ effective. That divisor has degree 1 and is defined over $\mathbb{Q}$, so it is a rational point $P$, and $D\sim P-O$. Finally, Section 8.4's computation $P+Q\sim(P\oplus Q)+O$ works on every Weierstrass cubic (Corollary 9.13), and when $P$ and $Q$ are rational it uses only lines with rational coefficients. $\square$

Associativity, the property that seemed mysterious in Chapter 1, comes for free: the group $\operatorname{Pic}^0_{\mathbb{Q}}(X)$ is associative, and $\iota$ is a bijection.

> **Look up.** [Si, III.3, Proposition 3.4] and [Si, III.2] for the formulas; [H, II.6, Example 6.10.2].

### Genus 2 {-}

**Proposition 16.5.** Let $X$ be a curve of genus 2, and $\omega_1,\omega_2$ a basis of $\Omega^1(X)$. Then $h=\omega_2/\omega_1$ is a function of degree 2. So $X$ is hyperelliptic, and in characteristic $\neq2$ it is the smooth model of $y^2=f(h)$, with $f$ squarefree of degree 5 or 6.

*Proof.* Canonical divisors have degree $2g-2=2$. For a point $P$, Theorem 15.1 with $D=P$ gives $\ell(P)-\ell(K-P)=1+1-2=0$, and $\ell(P)=1$ because $X$ is not rational, so $\ell(K-P)=1<2=\ell(K)$. So some regular differential does not vanish at $P$, and $\omega_1$ and $\omega_2$, which span them all, do not both vanish there. Hence $\operatorname{div}(\omega_1)$ and $\operatorname{div}(\omega_2)$ are effective divisors of degree 2 with no common point. Since $\operatorname{div}(h)=\operatorname{div}(\omega_2)-\operatorname{div}(\omega_1)$, the polar divisor of $h$ is $\operatorname{div}(\omega_1)$, of degree 2. The last statement is Section 11.4 and Theorem 11.6. $\square$

Over $\mathbb{Q}$, a basis of $\Omega^1(X)$ can be taken defined over $\mathbb{Q}$ (Proposition 16.1), so $h\in\mathbb{Q}(X)$, and every curve of genus 2 over $\mathbb{Q}$ has an equation $y^2=f(h)$ with rational coefficients.

> **Look up.** [H, Ex. IV.1.7]; [S, §6.2].

## The Solution

### (a) Genus 0 {-}

Theorem 16.2 answers the first question. A curve of genus 0 with a rational point is $\mathbb{P}^1$ over $\mathbb{Q}$, and the inverse of the isomorphism is a parametrization. Together with Theorem 9.10, this proves Theorem 1.6. Over $\mathbb{C}$, every curve of genus 0 has points, so it can be parametrized. Over $\mathbb{Q}$, it can be parametrized exactly when its smooth model has a rational point, because a parametrization produces rational points, and a rational point produces a parametrization.

**The circle.** For $P_0=(-1,0)$, the function promised by Theorem 16.2 is Chapter 1's slope $t=y/(x+1)$. At $P_0$ the tangent is vertical, so $x+1$ vanishes to order 2 and $y$ to order 1, and $t$ has a simple pole. At the points at infinity $I$ and $J$, where $t^2=(1-x)/(1+x)$ tends to $-1$, it is finite. So $L(P_0)=\langle1,t\rangle$, and stereographic projection is the Riemann–Roch function.

**Bernoulli's lemniscate.** The quartic $(x^2+y^2)^2=x^2-y^2$ has genus 0 (Variation 1 of Chapter 12). Its node at the origin has the rational tangents $y=\pm x$, so its smooth model has two rational points there, one on each branch, and Theorem 16.2 promises a function with a single simple pole at either of them. One is
$$t=\frac{x^2+y^2}{x+y},$$
whose pole lies on the branch tangent to $y=-x$, and Chapter 12's formulas $x=t(1+t^2)/(1+t^4)$, $y=t(1-t^2)/(1+t^4)$ are its inverse. The level curves $x^2+y^2=t(x+y)$ show how it could have been found. They are circles through the three nodes, tangent at the origin to the branch along $y=-x$. By Bézout's theorem each meets the quartic 8 times, and the nodes absorb 7 of them: 2 at each circular point and 3 at the origin. That leaves one intersection point, which moves with $t$. Lines were the wrong pencil, and Riemann–Roch guarantees that a right one exists.

**A conic without points.** The curve $x^2+y^2=3$ has genus 0 and no rational points (Proposition 1.5), so it cannot be parametrized over $\mathbb{Q}$. Part 2 of Theorem 16.2 says that it is typical. Every curve of genus 0 over $\mathbb{Q}$ is a conic, and the conics without rational points are exactly the curves of genus 0 that are not $\mathbb{P}^1$ over $\mathbb{Q}$. Over $\mathbb{Q}(\sqrt3)$ this one has the point $(\sqrt3,0)$, and lines through it give
$$x=\frac{\sqrt3\,(t^2-1)}{t^2+1},\qquad y=-\frac{2\sqrt3\,t}{t^2+1}.$$
So it is a **form** of $\mathbb{P}^1$ in the sense of Chapter 13: isomorphic to the line over a larger field, but not over $\mathbb{Q}$. Part 3 adds that it has no point over any field of odd degree over $\mathbb{Q}$ (Variation 1). Legendre's theorem, mentioned in Chapter 1, decides whether a conic has a rational point. In the language of the Hasse–Minkowski theorem, a conic has a rational point exactly when it has a real point and a point over every $p$-adic field $\mathbb{Q}_p$. For $x^2+y^2=3$ the test fails over $\mathbb{Q}_2$ and over $\mathbb{Q}_3$, and the argument modulo 3 in Proposition 1.5 is the failure over $\mathbb{Q}_3$.

**Why the smooth model.** Theorem 1.6 asks for a rational point on the smooth model, not merely on the curve. Replace $x$ and $y$ by $1/x$ and $1/y$ in $x^2+y^2=3$ and clear denominators:
$$x^2+y^2=3x^2y^2.$$
This quartic is birational over $\mathbb{Q}$ to the pointless conic, so it has genus 0 and no parametrization over $\mathbb{Q}$. Yet it contains the rational point $(0,0)$. That point is singular, with tangent cone $x^2+y^2=0$, so the two points of the smooth model above it are conjugate over $\mathbb{Q}(i)$, and neither is rational. The other two singular points, $[1:0:0]$ and $[0:1:0]$, have branches conjugate over $\mathbb{Q}(\sqrt3)$, and these three singular points are the quartic's only rational points. A rational singular point helps only when one of its branches is rational, as at the node of Bernoulli's lemniscate.

### (b) Weierstrass equations and the group law {-}

Theorem 16.3 gives the Weierstrass equation, and Theorem 16.4 the group. Here they are on Chapter 1's three cubics.

**$E:\ y^2=x^3-x$.** It is already in Weierstrass form, with $O=\infty$. Its rational points are $O$, $(0,0)$, $(1,0)$ and $(-1,0)$ (Chapter 1). The last three have vertical tangents, so each is its own negative, and the sum of any two is the third. The group is $\mathbb{Z}/2\times\mathbb{Z}/2$.

**Bachet's curve $y^2=x^3-2$.** The point $P=(3,5)$ has infinite order, by the Nagell–Lutz theorem of Chapter 1's Reading Map. In Chapter 1, the tangent at $P$ met the curve again at $\bigl(\tfrac{129}{100},\tfrac{383}{1000}\bigr)$. In the group that third point is $-2P$, and its reflection $\bigl(\tfrac{129}{100},-\tfrac{383}{1000}\bigr)$ is $2P$. Variation 5 of Chapter 1 drew the chord through $P$ and $2P$, which meets the curve again at $-3P$, so $x(3P)=\tfrac{164323}{29241}$. Chapter 1's list of $x$-coordinates was built from chords and tangents in a particular order, and Theorem 16.4 guarantees that the order does not matter: every route to $nP$ computes the class $n[P-O]$ in $\operatorname{Pic}^0_{\mathbb{Q}}$.

**The Fermat cubic.** Take $O=(1,0)$. It is a flex, with tangent $x=1$ meeting the curve three times there, so $1-x$ vanishes to order 3 at $O$, and $y$ to order 1. The functions
$$u=\frac{y}{1-x}\in L(2O),\qquad v=\frac{1+x}{1-x}\in L(3O)$$
have no other poles, because $x=1$ only at $O$, and both stay finite at the three points at infinity. The relation that Theorem 16.3 predicts follows from $y^3=1-x^3$. It is $3v^2=4u^3-1$, and with $X=12u$ and $Y=36v$ it becomes
$$Y^2=X^3-432.$$
This is Chapter 1's curve, and Chapter 1's substitution was Theorem 16.3 in disguise: its $t$ and $s$ are $-u$ and $3v$. Because the base point is a flex, the isomorphism is even a projective change of coordinates: $[x:y:z]=[Y-36Z:6X:Y+36Z]$ carries $Y^2Z=X^3-432Z^3$ onto $x^3+y^3=z^3$. The three rational points of the Fermat cubic correspond to the three rational points of the Weierstrass cubic:
$$(1,0)\mapsto O,\qquad(0,1)\mapsto(12,36),\qquad[1:-1:0]\mapsto(12,-36).$$
This answers Variation 4 of Chapter 1: the point $(12,-36)$ is the "missing" third point of the line $x+y=1$, at infinity. The tangent $Y=6X-36$ at $P=(12,36)$ meets the cubic only there, since $(6X-36)^2-X^3+432=-(X-12)^3$. So $3P\sim3O$, and $P$ has order 3. Euler's theorem that $a^3+b^3=c^3$ has no solutions in nonzero integers says exactly that this group of order 3 is the whole group of rational points.

Chapter 1 asked why a construction with lines should obey the associative law. The answer is Theorem 16.4: the chord-and-tangent sum is addition of divisor classes, written in the coordinates of a cubic.

### (c) The lemniscate's cubic {-}

The lemniscate curve $y^2=1-x^4$ has genus 1 (Chapter 9) and the rational point $O=(1,0)$. There $y$ is a uniformizer and $1-x$ vanishes to order 2, while at the two points at infinity $1/(1-x)$ vanishes and $y/(1-x)^2$ stays finite. So $L(2O)$ contains $u=1/(1-x)$ and $L(3O)$ contains $v=y/(1-x)^2$. Since $x=1-1/u$ and $y^2=1-x^4$, they satisfy
$$v^2=u^4-(u-1)^4=4u^3-6u^2+4u-1.$$
Normalizing as Theorem 16.3 asks, with $X=4u-2$ and $Y=4v$, gives
$$X=\frac{2\,(1+x)}{1-x},\qquad Y=\frac{4\,y}{(1-x)^2},\qquad Y^2=X^3+4X.$$
The inverse is
$$x=\frac{X-2}{X+2},\qquad y=\frac{4Y}{(X+2)^2}.$$
**This answers (c).** The cubic hiding inside the lemniscate curve is $Y^2=X^3+4X$.

Its rational points are the images of the four rational points $(\pm1,0)$ and $(0,\pm1)$ of the lemniscate curve, which are all of them by Fermat's theorem that $c^4-a^4=b^2$ has no solutions in nonzero integers:
$$(1,0)\mapsto O,\qquad(-1,0)\mapsto(0,0),\qquad(0,\pm1)\mapsto(2,\pm4).$$
The tangent at $(2,4)$ is $Y=2X$, which meets the cubic again at $(0,0)$, so $2\cdot(2,4)=(0,0)$, and $(2,4)$ has order 4. The rational points of the lemniscate curve form a cyclic group of order 4, generated by $(0,1)$.

Over $\mathbb{C}$, Chapter 9 showed that the lemniscate curve is isomorphic to $E$. In Weierstrass form an isomorphism is $X=2ix$, $Y=(2i-2)y$, which carries $y^2=x^3-x$ onto $Y^2=X^3+4X$ because $(1+i)^4=-4$. It needs $i$. Whether the two curves are isomorphic over $\mathbb{Q}$ is Chapter 17's question.

### Genus 2 {-}

On $\widehat G$, the quotient of $x\,dx/y$ by $dx/y$ is $x$, the map of degree 2 that defined the curve, as Proposition 16.5 predicts. On Chapter 7's nodal quartic model $xs^2z=x^4-z^4$ the same map is projection from the node. The regular differentials come from the lines through the node (Variation 4 of Chapter 10), and each such line meets the quartic in two more points. So a curve of genus 2 is never a smooth plane curve (Corollary 10.7), but it is always a double cover of the line.

## What Just Happened

- **Riemann–Roch over $\mathbb{Q}$.** A divisor defined over $\mathbb{Q}$ has a Riemann–Roch space with a basis defined over $\mathbb{Q}$, so the theorem and its consequences hold over $\mathbb{Q}$.
- **Genus 0.** A rational point gives a function with a single simple pole, which is a parametrization over $\mathbb{Q}$. Without one, the curve is a conic with no rational points, a form of $\mathbb{P}^1$. The point must lie on the smooth model: a rational singular point whose branches are conjugate does not count. This completes Theorem 1.6.
- **Genus 1.** A rational point $O$ gives $x$ and $y$ with poles of order 2 and 3, and seven functions in a six-dimensional space give a Weierstrass equation.
- **The group law.** $P\mapsto[P-O]$ identifies the rational points with $\operatorname{Pic}^0_{\mathbb{Q}}$, so chords and tangents add divisor classes, and associativity is automatic.
- **The problem.** The circle's parameter is its Riemann–Roch function, $x^2+y^2=3$ is a pointless form of the line, the Fermat cubic is $Y^2=X^3-432$ with three rational points, and the lemniscate curve is $Y^2=X^3+4X$ with four.
- **Genus 2.** The quotient of two regular differentials has degree 2, so every curve of genus 2 is hyperelliptic.

## Threads

**Which curves can be parametrized?** This thread is finished. Over an algebraically closed field, exactly the curves of genus 0. Over $\mathbb{Q}$, exactly the curves of genus 0 whose smooth model has a rational point, which Legendre's theorem decides for conics.

**Why do the rational points of a cubic form a group?** This thread is finished too: they are the divisor classes of degree 0 defined over $\mathbb{Q}$. Poincaré's paper of 1901 (Chapter 1) asked, in effect, whether finitely many rational points always generate all the others, and Mordell proved in 1922 that they do. The torsion part is one of fifteen groups, by Mazur's theorem of 1977, and the groups $\mathbb{Z}/2\times\mathbb{Z}/2$, $\mathbb{Z}/3$ and $\mathbb{Z}/4$ found above are three of them. Bachet's curve has rank 1. The rank is the subject of the Birch and Swinnerton-Dyer conjecture (Afterword).

**Genus 1 without a rational point.** Selmer showed in 1951 that the smooth cubic $3x^3+4y^3+5z^3=0$ has points over $\mathbb{R}$ and over every $p$-adic field but none over $\mathbb{Q}$. So Theorem 16.3 cannot start, and the local test that decides conics fails for curves of genus 1. Such a curve is still a form of an elliptic curve, its Jacobian (Afterword).

**Over $\mathbb{C}$.** The functions $x$ and $y$ of Theorem 16.3 are, after scaling, Weierstrass's function $\wp$ and its derivative $\wp'$ for the lattice of periods of the regular differential. On $\mathbb{C}$ modulo that lattice, $\wp$ has a double pole and $\wp'$ a triple pole at $0$, and their relation $\wp'^2=4\wp^3-g_2\wp-g_3$ is the relation in $L(6O)$. That is where the name comes from. Chapter 9 found that the periods of the lemniscate curve form a square lattice, and for a square lattice $g_3=0$, which matches the missing constant term of $Y^2=X^3+4X$.

**When are two curves the same?** The lemniscate's cubic $Y^2=X^3+4X$ and $E:\ y^2=x^3-x$ become isomorphic over $\mathbb{Q}(i)$, through the factor $1+i$. Chapter 17 decides whether they are isomorphic over $\mathbb{Q}$, and classifies the cast over $\mathbb{C}$. For genus at least 3, Proposition 16.5 has a sequel there: the canonical map is either of degree 2 or an embedding.

**Codes.** Chapter 18 uses the curve $y^2+y=x^3$ over $\mathbb{F}_4$, an elliptic curve in characteristic 2, where Weierstrass equations keep the terms $a_1xy$ and $a_3y$.

## Variations

These are optional. A hint follows each one.

**Variation 1.** Show that if the conic $x^2+y^2=3$ had a point with coordinates in a field of odd degree over $\mathbb{Q}$, it would have a rational point. Deduce that it has no point over any cubic field, such as $\mathbb{Q}(\sqrt[3]2)$.
*Hint:* If $P$ has coordinates in a field $K$ of odd degree $d$, then $P$ and its conjugates under $\operatorname{Gal}(\overline{\mathbb{Q}}/\mathbb{Q})$ add up to a divisor defined over $\mathbb{Q}$. Its degree is $[\mathbb{Q}(P):\mathbb{Q}]$, which divides $d$ and so is odd. Apply part 3 of Theorem 16.2.

**Variation 2.** Chapter 5 found $\mathbb{Q}(E)=\mathbb{Q}(t,s)$ with $s^2=t^4+4$. This quartic curve has two rational points at infinity, where $s/t^2\to\pm1$. Take $O$ to be the one with $s/t^2\to1$, and use Theorem 16.3 to recover $E$.
*Hint:* The function $(s+t^2)/2$ has a double pole at $O$ and a double zero at the other point at infinity, and $t\,(s+t^2)/2$ has a triple pole at $O$. They are the $x$ and $y$ of $E$, since $s=2x-t^2$ and $t=y/x$.

**Variation 3.** On $y^2=x^3+b$, show that the tangent construction gives
$$x(2P)=\frac{x^4-8bx}{4\,(x^3+b)},$$
and check Chapter 1's value $x(2P)=\frac{129}{100}$ for $P=(3,5)$ on Bachet's curve.
*Hint:* The slope of the tangent is $m=3x^2/2y$, and the $x$-coordinates of the three intersection points add up to $m^2$, so $x(2P)=m^2-2x$. Use $y^2=x^3+b$.

**Variation 4.** Show that a curve of genus 2 over $\mathbb{Q}$ has an equation $y^2=f(x)$ with rational coefficients and $f$ of degree 5 exactly when it has a rational Weierstrass point (Chapter 15). Which Weierstrass points of $\widehat G$ are rational?
*Hint:* At a Weierstrass point $P$ the gaps are 1 and 3, so $L(2P)$ contains a function $x$ of degree 2, defined over $\mathbb{Q}$ when $P$ is. Then $P$ is the only point over $x=\infty$, a branch point, and that forces $\deg f$ to be odd (Theorem 11.6). Conversely, the point at infinity of $y^2=f(x)$ with $\deg f=5$ is a rational Weierstrass point. On $\widehat G$ the Weierstrass points lie over $0$, $\pm1$, $\pm i$ and $\infty$, and the rational ones are those over $0$, $1$, $-1$ and $\infty$.

**Variation 5.** Chapter 9 wrote Euler's addition theorem with $(0,1)$ as the identity. Redo part (c) with $O=(0,1)$: show that $X=2(1+y)/x^2$ and $Y=4(1+y)/x^3$ lie in $L(2O)$ and $L(3O)$, and that they satisfy $Y^2=X^3+4X$ again. Use them to check Euler's formula $c=\bigl(a\sqrt{1-b^4}+b\sqrt{1-a^4}\bigr)/(1+a^2b^2)$ for $a=b=1$, and for the points $(1,0)$ and $(0,-1)$.
*Hint:* At $(0,\pm1)$ the function $x$ is a uniformizer, and $1+y$ vanishes to order 4 at $(0,-1)$. The inverse is $x=2X/Y$, $y=(X^3-4X)/Y^2$. The point $(1,0)$ goes to $(2,4)$, whose double is $(0,0)$, the image of $(0,-1)$, matching $c=0$. And $(2,4)+(0,0)=(2,-4)$, the image of $(-1,0)$, matching $c=-1$. Over $\mathbb{C}$ both Euler's formula and the group law add the integrals $\int dx/y$ (Section 9.6), so they agree wherever the formula is not $0/0$.

## Reading Map

- **[Si, III.1–III.3]:** Weierstrass equations and their discriminant, the group law and its formulas, the Weierstrass equation from Riemann–Roch (Proposition III.3.1), and the isomorphism with $\operatorname{Pic}^0$ (Proposition III.3.4). [Si, II.5] gives Riemann–Roch over a field that is not algebraically closed, with the descent of Proposition II.5.8.
- **[H, IV.1 and IV.4]:** curves of genus 0 and 2 (Ex. IV.1.7 shows that genus 2 curves are hyperelliptic), and elliptic curves through Riemann–Roch.
- **[S, §1.6 and Chapter 6]:** rational function fields over any field, and elliptic and hyperelliptic function fields, including characteristic 2 and 3.
- **J. H. Silverman and J. Tate, *Rational Points on Elliptic Curves*:** the group law, Mordell's theorem and torsion points, at an undergraduate level.
- **J.-P. Serre, *A Course in Arithmetic*,** Chapters III–IV: the Hasse–Minkowski theorem, which decides when a conic has a rational point.
- **Sources.** D. Hilbert and A. Hurwitz, "Über die diophantischen Gleichungen vom Geschlecht Null", *Acta Mathematica* 14 (1890). L. J. Mordell, "On the rational solutions of the indeterminate equations of the third and fourth degrees", *Proceedings of the Cambridge Philosophical Society* 21 (1922). E. S. Selmer, "The Diophantine equation $ax^3+by^3+cz^3=0$", *Acta Mathematica* 85 (1951).
