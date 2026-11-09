# Zeros and Poles

## The Problem

> **Problem 8.** On the cubic $E:\ y^2=x^3-x$, find all the zeros and poles of the functions $x$ and $y$, with multiplicities, including those at infinity. Then explain why, on every smooth projective curve, the zeros and poles of a rational function always balance.

For a polynomial in one variable this is familiar. A polynomial of degree $n$ has $n$ roots counted with multiplicity, and Variation 4 of Chapter 6 showed that it has a pole of order $n$ at infinity, so on $\mathbb{P}^1$ the zeros and poles of a function balance. On a curve like $E$ the affine picture shows the zeros but hides every pole, because polynomial functions have no poles in the affine plane. Chapter 7 gave $E$ a complete home: its projective closure is smooth, and its points are the places of $k(E)$. So the question makes sense, and the answer should come out even.

The second half of the problem asks for the reason. That reason turns out to be the most useful counting principle in the subject. It leads straight to divisors, to linear equivalence, and to a first glimpse of why the chord-and-tangent construction of Chapter 1 behaves like addition.

## First Attempts

**Count in the affine picture.** On $E$, the function $x$ vanishes only at $(0,0)$, because $x=0$ forces $y^2=0$. The function $y$ vanishes at the three points $(0,0)$, $(1,0)$ and $(-1,0)$. With which multiplicities? At $(0,0)$ the tangent line is the vertical line $x=0$, so $x$ should vanish there to order at least 2.

Poles are invisible in the affine picture, so they must all be at the single point at infinity, $\infty=[0:1:0]$. Chapter 6 found the orders there: $v_\infty(x)=-2$ and $v_\infty(y)=-3$. So $x$ has two zeros and two poles, and $y$ has three zeros and three poles, provided the multiplicities at the zeros are what they appear to be. The count balances, but why?

**Bézout explains it, for plane curves.** Write $x$ as a quotient of forms of the same degree, $x=x/z$. Its zeros lie where the line $x=0$ meets $E$, and its poles where the line $z=0$ meets $E$. By Chapter 3, each line meets the cubic in 3 points counted with multiplicity:

- the line $x=0$ gives $y^2z=0$, which is $(0,0)$ twice and $\infty$ once;
- the line $z=0$ gives $x^3=0$, which is $\infty$ three times.

At a smooth point, intersection multiplicity equals order of vanishing (Variation 5 of Chapter 4). So the divisor of $x$ is the difference of the two line sections, $(2\cdot(0,0)+\infty)-3\cdot\infty$, and its degree is $3-3=0$. The same argument works for any quotient $F/H$ of forms of degree $m$ on any smooth plane curve of degree $d$: the zeros and the poles both total $dm$.

**But not every curve is a smooth plane curve.** The curve $\widehat G$ of Chapter 7 has no smooth plane model, and the Bézout argument depends on an embedding anyway. We want an intrinsic reason, one that works on every smooth projective curve.

Chapter 5 supplies a hint. For a rational function $s$ of $t$, the number of values of $t$ lying over a typical value of $s$ is $[k(t):k(s)]$ (Lemma 5.4). The zeros of $s$ are the points over the value $0$, and its poles are the points over $\infty$. If *every* value had the same number of preimages, counted properly, then zeros and poles would have to balance.

## The Ideas We Need

Throughout, $X$ and $Y$ are smooth projective curves over the algebraically closed field $k$. By Corollary 7.9, their points are the places of their function fields.

### Divisors {-}

**Definition 8.1.** A **divisor** on $X$ is a finite formal sum $D=\sum n_PP$ of points of $X$ with integer coefficients. The divisors form an abelian group $\operatorname{Div}(X)$. The **degree** of $D$ is $\deg D=\sum n_P$, and $D$ is **effective**, written $D\geq0$, if every $n_P\geq0$. The **divisor** of a nonzero rational function $f$ is
$$\operatorname{div}(f)=\sum_Pv_P(f)\,P,$$
which is a finite sum by Lemma 7.4. Its positive and negative parts are the **divisor of zeros** $(f)_0$ and the **divisor of poles** $(f)_\infty$, so that $\operatorname{div}(f)=(f)_0-(f)_\infty$.

