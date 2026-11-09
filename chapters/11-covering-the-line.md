# Covering the Line: Riemann–Hurwitz

## The Problem

> **Problem 11.** A nonconstant function $x$ on a curve $X$ makes $X$ a cover of the line, through the map $x:X\to\mathbb{P}^1$.
> (a) In characteristic other than 2, let $f\in k[x]$ be a squarefree polynomial of degree $n\geq1$. Find the genus of $y^2=f(x)$ from the way that $x$ covers the line.
> (b) In characteristic 2, the curve $y^2+y=x^3$ also covers the $x$-line with degree 2, but only one of its points is ramified. What is its genus?

Picturing a curve as sheets lying over the line goes back to Riemann. Chapter 10 used that picture over $\mathbb{C}$: a branched cover of the sphere has Euler characteristic $2n-\sum(e_P-1)$ (Proposition 10.5), and so the ramification determines the genus. This chapter proves the algebraic version, the **Riemann–Hurwitz formula**, which works over every algebraically closed field.

Part (b) shows that the algebraic version cannot simply copy the topological one. The curve $y^2+y=x^3$ returns in Chapter 18, where it has 9 points over $\mathbb{F}_4$ and produces good error-correcting codes.

In this chapter, as the preface warned, $k$ is algebraically closed of any characteristic $p\geq0$, where $p=0$ means characteristic 0. Chapters 5–8 hold in every characteristic, apart from Corollary 8.5. Chapter 9 needs adjusting wherever it divided by an integer, and Section 11.3 says how.

## First Attempts

**Count the differentials.** Take $n$ odd in part (a). Variation 4 of Chapter 9 found $\operatorname{div}(dx/y)=(n-3)\infty$, so $\Omega^1(X)=L\bigl((n-3)\infty\bigr)\cdot dx/y$. The functions regular on the affine curve are $a(x)+b(x)\,y$, and at $\infty$ the two terms have pole orders $2\deg a$, which is even, and $2\deg b+n$, which is odd, so they cannot cancel. Only the $a(x)$ with $2\deg a\leq n-3$ survive, so
$$\Omega^1(X)=\Bigl\{a(x)\,\frac{dx}{y}:\ \deg a\leq\frac{n-3}{2}\Bigr\},\qquad g=\frac{n-1}{2}.$$
For $n$ even there are two points at infinity, and a similar argument gives $g=\frac{n-2}{2}$. This works, but only because we know every function with poles at infinity. For other covers, such as the Fermat curves, each new curve would need a new computation.

**Count the holes.** Over $\mathbb{C}$, Proposition 10.5 is instant. The map $x$ has degree 2 and is ramified at $r$ points: the $n$ roots of $f$, and also $\infty$ when $n$ is odd. So $\chi=4-r$ and $g=\frac{r-2}{2}$, the same answer. But this uses the topology of $\mathbb{C}$, and Theorem 10.4, which we only cited.