Since $v_P(fg)=v_P(f)+v_P(g)$, we have $\operatorname{div}(fg)=\operatorname{div}(f)+\operatorname{div}(g)$. Constants have divisor $0$. Conversely, a function with divisor $0$ has no poles, so it is constant by Corollary 7.9.

> **Look up.** Divisors on curves: [F, §8.1]; [Si, II.3]; [S, §1.4]; [H, II.6].

### The degree of a map, and ramification {-}

**Definition 8.2.** Let $\varphi:X\to Y$ be a nonconstant morphism. Its **degree** is the degree of the field extension
$$\deg\varphi=[k(X):\varphi^*k(Y)],$$
which is finite, since both fields are finitely generated of transcendence degree 1. Let $P\in X$ with $\varphi(P)=Q$, and let $t_Q$ be a uniformizer at $Q$. The **ramification index** of $\varphi$ at $P$ is
$$e_P=v_P(\varphi^*t_Q)\geq1.$$
It does not depend on the choice of $t_Q$. The map is **ramified** at $P$ if $e_P\geq2$. Finally, $\varphi$ pulls back divisors: $\varphi^*Q=\sum_{\varphi(P)=Q}e_PP$, extended linearly.

**Example.** The function $x$ defines a morphism $x:E\to\mathbb{P}^1$ of degree 2, because $k(E)=k(x)(y)$ with $y^2=x^3-x$. Over a value $a$ with $a^3-a\neq0$ there are two points, $(a,\pm\sqrt{a^3-a})$. Over $a=0,1,-1$ there is a single point $(a,0)$. Over $\infty$ there is the single point $\infty$. Variation 5 of Chapter 6 counted exactly this.

**Theorem 8.3 (every fibre has $\deg\varphi$ points).** Let $\varphi:X\to Y$ be a nonconstant morphism. For every point $Q\in Y$,
$$\sum_{\varphi(P)=Q}e_P=\deg\varphi.$$
Hence $\deg\varphi^*D=\deg\varphi\cdot\deg D$ for every divisor $D$ on $Y$. In characteristic 0, only finitely many points are ramified, so all but finitely many fibres consist of exactly $\deg\varphi$ points.

*Sketch.* Let $\mathcal O_Q$ be the local ring at $Q$, with uniformizer $t=t_Q$, and let $B$ be the integral closure of $\mathcal O_Q$ in $k(X)$.

- $B$ is finitely generated and torsion-free over the discrete valuation ring $\mathcal O_Q$, so it is a free $\mathcal O_Q$-module. Its rank is $n=\deg\varphi$, and therefore $B/tB$ has dimension $n$ over $k$.
- The maximal ideals of $B$ are the points $P$ lying over $Q$, and the localizations of $B$ are their local rings $\mathcal O_P$. By the Chinese remainder theorem, $B/tB\cong\prod_P\mathcal O_P/(t)$.
- In $\mathcal O_P$ we have $t=u\,t_P^{\,e_P}$ with $u$ a unit, so the factor $\mathcal O_P/(t)$ has dimension $e_P$.

Comparing dimensions gives $n=\sum e_P$. The finiteness of ramification in characteristic 0 is [S, Corollary 3.5.5], or [H, IV.2]. $\square$

**Corollary 8.4 (zeros and poles balance).** For every nonconstant $f\in k(X)$,
$$\deg\,(f)_0=\deg\,(f)_\infty=[k(X):k(f)],\qquad\text{so}\qquad\deg\operatorname{div}(f)=0.$$