**Try the same count in characteristic 2.** In part (b), over each value $x=a$ the equation $y^2+y=a^3$ has two distinct roots, because the derivative of $y^2+y$ is $2y+1=1$. So the only ramified point is the single point $\infty$ over $x=\infty$, with $e=2$. Proposition 9.6 would then give
$$\deg K_X=(2-1)-2\cdot2=-3.$$
That is odd, but $\deg K_X$ should be $2g-2$, which is even (Chapter 9's table, proved in Chapter 15). Something has gone wrong, and the place is easy to find. Proposition 9.6 needed the value $e\,u(P)$ to be nonzero, but here $e=2$, which is 0 in $k$.

## The Ideas We Need

### Covers in characteristic $p$ {-}

**Definition 11.1.** A nonconstant morphism $\varphi:X\to Y$ of smooth projective curves is **separable** if $k(X)$ is a separable extension of $\varphi^*k(Y)$. A point $P$ with $e_P\geq2$ is **tamely ramified** if $p\nmid e_P$, and **wildly ramified** if $p\mid e_P$.

In characteristic 0 every morphism is separable and all ramification is tame. In characteristic $p$, the Frobenius map $t\mapsto t^p$ of $\mathbb{P}^1$ is not separable (Variation 5 of Chapter 8). Every curve has separable maps to $\mathbb{P}^1$, given by functions $x$ for which $k(X)/k(x)$ is separable, called **separating** functions. Both maps in Problem 11 are separable. In (a), $Y^2-f(x)$ has derivative $2Y\neq0$, and in (b), $Y^2+Y-x^3$ has derivative $1$.

**Proposition 11.2 (Chapter 9 in characteristic $p$).**

1. $\Omega_{k(X)/k}$ is one-dimensional over $k(X)$, and $dx\neq0$ exactly when $x$ is separating.
2. Proposition 9.4 holds as stated. If $\varphi$ is separable, then $\varphi^*$ is injective on differentials.
3. Let $s$ be a uniformizer at $P$ and $h=s^eu$ with $e\in\mathbb{Z}$ and $u$ a unit. Then $\operatorname{ord}_P(dh)=e-1$ if $p\nmid e$, and $\operatorname{ord}_P(dh)\geq e$ if $p\mid e$.

*Proof.* Part 1 is [H, Theorem II.8.6A] together with [S, §4.1]. Part 2 follows as in Chapter 9: if $\varphi$ is separable and $x$ is separating on $Y$, then $\varphi^*x$ is separating on $X$. For part 3,
$$dh=s^{e-1}\Bigl(eu+s\,\frac{du}{ds}\Bigr)ds,$$
and if $p\mid e$ the first term in the bracket vanishes, leaving $s^e\,(du/ds)\,ds$. $\square$

> **Look up.** Separating elements: [S, §3.10]. Separable maps and the Frobenius: [Si, II.2]. Differentials in characteristic $p$: [S, §4.1]; [Si, II.4].

### The different {-}

**Definition 11.3.** Let $\varphi:X\to Y$ be separable, $P\in X$, $Q=\varphi(P)$, and $t$ a uniformizer at $Q$. The **different exponent** of $\varphi$ at $P$ is
$$d_P=\operatorname{ord}_P\bigl(d(\varphi^*t)\bigr),$$
and the **ramification divisor** is $R_\varphi=\sum_Pd_P\,P$.

**Proposition 11.4 (Dedekind).** Let $\varphi$ be separable.

1. For every nonzero differential $\omega$ on $Y$,
$$\operatorname{div}(\varphi^*\omega)=\varphi^*\operatorname{div}(\omega)+R_\varphi.$$
In particular $R_\varphi$ is a finite sum, and $d_P$ does not depend on the choice of $t$.
2. $d_P=e_P-1$ if $p\nmid e_P$, and $d_P\geq e_P$ if $p\mid e_P$. So $d_P=0$ exactly when $P$ is unramified, and only finitely many points are ramified.

*Proof.* At $P$, write $\omega=\psi\,dt$. Then $\varphi^*\omega=(\varphi^*\psi)\,d(\varphi^*t)$, so
$$\operatorname{ord}_P(\varphi^*\omega)=e_P\,v_Q(\psi)+d_P=e_P\operatorname{ord}_Q(\omega)+d_P.$$
This is part 1, and it expresses $d_P$ through $\omega$ alone. Part 2 is Proposition 11.2, part 3, applied to $h=\varphi^*t$, which vanishes to order $e_P$ at $P$. $\square$

In characteristic 0 this is Proposition 9.8, with $d_P=e_P-1$. What is new is that a wildly ramified point counts for more than $e_P-1$, and how much more depends on the cover, not just on $e_P$.

> **Look up.** Dedekind's different theorem: [S, Theorem 3.5.1]. The same statement for curves, as the length of the sheaf $\Omega_{X/Y}$ at $P$: [H, IV.2, Proposition 2.2].

### The Riemann–Hurwitz formula {-}

**Theorem 11.5 (Riemann–Hurwitz).** Let $\varphi:X\to Y$ be a separable morphism of degree $n$. Then
$$2g_X-2=n\,(2g_Y-2)+\deg R_\varphi,\qquad\text{where}\quad\deg R_\varphi\geq\sum_P(e_P-1),$$
with equality exactly when no point is wildly ramified, and so always in characteristic 0.

*Proof.* Take degrees in Proposition 11.4. Since $\deg\varphi^*D=n\deg D$ (Theorem 8.3),
$$\deg K_X=n\deg K_Y+\deg R_\varphi.$$
Every canonical divisor has degree $2g-2$. $\square$

**A forward reference.** The last sentence of the proof is proved in Chapter 15, using Chapter 14 and nothing from this chapter, so the argument is not circular. Over $\mathbb{C}$ it also follows from Section 10.3, and for the curves in this chapter we will confirm it directly.

The most common case is $Y=\mathbb{P}^1$, where the formula reads
$$2g_X-2=-2n+\deg R_\varphi.$$
For $\varphi=x$ the identity $\deg K_X=-2n+\deg R_x$ needs no forward reference at all, because $\operatorname{div}(dt)=-2\infty$ on $\mathbb{P}^1$ (Section 9.3). In characteristic 0 it is Proposition 10.5's count, now proved without topology.

> **Look up.** [H, IV.2, Corollary 2.4]; [S, Theorem 3.4.13]; [Si, II.5, Theorem 5.9], which states the formula as an inequality with equality in the tame case. Miranda proves the topological version, Hurwitz's formula, in his Chapter II.

## The Solution

### (a) Double covers of the line {-}

**Theorem 11.6.** Let $p\neq2$, let $f$ be squarefree of degree $n\geq1$, and let $X$ be the smooth projective model of $y^2=f(x)$. The map $x:X\to\mathbb{P}^1$ is ramified exactly at the $n$ points $(a,0)$ with $f(a)=0$, and also at the single point over $\infty$ when $n$ is odd. Hence
$$g(X)=\Bigl\lfloor\frac{n-1}{2}\Bigr\rfloor,$$
that is, $n=2g+1$ or $n=2g+2$.

*Proof.* Over a value $a$ with $f(a)\neq0$ lie two points, $(a,\pm\sqrt{f(a)})$. Over a root of $f$ lies one point, with $e=2$. For the points at infinity, use the chart of Variation 2 of Chapter 7: with $u=1/x$ and $w=y/x^{g+1}$, where $g=\lfloor\frac{n-1}{2}\rfloor$,
$$w^2=u^{2g+2}f(1/u).$$
If $n$ is even, the right side has a nonzero constant term, so there are two points over $u=0$. If $n$ is odd, it is $u$ times a unit, so there is one point, with $e=2$. All ramification is tame because $p\neq2$, so $\deg R_x$ is the number $r$ of ramified points, which is $n$ for $n$ even and $n+1$ for $n$ odd. Riemann–Hurwitz gives $2g-2=-4+r$. $\square$

The count of differentials in Section 11.2 gave the same genus without the forward reference, so here Riemann–Hurwitz is confirmed independently. In general $\Omega^1(X)$ consists of the differentials $a(x)\,dx/y$ with $\deg a\leq g-1$. The cast fits: the circle ($n=2$) has genus 0, $E$ ($n=3$) and the lemniscate curve ($n=4$) have genus 1, and $G$ ($n=5$) has genus 2.

Two consequences stand out. First, every genus occurs: in characteristic 0, $y^2=x^{2g+1}-1$ has genus $g$. Chapter 10 showed that smooth plane curves miss most genera, and double covers of the line fill in every gap. Second, the curves with a map of degree 2 to the line deserve a name.

**Definition 11.7.** A curve of genus $g\geq2$ is **hyperelliptic** if it has a morphism of degree 2 to $\mathbb{P}^1$.

When $p\neq2$, the function field of such a curve is $k(x)\bigl(\sqrt h\bigr)$ for some $h\in k(x)$. Clearing denominators and removing square factors from $h$ brings it to the form $y^2=f(x)$ with $f$ a squarefree polynomial, and Theorem 11.6 then forces $\deg f=2g+1$ or $2g+2$. So a hyperelliptic curve of genus $g$ is a double cover of the line branched at exactly $2g+2$ points. The ramified points are the fixed points of the **hyperelliptic involution** $(x,y)\mapsto(x,-y)$, which swaps the two sheets. For $\widehat G$ they lie over $0,\infty,\pm1,\pm i$, the six vertices of Chapter 10's octahedron. Chapter 16 shows that every curve of genus 2 is hyperelliptic, and Chapter 17 that the Fermat quartic is not.

### Fermat curves as covers {-}

The Fermat curve $C_n:\ x^n+y^n=1$ covers the line in two instructive ways. Assume $p=0$, or more generally $p\nmid n$.

**Through $x$.** The map $x$ has degree $n$. Over each $n$-th root of unity $\zeta$ lies the single point $(\zeta,0)$, with $e=n$, and there is no other ramification. Riemann–Hurwitz gives
$$2g-2=-2n+n(n-1),\qquad g=\frac{(n-1)(n-2)}{2},$$
which agrees with Theorem 10.6, without using the plane at all.

**Through $x^n$.** The map $(x,y)\mapsto x^n$ has degree $n^2$, and it is branched over only three values. Over $0$ lie the $n$ points $(0,\zeta)$, over $1$ the $n$ points $(\zeta,0)$, and over $\infty$ the $n$ points at infinity, each with $e=n$. Riemann–Hurwitz gives
$$2g-2=-2n^2+3n(n-1),$$
the same genus again. Covers of the line branched over three points are special. Belyi proved in 1979 that a curve over $\mathbb{C}$ can be defined by equations with algebraic coefficients exactly when it has such a cover.

### (b) A double cover with one branch point {-}

**Theorem 11.8.** In characteristic 2, let $X$ be the smooth projective model of $y^2+y=x^3$. Then $dx$ has no zeros and no poles on $X$, the map $x$ has different exponent $d_\infty=4$ at its only ramified point, and $X$ has genus 1.

*Proof.* At every affine point, $x$ is unramified (Section 11.2), so $x-x(P)$ is a uniformizer and $\operatorname{ord}_P(dx)=0$. At the point $\infty$, $x$ has a double pole, and comparing $y^2$ with $x^3$ gives $v_\infty(y)=-3$.

To find $\operatorname{ord}_\infty(dx)$, differentiate the equation. In characteristic 2, $d(y^2)=2y\,dy=0$ and $d(x^3)=3x^2dx=x^2dx$, so
$$dy=x^2\,dx.$$
Now use $y$, not $x$. The function $y$ has a single pole, of order 3, at $\infty$, so the map $y:X\to\mathbb{P}^1$ has degree 3 and $e=3$ there. That ramification is tame, since $2\nmid3$, so $\operatorname{ord}_\infty(dy)=-3-1=-4$ by Proposition 11.2. Hence
$$\operatorname{ord}_\infty(dx)=\operatorname{ord}_\infty(dy)-v_\infty(x^2)=-4+4=0.$$
So $\operatorname{div}(dx)=0$, and $\Omega^1(X)=L(0)\cdot dx=k\cdot dx$, which means $g=1$.

On $\mathbb{P}^1$ the coordinate has $\operatorname{ord}_\infty(dx)=-2$. By Proposition 11.4, $d_\infty=0-2\cdot(-2)=4$. $\square$

So Riemann–Hurwitz reads $2g-2=-4+4=0$, while the naive count of Section 11.2 used $e-1=1$ in place of $d_\infty=4$. The wildly ramified point counts for three more than a tame point would. The map $y$ gives a cross-check with only tame ramification. It has degree 3 and $e=3$ at the three points $(0,0)$, $(0,1)$ and $\infty$, where $x^3=y^2+y=y(y+1)$ vanishes or has a pole, so $2g-2=3\cdot(-2)+2+2+2=0$.

The result also fits Chapters 9 and 10. The closure $y^2z+yz^2=x^3$ is a smooth plane cubic, and since $f_y=2y+1=1$, the differential $dx$ is exactly the differential $dx/f_y$ of Lemma 9.7.

Compare characteristic 0. There a double cover of the line is branched at $2g+2$ points, an even number, and at least two of them. In characteristic 2 a single branch point is possible, because a wild point contributes more than $e_P-1$: here 4 instead of 1. How much more depends on the equation. For $y^2+y=x^m$ with $m$ odd, the same computation gives $d_\infty=m+1$ and genus $\frac{m-1}{2}$ (Variation 1). The simplest case, $m=1$, is even rational: in characteristic 2 the map $\mathbb{P}^1\to\mathbb{P}^1$ given by $t\mapsto t^2+t$ has degree 2, and since $d(t^2+t)=dt$ it is ramified only at $\infty$, with $d_\infty=2$, so that $-2=2\cdot(-2)+2$. In characteristic 0, a map of degree 2 from the line to itself is always ramified at exactly two points.

Chapter 18 counts this curve's points over $\mathbb{F}_4$: there are 9, the most that any curve of genus 1 can have there.

### Summary of the covers {-}

| Cover | Degree | Ramification | $\deg R$ | Genus |
|---|---|---|---|---|
| $x$ on $y^2=f(x)$, $\deg f=2g+1$ or $2g+2$ | 2 | $2g+2$ points with $e=2$ | $2g+2$ | $g$ |
| $y$ on $E$ | 3 | four points with $e=2$, and $\infty$ with $e=3$ | 6 | 1 |
| $x$ on $C_n$ | $n$ | $n$ points with $e=n$ | $n(n-1)$ | $\frac{(n-1)(n-2)}{2}$ |
| $x^n$ on $C_n$ | $n^2$ | $3n$ points with $e=n$ | $3n(n-1)$ | $\frac{(n-1)(n-2)}{2}$ |
| $x$ on $y^2+y=x^3$, $p=2$ | 2 | $\infty$, wild, $e=2$ | 4 | 1 |

## What Just Happened

- **Every curve covers the line.** A separating function is a separable map to $\mathbb{P}^1$, and its ramification determines the genus.
- **The different measures ramification.** At each point the different exponent satisfies $d_P\geq e_P-1$, with equality exactly at tame points. Wild ramification, which happens only in characteristic $p$, counts for more.
- **The Riemann–Hurwitz formula.** For a separable map of degree $n$, $2g_X-2=n(2g_Y-2)+\deg R_\varphi$. It follows from Chapter 9's behaviour of differentials under pullback, together with $\deg K=2g-2$ from Chapter 15.
- **Double covers.** In characteristic other than 2, $y^2=f(x)$ with $f$ squarefree of degree $n$ has genus $\lfloor\frac{n-1}{2}\rfloor$. Every genus occurs, and the curves of genus at least 2 with such a map are the hyperelliptic curves.
- **Fermat curves.** They cover the line through $x$, and also through $x^n$ with only three branch values. Both counts give $\frac{(n-1)(n-2)}{2}$.
- **A wild example.** In characteristic 2, $y^2+y=x^3$ is a double cover of the line with one branch point. That point has different exponent 4, the differential $dx$ has no zeros or poles, and the genus is 1.

## Threads

**When are two curves the same?** Riemann–Hurwitz restricts the maps between curves. A separable map $X\to Y$ with $g_Y\geq1$ forces $g_X\geq g_Y$ (Variation 3), so, for example, there is no nonconstant map from $E$ to $\widehat G$. Chapter 17 applies the formula to the quotient of a curve by its automorphisms, to prove Hurwitz's bound: in characteristic 0, a curve of genus $g\geq2$ has at most $84(g-1)$ automorphisms.

**Which curves can be parametrized?** For a separable map $\mathbb{P}^1\to Y$, Riemann–Hurwitz gives $-2\geq n(2g_Y-2)$, so $g_Y=0$. This is Theorem 9.10 again, now with wild ramification allowed (compare Variation 5 of Chapter 9).

**Where did the genus go?** Section 11.4 computed the genus of $y^2=x^5-x$ without looking at its singular plane model. Chapter 12 explains, singularity by singularity, how that plane quintic loses 4 of the 6 that its degree promises.

**Characteristic $p$.** Wild ramification and inseparable maps are new phenomena, but the algebra handles them in the same way as everything else. Chapter 13 puts all characteristics, and even $\mathbb{Z}$, into one framework. Chapter 18 returns to $y^2+y=x^3$ over $\mathbb{F}_4$.

**Riemann–Roch.** The one input we borrowed, $\deg K_X=2g-2$, is proved in Chapter 15.

## Variations

These are optional. A hint follows each one.

**Variation 1.** In characteristic $p$, let $f\in k[x]$ have degree $m$, with $p\nmid m$. Show that the **Artin–Schreier curve** $y^p-y=f(x)$ covers the $x$-line with degree $p$, ramified only at $\infty$, where the ramification is wild, with $d_\infty=(p-1)(m+1)$. Deduce that its genus is $\frac{(p-1)(m-1)}{2}$.
*Hint:* As in Theorem 11.8, $dy=-f'(x)\,dx$, the map $y$ has degree $m$ and is totally and tamely ramified at $\infty$, and $v_\infty(x)=-p$. So $\operatorname{ord}_\infty(dx)=-(m+1)+p(m-1)$. For $p=2$, this explains why hyperelliptic curves in characteristic 2 are written $y^2+y=f(x)$ rather than $y^2=f(x)$: the second equation gives an inseparable extension of $k(x)$.

**Variation 2.** Let $f$ be squarefree of degree $n$, let $m\geq2$ with $\gcd(m,n)=1$, and assume $p\nmid m$. Show that the curve $y^m=f(x)$ has genus $\frac{(m-1)(n-1)}{2}$. Check the answer on $y^3=x^4-1$ using Chapter 10.
*Hint:* The map $x$ has degree $m$ and is totally ramified over the $n$ roots of $f$ and over $\infty$. The curve $y^3=x^4-1$ is a smooth plane quartic, so its genus is 3 by Theorem 10.6.

**Variation 3.** Let $\varphi:X\to Y$ be a separable map of degree $n$, with $g_Y\geq1$. Show that $g_X\geq g_Y$, with equality only if $n=1$ or $g_X=g_Y=1$ and $\varphi$ is unramified. Deduce that no nonconstant map $E\to\widehat G$ exists, and explain why Fagnano's doubling map on the lemniscate curve, of degree 4, must be unramified.
*Hint:* $2g_X-2\geq n(2g_Y-2)\geq2g_Y-2$. For the doubling map, both genera are 1, so $0=4\cdot0+\deg R$. Variation 2 of Chapter 9 reached the same conclusion with differentials.

**Variation 4.** Check Riemann–Hurwitz for the map $y$ on $E$, on the lemniscate curve and on $\widehat G$.
*Hint:* On $E$, the cubic $x^3-x-b^2$ has a double root exactly when $4-27b^4=0$, which gives four points with $e=2$, and $\infty$ has $e=3$ (Variation 2 of Chapter 8). On the lemniscate curve, $y$ has degree 4, with $e=4$ over $y=\pm1$ and $e=2$ at $\infty_+$ and $\infty_-$. On $\widehat G$, $y$ has degree 5. The quintic $x^5-x-b^2$ has a double root when $x^4=\frac15$ and $b^2=-\frac45x$, which happens for eight values of $b$, and $\infty$ has $e=5$. So $2g-2=-10+8+4=2$.

**Variation 5.** Let $C$ be a smooth plane curve of degree $d$, in characteristic 0 and general coordinates. Show that $x:C\to\mathbb{P}^1$ is simply ramified at the $d(d-1)$ points where $C$ meets the curve $f_y=0$, and recover $g=\frac{(d-1)(d-2)}{2}$.
*Hint:* By Bézout there are $d(d-1)$ intersection points, and in general coordinates each is a simple tangency of $C$ with a vertical line. Then $2g-2=-2d+d(d-1)$.

## Reading Map

- **[H, IV.2]:** finite morphisms of curves, the sheaf $\Omega_{X/Y}$, tame and wild ramification (Proposition 2.2), and Hurwitz's theorem (Corollary 2.4), with consequences such as Lüroth's theorem.
- **[S, Chapter 3]:** the Hurwitz genus formula (Theorem 3.4.13), Dedekind's different theorem (Theorem 3.5.1), separating elements (§3.10), and Kummer and Artin–Schreier extensions (§3.7). Chapter 6 has many worked examples, including hyperelliptic function fields.
- **[Si, II.2 and II.5]:** separable and inseparable maps, the factorization through Frobenius (Corollary II.2.12), and Hurwitz's formula as an inequality (Theorem II.5.9).
- **R. Miranda, *Algebraic Curves and Riemann Surfaces*,** Chapter II: Hurwitz's formula for branched covers of Riemann surfaces, with hyperelliptic and Fermat curves among the examples.
- **B. Riemann, "Theorie der Abel'schen Functionen",** *Journal für die reine und angewandte Mathematik* 54 (1857): for an $n$-sheeted surface over the sphere with $w$ simple branch points, the genus is $p=\frac w2-n+1$, the first case of the formula.
- **A. Hurwitz, "Über Riemann'sche Flächen mit gegebenen Verzweigungspunkten",** *Mathematische Annalen* 39 (1891): branched covers of the sphere and their genus.
- **G. V. Belyi, "On Galois extensions of a maximal cyclotomic field",** *Mathematics of the USSR Izvestiya* 14 (1980): covers of the line branched over three points.