*Proof.* By Proposition 7.6, $f$ defines a morphism $f:X\to\mathbb{P}^1$ with $f^*k(\mathbb{P}^1)=k(f)$. At a zero of $f$, the uniformizer at $0\in\mathbb{P}^1$ pulls back to $f$, so $e_P=v_P(f)$, and the fibre over $0$ is $(f)_0$. At a pole, the uniformizer $1/s$ at $\infty$ pulls back to $1/f$, so $e_P=-v_P(f)$, and the fibre over $\infty$ is $(f)_\infty$. By Theorem 8.3 both fibres have degree $[k(X):k(f)]$. $\square$

**Corollary 8.5 (bijections).** In characteristic 0, a bijective morphism between smooth projective curves is an isomorphism.

*Proof.* All but finitely many fibres have exactly $\deg\varphi$ points, but every fibre has one point. So $\deg\varphi=1$, which means $k(X)=\varphi^*k(Y)$. The map is birational, and hence an isomorphism by Corollary 7.9. $\square$

This keeps a promise from Chapter 2. There, the bijection $t\mapsto(t^2,t^3)$ failed to be an isomorphism because the cusp is singular, and Corollary 8.5 says that only singularities can cause such failures in characteristic 0. In characteristic $p$, the Frobenius map $t\mapsto t^p$ is bijective, yet it has degree $p$ and $e_P=p$ at every point (Variation 5).

> **Look up.** Degree and ramification: [Si, II.2, Proposition 2.6]; [S, §3.1, Theorem 3.1.11]; [H, II.6, Proposition 6.9]. Zeros and poles balance: [F, §8.1, Proposition 1]; [S, Theorem 1.4.11]; [H, II.6, Corollary 6.10].

### Linear equivalence and the Picard group {-}

**Definition 8.6.** Two divisors are **linearly equivalent**, written $D\sim D'$, if $D-D'=\operatorname{div}(f)$ for some rational function $f$. The **Picard group** is $\operatorname{Pic}(X)=\operatorname{Div}(X)/\{\text{divisors of functions}\}$. By Corollary 8.4 the degree is well defined on $\operatorname{Pic}(X)$, and its kernel is $\operatorname{Pic}^0(X)$, the classes of degree 0.

On $\mathbb{P}^1$, every divisor of degree 0 is the divisor of a function:
$$\sum n_a\,(a)+n_\infty\,\infty=\operatorname{div}\Bigl(\prod(t-a)^{n_a}\Bigr)\qquad\text{when }\textstyle\sum n_a+n_\infty=0.$$
So $\operatorname{Pic}^0(\mathbb{P}^1)=0$, and any two points of $\mathbb{P}^1$ are linearly equivalent.

On other curves the Picard group is far bigger. If two distinct points $P$ and $Q$ of a curve $X$ were linearly equivalent, some function $f$ would have divisor $P-Q$, with a single simple pole. Then $f:X\to\mathbb{P}^1$ would have degree 1 by Corollary 8.4, so it would be birational, and $X$ would be isomorphic to $\mathbb{P}^1$ by Corollary 7.9. So on any curve that is not rational, distinct points are never linearly equivalent.

### The spaces $L(D)$ {-}

**Definition 8.7.** For a divisor $D$, let
$$L(D)=\{f\in k(X)^\times:\ \operatorname{div}(f)+D\geq0\}\cup\{0\}.$$
If $D=\sum n_PP$, these are the functions with poles of order at most $n_P$ where $n_P>0$, and with zeros of order at least $-n_P$ where $n_P<0$. Write $\ell(D)=\dim_kL(D)$.

**Proposition 8.8.**

1. $L(D)$ is a vector space, and if $D\sim D'$ then $L(D)\cong L(D')$.
2. $L(0)=k$, and $L(D)=0$ whenever $\deg D<0$.
3. $\ell(D+P)\leq\ell(D)+1$ for every point $P$. Hence $\ell(D)\leq\deg D+1$ whenever $\deg D\geq0$.

*Proof.*

1. $L(D)$ is a vector space because $v_P(f+g)\geq\min\bigl(v_P(f),v_P(g)\bigr)$. If $D'=D-\operatorname{div}(h)$, then $f\mapsto fh$ is an isomorphism $L(D)\to L(D')$.
2. Functions without poles are constant, so $L(0)=k$. If $\deg D<0$ and $f\neq0$ lay in $L(D)$, then $\operatorname{div}(f)+D$ would be an effective divisor of negative degree, by Corollary 8.4, which is impossible.
3. Let $n$ be the coefficient of $P$ in $D$, and $t$ a uniformizer at $P$. The linear map $L(D+P)\to k$, $f\mapsto(t^{n+1}f)(P)$, has kernel $L(D)$, so $\ell(D+P)\leq\ell(D)+1$. For the bound, start from $D-(\deg D+1)P$, which has degree $-1$ and so $\ell=0$, and add $P$ back $\deg D+1$ times. $\square$

Here are the dimensions $\ell(n\infty)$ for three of our curves. For $E$ and $\widehat G$, the functions with poles only at $\infty$ have the form $a(x)+b(x)\,y$, with pole orders $\max(2\deg a,\,3+2\deg b)$ on $E$ and $\max(2\deg a,\,5+2\deg b)$ on $\widehat G$, as in Variation 5 of Chapter 7.

| $n$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|---|
| $\mathbb{P}^1$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
| $E$ | 1 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
| $\widehat G$ | 1 | 1 | 2 | 2 | 3 | 4 | 5 | 6 | 7 |

The bound $n+1$ of Proposition 8.8 is reached on $\mathbb{P}^1$. On $E$ the count eventually falls one short of it, and on $\widehat G$ two short. Those shortfalls, 1 and 2, are the genera, and Chapter 15's Riemann–Roch theorem explains them.

> **Look up.** The spaces $L(D)$: [F, §8.2]; [S, §1.4]; [Si, II.5].

## The Solution

### The divisors of $x$ and $y$ on $E$ {-}

The projective closure $y^2z=x^3-xz^2$ is smooth (Variation 1 of Chapter 4 and Variation 1 of Chapter 3), so its points are the places of $k(E)$, and we can compute orders point by point.

- **At $(0,0)$.** The gradient of $f=y^2-x^3+x$ is $(1-3x^2,\,2y)=(1,0)$, so the tangent line is $x=0$. The function $y$, which is not tangent, is a uniformizer (Theorem 4.7). On $E$, $y^2=x(x^2-1)$, so $x=y^2/(x^2-1)$, where $x^2-1$ is a unit at $(0,0)$. Hence $v(x)=2$ and $v(y)=1$.
- **At $(1,0)$ and $(-1,0)$.** Again the tangent is vertical and $y$ is a uniformizer, so $v(y)=1$. The function $x$ is nonzero there, so $v(x)=0$.
- **At the other affine points.** Both $x$ and $y$ are regular, and neither vanishes.
- **At $\infty$.** In the chart $y=1$, with coordinates $X=x/y$ and $Z=z/y=1/y$, the curve is $Z=X^3-XZ^2$. Its tangent line at the origin is $Z=0$, so $X$ is a uniformizer. Rewriting the equation as $Z(1+XZ)=X^3$ gives $v(Z)=3$. Hence $v(y)=-v(Z)=-3$ and $v(x)=v(X)-v(Z)=-2$.

So
$$\operatorname{div}(x)=2\,(0,0)-2\,\infty,\qquad \operatorname{div}(y)=(0,0)+(1,0)+(-1,0)-3\,\infty.$$
Both divisors have degree 0, as Corollary 8.4 demands. Moreover $\deg(x)_\infty=2=[k(E):k(x)]$, and $\deg(y)_\infty=3=[k(E):k(y)]$, since $x$ satisfies the cubic equation $x^3-x-y^2=0$ over $k(y)$.

Seen as maps to $\mathbb{P}^1$, the two functions behave as follows.

| Map | Degree | Fibre over $0$ | Fibre over $\infty$ | Ramification points |
|--------------|---------|---------------------|------------|------------------------|
| $x:E\to\mathbb{P}^1$ | 2 | $2\,(0,0)$ | $2\,\infty$ | $(0,0)$, $(1,0)$, $(-1,0)$, $\infty$, each with $e=2$ |
| $y:E\to\mathbb{P}^1$ | 3 | $(0,0)+(1,0)+(-1,0)$ | $3\,\infty$ | $\infty$ with $e=3$, and four points with $e=2$ (Variation 2) |

Combining the two divisors gives
$$\operatorname{div}(y/x)=(1,0)+(-1,0)-(0,0)-\infty.$$
The function $y/x$ is Chapter 5's slope $t$ of the line through $(0,0)$, a map of degree 2.

### Why zeros and poles balance {-}

Here is the answer to the second half of the problem. A nonconstant function $f$ on a smooth projective curve is a morphism $f:X\to\mathbb{P}^1$. Its zeros form the fibre over $0$ and its poles the fibre over $\infty$, each counted with ramification. Theorem 8.3 says that every fibre, counted in this way, has the same size, namely $[k(X):k(f)]$. So the zeros and the poles balance.

The underlying reason is linear algebra. Over each point $Q$ of $\mathbb{P}^1$, the ring of functions on $X$ regular above $Q$ is a free module of rank $[k(X):k(f)]$ over the local ring at $Q$. Reducing it modulo a uniformizer gives a vector space of that dimension, and its dimension can also be counted point by point over $Q$.

The Bézout argument of Section 8.2 is a special case for smooth plane curves. Over $\mathbb{C}$ there is a third proof, by contour integration: the integral of $df/f$ around a small loop counts zeros minus poles inside it, and on a compact Riemann surface these local counts must add up to zero. Chapter 14 turns this into the algebraic residue theorem.

### The degree of a projective curve {-}

Chapter 7 claimed that $\widehat G\subset\mathbb{P}^4$ has degree 6, and here is what that means. For a smooth curve $X\subset\mathbb{P}^n$ and a hyperplane $L=0$ not containing $X$, the **hyperplane section** is the divisor
$$X\cdot L=\sum_Pv_P(L/M_P)\,P,$$
where $M_P$ is any linear form that does not vanish at $P$. For another hyperplane $L'$, the difference $X\cdot L-X\cdot L'$ is $\operatorname{div}(L/L')$. So by Corollary 8.4 the degree of $X\cdot L$ does not depend on the hyperplane. It is the **degree** of $X$.

For a plane curve of degree $d$ this degree is $d$, by Proposition 3.4. For $\widehat G$, the hyperplane $X_0=0$ meets the curve only at $\infty$, with order $v_\infty(X_0/X_3)=v_\infty(u^3)=6$. So $\widehat G$ has degree 6.

### What divisors buy: the chord-and-tangent law {-}

Chapter 1 asked why the chord-and-tangent construction on a cubic behaves like addition. Divisors give the answer, in outline. Take $\infty$ as the zero, and for points $P,Q$ of $E$ define $P\oplus Q$ as follows. Draw the line through $P$ and $Q$ (the tangent if $P=Q$), let $R$ be its third intersection point with $E$, and reflect: $P\oplus Q=R'$, where $R'$ is the other point of $E$ on the vertical line through $R$.

Now compute two divisors.

- If the line through $P$, $Q$ and $R$ is $\ell=0$, then $\operatorname{div}(\ell/z)=P+Q+R-3\infty$. The numerator gives the three intersection points (Proposition 3.4), and the line at infinity $z=0$ meets $E$ only at $\infty$, three times.
- The vertical line through $R$ is $x-x_Rz=0$, and it meets $E$ at $R$, $R'$ and $\infty$. So $\operatorname{div}\bigl((x-x_Rz)/z\bigr)=R+R'-2\infty$.

Dividing the first function by the second,
$$P+Q\ \sim\ (P\oplus Q)+\infty,\qquad\text{that is,}\qquad (P-\infty)+(Q-\infty)\ \sim\ (P\oplus Q)-\infty.$$
So the map
$$\iota:E\to\operatorname{Pic}^0(E),\qquad P\mapsto[P-\infty]$$
turns the chord-and-tangent construction into addition of divisor classes: $\iota(P\oplus Q)=\iota(P)+\iota(Q)$.

That is almost the whole proof that $\oplus$ is a group law. If $\iota$ is injective, then $\oplus$ inherits associativity from the group $\operatorname{Pic}^0(E)$, because $(P\oplus Q)\oplus R$ and $P\oplus(Q\oplus R)$ both map to $\iota(P)+\iota(Q)+\iota(R)$. And $\iota$ is injective exactly when distinct points of $E$ are never linearly equivalent, which holds whenever $E$ is not rational, by the end of Section 8.3. Chapter 9 proves that $E$ is not rational. Chapter 16 shows that $\iota$ is also surjective, so the group of points of $E$ is $\operatorname{Pic}^0(E)$ itself.

## What Just Happened

- **Divisors record zeros and poles.** The divisor of a function lists its zeros and poles with their orders. On $E$ we found $\operatorname{div}(x)=2(0,0)-2\infty$ and $\operatorname{div}(y)=(0,0)+(1,0)+(-1,0)-3\infty$.
- **Every fibre has the same size.** A nonconstant morphism of smooth projective curves has a degree, $[k(X):k(Y)]$, and every fibre counted with ramification indices has exactly that many points. Zeros and poles are the fibres of a function over $0$ and $\infty$, so they balance.
- **Bijections are isomorphisms in characteristic 0.** A bijective morphism has degree 1, so it is birational, and hence an isomorphism. Chapter 2's cusp failed only because it was singular.
- **Linear equivalence and the Picard group.** Divisors modulo divisors of functions form the Picard group. On $\mathbb{P}^1$ any two points are linearly equivalent; on a curve that is not rational, two distinct points never are.
- **Spaces of functions.** The spaces $L(D)$ of functions with poles bounded by $D$ are finite-dimensional, with $\ell(D)\leq\deg D+1$. On $E$ and $\widehat G$ the count of functions with poles at $\infty$ eventually falls short of this bound by 1 and by 2.
- **The chord-and-tangent law is divisor addition.** On $E$, collinear points sum to zero in the Picard group, so $P\mapsto[P-\infty]$ turns chords and tangents into addition.

## Threads

**Why do a cubic's points form a group?** We now have the outline: $\iota(P\oplus Q)=\iota(P)+\iota(Q)$. Associativity follows once we know that $E$ is not rational (Chapter 9). Chapter 16 proves that $\iota$ is a bijection, using Riemann–Roch.

**Which curves can be parametrized?** A curve is rational exactly when some function has a single simple pole, or equivalently when two distinct points are linearly equivalent. Chapter 9 shows that this never happens on $E$.

**Differentials and the genus.** The next chapter attaches divisors to differentials as well as functions. The divisor of a differential has a degree that depends only on the curve, $2g-2$, and that number defines the genus in another way. Chapter 11's Riemann–Hurwitz formula then computes the genus from the ramification of a map to $\mathbb{P}^1$. Variation 2 previews the calculation for $y:E\to\mathbb{P}^1$.

**Riemann–Roch.** The table of $\ell(n\infty)$ shows functions running short of the bound $n+1$ by exactly the genus. Chapter 15 proves that this always happens for divisors of large enough degree.

**Abel and Jacobi.** Over $\mathbb{C}$, Abel's theorem decides which divisors of degree 0 are divisors of functions, using integrals of differentials. The group $\operatorname{Pic}^0(X)$ becomes a complex torus of dimension $g$, the Jacobian of $X$, which the Afterword describes.

## Variations

These are optional. A hint follows each one.

**Variation 1.** On the Fermat cubic $x^3+y^3=z^3$, find the divisor of the function $x/z$, and check that its degree is 0 and that $\deg(x)_\infty=[k(C):k(x)]$.
*Hint:* The line $x=0$ meets the curve where $y^3=z^3$, at three points $[0:1:1]$, $[0:\omega:1]$ and $[0:\omega^2:1]$. The line $z=0$ meets it at the three points at infinity of Chapter 3. Over $k(x)$, the function $y$ satisfies a cubic equation.

**Variation 2.** Find the ramification points of $y:E\to\mathbb{P}^1$, and check that the fibres all have degree 3.
*Hint:* Over $y=b$ the points are the roots of $x^3-x-b^2$, whose discriminant is $4-27b^4$. There is a double root for four values of $b$, each giving one point with $e=2$ and one with $e=1$. The point $\infty$ has $e=3$. Chapter 11's Riemann–Hurwitz formula then gives $2g-2=3\cdot(-2)+4\cdot1+2=0$, so $g=1$.

**Variation 3.** Show that every divisor of degree 0 on $\mathbb{P}^1$ is the divisor of a function, and deduce that $\ell(D)=\deg D+1$ for every divisor $D$ of degree at least 0 on $\mathbb{P}^1$.
*Hint:* Any $D$ of degree $n\geq0$ is linearly equivalent to $n\infty$, and $L(n\infty)$ consists of the polynomials of degree at most $n$.

**Variation 4.** Find bases for $L(n\infty)$ on $E$ for $n\leq6$, and confirm the row of the table in Section 8.3. Why is there no function on $E$ whose only pole is a simple pole at $\infty$?
*Hint:* Use $1,x,y,x^2,xy,x^3$, with pole orders $0,2,3,4,5,6$. A function with a single simple pole would make $E$ rational (Section 8.3), and Chapter 9 shows that $E$ is not rational. The missing pole order 1 is a "Weierstrass gap", which Chapter 15 studies.

**Variation 5.** In characteristic $p$, show that $\varphi(t)=t^p$ on $\mathbb{P}^1$ has degree $p$ and ramification index $e_P=p$ at every point, although it is bijective. Why doesn't this contradict Corollary 8.5?
*Hint:* The pullback of $s-b$ is $t^p-b=(t-b^{1/p})^p$, because the binomial coefficients $\binom pj$ with $0<j<p$ are divisible by $p$. Corollary 8.5 assumes characteristic 0, where ramification happens at only finitely many points.

## Reading Map

- **[F, §8.1–8.2]:** divisors, the proof that principal divisors have degree 0, and the spaces $L(D)$, all for plane curves.
- **[Si, II.2–II.3 and III.3]:** degree and ramification (Proposition II.2.6), divisors and the Picard group, and the group law on an elliptic curve through $\operatorname{Pic}^0$ (Proposition III.3.4).
- **[S, §1.4 and §3.1]:** divisors of algebraic function fields (Theorem 1.4.11), and the extension of places, including the fundamental equality $\sum e_Pf_P=n$ (Theorem 3.1.11) of which Theorem 8.3 is the algebraically closed case.
- **[H, II.6]:** Weil divisors and the Picard group (Proposition 6.9 and Corollary 6.10), with the cubic's group law in Example 6.10.2.
- **R. Miranda, *Algebraic Curves and Riemann Surfaces*,** Chapters II and V: the degree of a holomorphic map, and divisors and linear equivalence on Riemann surfaces, with many examples.
- **N. H. Abel, "Mémoire sur une propriété générale d'une classe très-étendue de fonctions transcendantes",** written in 1826 and published in 1841: the source of Abel's theorem, where integrals of differentials first meet sums of points on a curve.
