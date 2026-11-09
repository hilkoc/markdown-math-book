# An Integral That Refuses

## The Problem

> **Problem 9.** Chapter 1's substitution $x=\frac{1-t^2}{1+t^2}$ makes $\sqrt{1-x^2}=\frac{2t}{1+t^2}$ a rational function of $t$, and so it removes the square root from an integral:
> $$\int\frac{dx}{\sqrt{1-x^2}}=-\int\frac{2\,dt}{1+t^2}.$$
> Is there a rational function $x=\phi(t)$, with complex coefficients, that does the same for the **lemniscate integral**
> $$\int\frac{dx}{\sqrt{1-x^4}},$$
> turning $dx/\sqrt{1-x^4}$ into $R(t)\,dt$ with $R$ rational?

The lemniscate integral is a classic. Jakob Bernoulli met it in 1694 while measuring his lemniscate $(x^2+y^2)^2=x^2-y^2$, the figure eight $r^2=\cos2\theta$ in polar coordinates. The arc from the centre to a point at distance $r$ has length $\int_0^r d\rho/\sqrt{1-\rho^4}$, and each loop has length
$$\varpi=2\int_0^1\frac{d\rho}{\sqrt{1-\rho^4}}=2.62205\ldots,$$
the lemniscate's counterpart of $\pi$. A substitution like the circle's would reduce this integral to the integral of a rational function, which partial fractions can always handle. The lemniscate integral resisted every such attempt.

**The problem is about a curve.** Suppose some $\phi$ works, so that $\phi'(t)/\sqrt{1-\phi(t)^4}=R(t)$ with $\phi$ nonconstant. Then $\psi=\phi'/R$ is a rational function with $\psi^2=1-\phi^4$. Conversely, such a pair turns the integrand into $(\phi'/\psi)\,dt$. So Problem 9 asks whether the **lemniscate curve**
$$\Lambda:\ y^2=1-x^4$$
can be parametrized by rational functions. This is Chapter 1's question again, for a quartic instead of a cubic. Variation 1 of Chapter 7 built the smooth projective model $\widehat\Lambda$. It is the affine curve together with the chart $w^2=u^4-1$, where $u=1/x$ and $w=y/x^2$, and the chart adds two points at infinity, $\infty_\pm=(0,\pm i)$.

Chapter 1 remarked that the Weierstrass substitution works *because* the circle has a rational parametrization. This chapter runs that remark backwards. The integrand itself will prove that no parametrization of $\Lambda$ exists.

## First Attempts

**Lines.** Copy Chapter 1, using the point $(0,1)$ of $\Lambda$ and the lines $y=1+tx$ through it. Substituting gives
$$(1+tx)^2=1-x^4\quad\Longleftrightarrow\quad x\,(x^3+t^2x+2t)=0.$$
Once the known point $x=0$ is removed, a cubic remains: each line meets $\Lambda$ in three more points, and none of them can be singled out rationally in $t$. Chapter 1's method needs exactly one new intersection point, and a quartic does not provide it.

**Descent.** A cleverer idea works, at a price. Write $\phi=a/c$ in lowest terms, and suppose that $\psi^2=1-\phi^4$. Then $(c^2\psi)^2=c^4-a^4$ is a polynomial, so $b=c^2\psi$ is a polynomial too, and
$$b^2=(c-a)(c+a)(c-ia)(c+ia).$$
The four factors are pairwise coprime because $a$ and $c$ are, so each of them is a square.

**Lemma 9.1 (four squares).** Let $a,c\in k[t]$ be coprime. If four pairwise non-proportional linear combinations of $a$ and $c$ are squares in $k[t]$, then $a$ and $c$ are constant.

*Proof.* Constants are squares in $k$, so after a change of basis we may assume that the four squares are $a$, $c$, $a-c$ and $a-\lambda c$, with $\lambda\neq0,1$. Write $a=\alpha^2$, $c=\gamma^2$ and $\lambda=\mu^2$. Then
$$a-c=(\alpha-\gamma)(\alpha+\gamma),\qquad a-\lambda c=(\alpha-\mu\gamma)(\alpha+\mu\gamma),$$
and in each product the two factors are coprime, so all four are squares. Thus $\alpha$ and $\gamma$ satisfy the same hypothesis with degrees half as large. If $a$ and $c$ were not both constant, the degrees would descend forever. $\square$

So $\phi$ is constant, and the answer to Problem 9 is no. But this is a trick tailored to one equation. It needs $1-x^4$ to split into four linear factors, and unique factorization in $k[t]$ to make each factor a square. A typical smooth plane quartic offers nothing to descend on. Nor does the trick explain anything. It cannot say why the circle escapes, or how $\Lambda$ compares with $E$ or $G$.

**A clue in the integrand.** Go back to the circle. After the substitution, $dx/y$ became $-2\,dt/(1+t^2)$, which has poles at $t=\pm i$. These are the slopes that Chapter 1 had to leave out, the ones whose second intersection point escapes to the circular points $I$ and $J$ at infinity. On the line, a pole somewhere is unavoidable. If a nonzero $R$ has no finite poles, it is a polynomial, and in the coordinate $s=1/t$ near $t=\infty$,
$$R(t)\,dt=-R(1/s)\,\frac{ds}{s^2},$$
which has a pole at $s=0$.

Now look at the lemniscate integrand on all of $\widehat\Lambda$. At $x=\pm1,\pm i$ the integrand $1/\sqrt{1-x^4}$ blows up, but there $y$ is a better coordinate than $x$. Differentiating $y^2=1-x^4$ gives
$$\frac{dx}{y}=-\frac{dy}{2x^3},$$
which is finite there. At infinity, $dx=-du/u^2$ and $y=w/u^2$, so
$$\frac{dx}{y}=-\frac{du}{w},$$
finite again, since $w=\pm i$ at $\infty_\pm$. So $dx/y$ is finite everywhere on $\widehat\Lambda$, while every integrand on the line has a pole. If substitution could never create poles, Problem 9 would be settled. Making "finite", "coordinate" and "substitution" precise is the job of differentials on a curve.

## The Ideas We Need

Throughout, $X$ and $Y$ are smooth projective curves over $k$, which is algebraically closed of characteristic 0.

### Kähler differentials {-}

**Definition 9.2.** Let $A$ be a $k$-algebra. The module of **Kähler differentials** $\Omega_{A/k}$ is the $A$-module generated by symbols $da$, one for each $a\in A$, subject to the relations
$$d(a+b)=da+db,\qquad d(ab)=a\,db+b\,da,\qquad d\lambda=0\quad(\lambda\in k).$$
The map $d:A\to\Omega_{A/k}$ is the universal derivation: every $k$-derivation $D:A\to M$ into an $A$-module has the form $D=\theta\circ d$ for a unique $A$-linear map $\theta$. The elements of $\Omega_{k(X)/k}$ are the **differentials** on $X$.

The relations are the rules of calculus, and the module obeys nothing else. $\Omega_{k[x]/k}$ is free on $dx$, with $dp=p'(x)\,dx$. For $A=k[x,y]/(f)$, the module is generated by $dx$ and $dy$ subject to the single relation
$$df=f_x\,dx+f_y\,dy=0,$$
which is implicit differentiation. On the circle, $x\,dx+y\,dy=0$.

**Theorem 9.3.** $\Omega_{k(X)/k}$ is a one-dimensional vector space over $k(X)$, and $dx\neq0$ for every $x\in k(X)\setminus k$.

*Sketch.* In characteristic 0, $k(X)$ is a finite separable extension of $k(x)$, generated by one element $y$ with minimal polynomial $p$. Differentiating $p(x,y)=0$ expresses $dy$ as a multiple of $dx$, because $\partial p/\partial y$ does not vanish at $y$. The derivation $d/dx$ of $k(x)$ extends to $k(X)$, and by the universal property this forces $dx\neq0$. $\square$

So every differential is $h\,dx$ for a unique $h\in k(X)$, which we write as $\omega/dx$. In particular $dg=(dg/dx)\,dx$, where $dg/dx$ is the derivative of $g$ with respect to $x$.

> **Look up.** Kähler differentials: [H, II.8], where Theorem II.8.6A contains Theorem 9.3; [F, §8.4]; [Si, II.4, Proposition 4.2]; [S, §4.1].

### Differentials at a point {-}

**Proposition 9.4.** Let $P\in X$, with local ring $\mathcal O_P$, maximal ideal $\mathfrak m_P$ and uniformizer $t$.

1. If $g\in\mathcal O_P$, then $dg/dt\in\mathcal O_P$. Hence, for any other uniformizer $t'$, $dt'/dt$ is a unit of $\mathcal O_P$.
2. The map $\mathfrak m_P/\mathfrak m_P^2\to k$, $g\mapsto(dg/dt)(P)$, is an isomorphism.

*Proof.* The first statement says that $\Omega_{\mathcal O_P/k}$ is free on $dt$, which is [F, §8.4] or [H, Theorem II.8.8]. Then $t'=at$ with $a$ a unit, and $dt'/dt=a+t\,da/dt$ takes the value $a(P)\neq0$ at $P$. In part 2 the map is linear, kills $\mathfrak m_P^2$ by the Leibniz rule and sends $t$ to 1, and both spaces are one-dimensional. $\square$

> **Look up.** [H, II.8, Proposition 8.7 and Theorem 8.8]; [F, §8.4].

Part 2 keeps a promise from Chapter 4, where $\mathfrak m_P/\mathfrak m_P^2$ was the cotangent space, the space of differentials at a single point. A differential that is regular at $P$ has a value there, which is a cotangent vector: the value of $dg$ is the class of $g-g(P)$ in $\mathfrak m_P/\mathfrak m_P^2$. So a regular differential is a choice of cotangent vector at every point, varying algebraically.

### The divisor of a differential {-}

**Definition 9.5.** Let $\omega\neq0$ be a differential on $X$, and $P$ a point with uniformizer $t$. The **order** of $\omega$ at $P$ is $\operatorname{ord}_P(\omega)=v_P(\omega/dt)$, which by Proposition 9.4 does not depend on $t$. The **divisor** of $\omega$ is
$$\operatorname{div}(\omega)=\sum_P\operatorname{ord}_P(\omega)\,P.$$
A differential is **regular** (or holomorphic, or of the first kind) if it is 0 or has $\operatorname{div}(\omega)\geq0$. The regular differentials form a vector space $\Omega^1(X)$. A divisor of the form $\operatorname{div}(\omega)$ is a **canonical divisor**, written $K_X$.

Since $\operatorname{div}(h\omega)=\operatorname{div}(h)+\operatorname{div}(\omega)$, all canonical divisors are linearly equivalent. They form the **canonical class** in $\operatorname{Pic}(X)$, and by Corollary 8.4 they all have the same degree. The same identity says that $h\omega$ is regular exactly when $h\in L(\operatorname{div}\omega)$. So
$$\Omega^1(X)=L(K_X)\cdot\omega,\qquad\dim\Omega^1(X)=\ell(K_X),$$
which is finite by Proposition 8.8. That $\operatorname{div}(\omega)$ is a finite sum follows from the next result.

> **Look up.** Orders and divisors of differentials: [Si, II.4, Proposition 4.3]; [F, §8.5]; [S, §4.3].

**Proposition 9.6 (the divisor of $dx$).** Let $x\in k(X)\setminus k$, viewed as a morphism $x:X\to\mathbb{P}^1$ with ramification indices $e_P$. Then $\operatorname{ord}_P(dx)=e_P-1$ if $x(P)\neq\infty$, and $\operatorname{ord}_P(dx)=-e_P-1$ if $x(P)=\infty$. That is,
$$\operatorname{div}(dx)=\sum_P(e_P-1)\,P-2\,(x)_\infty.$$

*Proof.* If $x(P)=a$ is finite, write $x-a=t^eu$ with $u$ a unit. Then
$$dx=d(x-a)=t^{e-1}\Bigl(eu+t\,\frac{du}{dt}\Bigr)dt.$$
By Proposition 9.4 the bracket lies in $\mathcal O_P$, and its value at $P$ is $e\,u(P)\neq0$, because the characteristic is 0. At a pole, the same computation with $x=t^{-e}u$ gives $dx=t^{-e-1}(-eu+t\,du/dt)\,dt$. $\square$

Only finitely many points are ramified (Theorem 8.3), so this is a finite sum. On $\mathbb{P}^1$ the coordinate $t$ has degree 1, no ramification and a simple pole at $\infty$, so $\operatorname{div}(dt)=-2\infty$. Taking degrees gives $\deg K_X=\sum_P(e_P-1)-2\deg x$, whichever $x$ we use. Chapter 11 turns this into the Riemann–Hurwitz formula.

On a plane curve, the equation supplies a differential that needs no checking at affine points.

**Lemma 9.7.** Let $f(x,y)=0$ be a smooth affine plane curve, with $f$ involving $y$. Then $\omega_f=dx/f_y$ has neither zeros nor poles on the affine curve.

*Proof.* Let $P$ be a point of the curve. If $f_y(P)\neq0$, the vertical line through $P$ is not tangent, so $x-x(P)$ is a uniformizer (Theorem 4.7), and $\omega_f=d\bigl(x-x(P)\bigr)/f_y$ with $f_y$ a unit at $P$. If $f_y(P)=0$, then $f_x(P)\neq0$ by smoothness, $y-y(P)$ is a uniformizer, and the relation $f_x\,dx+f_y\,dy=0$ gives $\omega_f=-dy/f_x$ with $f_x$ a unit at $P$. Either way $\operatorname{ord}_P(\omega_f)=0$. $\square$

### Pulling back {-}

**Proposition 9.8.** Let $\varphi:Y\to X$ be a nonconstant morphism. Then $\varphi^*(h\,dg)=(\varphi^*h)\,d(\varphi^*g)$ defines an injective map $\Omega_{k(X)/k}\to\Omega_{k(Y)/k}$. If $\varphi(Q)=P$, then
$$\operatorname{ord}_Q(\varphi^*\omega)=e_Q\operatorname{ord}_P(\omega)+(e_Q-1).$$
In particular, $\varphi^*$ takes nonzero regular differentials to nonzero regular differentials.

*Proof.* The map $g\mapsto d(\varphi^*g)$ is a derivation, so the universal property makes $\varphi^*$ well defined. If $x\in k(X)\setminus k$, then $\varphi^*x\notin k$, so $d(\varphi^*x)\neq0$ by Theorem 9.3. Since $dx$ spans $\Omega_{k(X)/k}$, $\varphi^*$ is injective. For the orders, let $t$ be a uniformizer at $P$ and write $\omega=h\,dt$. Then $v_Q(\varphi^*h)=e_Qv_P(h)$, and $\varphi^*t$ vanishes to order $e_Q$ at $Q$, so $d(\varphi^*t)$ has order $e_Q-1$ by the computation in Proposition 9.6. Add the two. $\square$

This is the chain rule, with a correction at the ramification points. A substitution can create zeros of a differential, but it never creates poles.

### The projective line {-}

**Proposition 9.9.** The projective line has no nonzero regular differentials.

*Proof.* Every differential on $\mathbb{P}^1$ is $\omega=R(t)\,dt$. If $\omega$ is regular at every finite point, then $R$ has no finite poles, so it is a polynomial. At infinity, $\operatorname{ord}_\infty(\omega)=v_\infty(R)+\operatorname{ord}_\infty(dt)=-\deg R-2<0$. $\square$

Equivalently, every canonical divisor of $\mathbb{P}^1$ has degree $-2$, and an effective divisor cannot have negative degree.

## The Solution

### The obstruction {-}

**Theorem 9.10.** If a smooth projective curve $X$ has a nonzero regular differential, then every rational map $\mathbb{P}^1\dashrightarrow X$ is constant. In particular $X$ is not rational, and no curve birational to $X$ can be parametrized by rational functions.

*Proof.* By Proposition 7.6, a rational map from $\mathbb{P}^1$ extends to a morphism $\varphi:\mathbb{P}^1\to X$. If $\varphi$ were nonconstant, Proposition 9.8 would pull a nonzero regular differential on $X$ back to a nonzero regular differential on $\mathbb{P}^1$, which Proposition 9.9 forbids. A parametrization of a curve birational to $X$ gives a nonconstant rational map from the line to $X$. $\square$

Lüroth's theorem is not needed here: the argument rules out every parametrization directly, not only the birational ones.

### The lemniscate {-}

**Theorem 9.11.** On $\widehat\Lambda$, the differential $\omega=dx/y$ has no zeros and no poles. Consequently there are no rational functions $\phi$ and $\psi$ with $\phi$ nonconstant and $\psi^2=1-\phi^4$, and no rational substitution turns the lemniscate integral into the integral of a rational function.

*Proof.* We compute $\operatorname{div}(\omega)$ twice.

*From ramification.* The map $x:\widehat\Lambda\to\mathbb{P}^1$ has degree 2. Over each $a$ with $a^4\neq1$ lie the two points $(a,\pm\sqrt{1-a^4})$. Over each fourth root of unity lies the single point $(a,0)$, with $e=2$. Over $\infty$ lie the two points $\infty_\pm$, each with $e=1$. So Proposition 9.6 gives
$$\operatorname{div}(dx)=(1,0)+(-1,0)+(i,0)+(-i,0)-2\infty_+-2\infty_-.$$
The function $y$ vanishes simply at the four points $(a,0)$, where the tangent is vertical and $y$ is a uniformizer. At $\infty_\pm$ we have $y=w/u^2$, where $w=\pm i$ and $u$ is a uniformizer, so $y$ has a double pole. Hence $\operatorname{div}(y)=\operatorname{div}(dx)$, and $\operatorname{div}(\omega)=0$.

*From the charts.* On the affine chart, $\omega=2\,dx/f_y$ for $f=y^2+x^4-1$. On the chart at infinity, $\omega=-du/w=-2\,du/g_w$ for $g=w^2-u^4+1$. Lemma 9.7 applies to both, and the two charts cover $\widehat\Lambda$.

So $\omega$ is a nonzero regular differential, and by Theorem 9.10 there is no nonconstant rational map from $\mathbb{P}^1$ to $\widehat\Lambda$. By Section 9.1, a rationalizing substitution would give one. $\square$

So the answer to Problem 9 is no, as the descent found, but now for a reason that works on any curve. In fact no integral $\int S\bigl(x,\sqrt{1-x^4}\bigr)\,dx$ that genuinely involves the square root can be rationalized by $x=\phi(t)$. Write $S=A(x)+B(x)\,y$ with $B\neq0$. If $A(\phi)\phi'+B(\phi)\phi'\sqrt{1-\phi^4}$ were rational, then so would be $\sqrt{1-\phi^4}$.

That does not make every such integral hard. For instance,
$$\int\frac{x\,dx}{\sqrt{1-x^4}}=\frac12\arcsin(x^2).$$
The map $v=x^2$ sends $\widehat\Lambda$ to the circle $y^2=1-v^2$, and $x\,dx/y=dv/(2y)$ is pulled back from it. Accordingly, $x\,dx/y$ has poles, at $\infty_\pm$. What singles out $dx/y$ is that it has none.

### Smooth plane curves, and the cubic {-}

**Theorem 9.12.** Let $C\subset\mathbb{P}^2$ be a smooth curve of degree $d$ with affine equation $f(x,y)=0$, in coordinates such that $[0:1:0]\notin C$ and the line at infinity is tangent to $C$ nowhere. Let $P_1,\dots,P_d$ be the points at infinity. Then
$$\operatorname{div}\Bigl(\frac{dx}{f_y}\Bigr)=(d-3)(P_1+\dots+P_d).$$
In particular, if $d\geq3$ then $dx/f_y$ is regular and $C$ is not rational. For $d=3$ it has no zeros or poles at all.

Such coordinates always exist. The tangent lines of $C$ form a one-parameter family, so a general line is tangent to $C$ nowhere. Move it to $z=0$, and move a point of it that is not on $C$ to $[0:1:0]$.

*Proof.* As $[0:1:0]\notin C$, the coefficient of $y^d$ in $f$ is nonzero, so $f$ involves $y$, and Lemma 9.7 takes care of the affine points. Let $F$ be the homogeneous equation and $P=[1:b:0]$ a point at infinity. The line $z=0$ is not tangent at $P$, so $z/x=1/x$ is a uniformizer at $P$, and $\operatorname{ord}_P(dx)=-2$ by Proposition 9.6. Next,
$$f_y=F_Y(x,y,1)=x^{d-1}\,F_Y\Bigl(1,\frac yx,\frac1x\Bigr),$$
and the second factor takes the value $F_Y(P)$ at $P$. Euler's formula $XF_X+YF_Y+ZF_Z=d\,F$ at $P$ gives $F_X(P)+b\,F_Y(P)=0$. If $F_Y(P)$ were 0, then so would be $F_X(P)$, and the tangent line $F_X(P)X+F_Y(P)Y+F_Z(P)Z=0$ would be $z=0$. So $F_Y(P)\neq0$, $v_P(f_y)=-(d-1)$, and
$$\operatorname{ord}_P\Bigl(\frac{dx}{f_y}\Bigr)=-2+(d-1)=d-3.$$
The statement about rationality is Theorem 9.10. $\square$

The Fermat cubic $x^3+y^3=1$ needs no change of coordinates. The point $[0:1:0]$ is not on it, and the line at infinity meets it in the three distinct points $[1:-\zeta:0]$ with $\zeta^3=1$, so it is tangent nowhere. Hence $dx/y^2$, which is $3\,dx/f_y$, has no zeros or poles, and the Fermat cubic is not rational. Chapter 5 reached the same conclusion through the Mason–Stothers theorem, and Variation 1 shows that it was the same argument in disguise. On the Fermat quartic, $dx/y^3$ is regular and vanishes exactly at the four points at infinity.

This proves the "only if" half of Theorem 1.6 for every smooth plane cubic, as Chapter 1 promised: a smooth cubic cannot be parametrized over $\mathbb{C}$, let alone over $\mathbb{Q}$. Once Chapter 10 defines the genus as $\dim\Omega^1(X)$, Theorem 9.10 is that half in general, since a curve of positive genus has a nonzero regular differential.

**Corollary 9.13.** On $E:\ y^2=x^3-x$, $\operatorname{div}(dx/y)=0$ and $\Omega^1(E)=k\cdot dx/y$. Consequently $E$ is not rational. The chord-and-tangent construction makes $E$ an abelian group with identity $\infty$, and $\iota:P\mapsto[P-\infty]$ is an injective homomorphism $E\to\operatorname{Pic}^0(E)$. The same holds for every smooth cubic $y^2=x^3+ax+b$.

*Proof.* By Chapter 8, $x:E\to\mathbb{P}^1$ is ramified at $(0,0)$, $(1,0)$, $(-1,0)$ and $\infty$, each with $e=2$, and $(x)_\infty=2\infty$. Proposition 9.6 gives
$$\operatorname{div}(dx)=(0,0)+(1,0)+(-1,0)-3\infty=\operatorname{div}(y),$$
so $\operatorname{div}(dx/y)=0$ and $\Omega^1(E)=L(0)\cdot dx/y=k\cdot dx/y$. By Theorem 9.10, $E$ is not rational. So distinct points of $E$ are never linearly equivalent (Section 8.3), and $\iota$ is injective. Section 8.4 showed that $\iota(P\oplus Q)=\iota(P)+\iota(Q)$, and injectivity carries the group axioms over from $\operatorname{Pic}^0(E)$:

- associativity, as explained in Section 8.4;
- $P\oplus\infty=P$, because both sides have the same image;
- $P\oplus P'=\infty$ for the reflection $P'$ of $P$, because $P+P'-2\infty=\operatorname{div}(x-x_P)$ when $P\neq\infty$.

For $y^2=x^3+ax+b$ with distinct roots, the same computations apply word for word. $\square$

In particular, the rational points of Bachet's curve $y^2=x^3-2$ from Chapter 1 form a group under chords and tangents.

**The same question twice.** Corollary 9.13 also answers Chapter 5's open question: the field $k(t,s)$ with $s^2=t^4+4$ is not of the form $k(u)$. Now look at that equation again. Substituting $t=(1+i)\tau$ and $s=2\sigma$, and using $(1+i)^4=-4$, turns it into
$$\sigma^2=1-\tau^4.$$
So over $\mathbb{C}$, $E$ and $\widehat\Lambda$ have the same function field, and by Corollary 7.9 they are isomorphic. The differentials match as well: on $E$ one finds $dx/y=2\,dt/s=(1+i)\,d\tau/\sigma$. Problem 9 and the question Chapter 5 left open were one question all along. Whether $E$ and $\widehat\Lambda$ are isomorphic over $\mathbb{Q}$ is subtler, and Chapter 17 settles it.

### The cast {-}

For the circle, $dx/y=-2\,dt/(1+t^2)$ has simple poles at $t=\pm i$, the parameters of $I$ and $J$, and is regular at $t=\infty$. The other rows come from Proposition 9.9, Theorems 9.11 and 9.12, Corollary 9.13 and Variation 4.

| Curve | $\omega$ | $\operatorname{div}(\omega)$ | Degree | $\dim\Omega^1(X)$ |
|---|---|---|---|---|
| $\mathbb{P}^1$ | $dt$ | $-2\infty$ | $-2$ | 0 |
| circle | $dx/y$ | $-I-J$ | $-2$ | 0 |
| $E$ | $dx/y$ | $0$ | $0$ | 1 |
| $\widehat\Lambda$ | $dx/y$ | $0$ | $0$ | 1 |
| Fermat cubic | $dx/y^2$ | $0$ | $0$ | 1 |
| $\widehat G$ | $dx/y$ | $2\infty$ | $2$ | 2 |
| Fermat quartic | $dx/y^3$ | the four points at infinity | $4$ | Chapter 10 |

The last column is the number that Chapter 10 calls the genus $g$. Wherever it is known, the degree column equals $2g-2$, and Chapter 15 proves that this always happens.

## What Just Happened

- **Differentials are algebraic objects.** Kähler differentials make "$h\,dx$" precise over any ring. On a curve they form a one-dimensional space over the function field, with the Leibniz rule, the chain rule and implicit differentiation built in.
- **A differential has a divisor.** Expanding in a uniformizer gives its order at each point. The divisor of $dx$ can be read off from the ramification of $x$, and all canonical divisors are linearly equivalent.
- **Substitution cannot create poles.** A nonconstant map pulls a regular differential back to a regular one, and in characteristic 0 it pulls a nonzero one back to a nonzero one.
- **The line has no regular differentials.** Every differential on $\mathbb{P}^1$ has a pole, since $\operatorname{div}(dt)=-2\infty$. So a curve with a nonzero regular differential is not the image of the line, and it cannot be parametrized.
- **The lemniscate's differential is finite everywhere.** $dx/y$ has no zeros or poles on $\widehat\Lambda$, and the same holds on $E$ and on every smooth plane cubic. That is why the integral refuses, and why the smooth cubics of Chapter 1 cannot be parametrized.
- **The weapon.** Chapter 1 observed that the Weierstrass substitution works because the circle is rational. Run backwards, the observation says that an integrand with no poles on the complete curve certifies that no rational substitution can exist.

## Threads

**Which curves can be parametrized?** Theorem 9.10 gives half of the complete answer: a curve with a nonzero regular differential cannot be parametrized. That covers $E$, $\widehat\Lambda$, $\widehat G$ and every smooth plane curve of degree at least 3, and it answers the questions of Chapters 1 and 5. Chapter 16 proves the converse with Riemann–Roch: if $\Omega^1(X)=0$, then $X\cong\mathbb{P}^1$.

**Why do a cubic's points form a group?** Corollary 9.13 completes Chapter 8's argument for associativity. Chapter 16 proves that $\iota$ is onto, so that the points of $E$ *are* $\operatorname{Pic}^0(E)$. Over $\mathbb{C}$ there is a second picture, in which integrating the regular differential turns the group law into addition of numbers. Euler's addition theorem,
$$\int_0^a\frac{dx}{\sqrt{1-x^4}}+\int_0^b\frac{dx}{\sqrt{1-x^4}}=\int_0^c\frac{dx}{\sqrt{1-x^4}},\qquad c=\frac{a\sqrt{1-b^4}+b\sqrt{1-a^4}}{1+a^2b^2},$$
is the group law of $\widehat\Lambda$ seen in this way, with $(0,1)$ as the identity.

**Differentials and the genus.** Chapter 10 defines the genus as $\dim\Omega^1(X)$ and computes it for smooth plane curves, starting from Theorem 9.12. Chapter 11 turns Propositions 9.6 and 9.8 into the Riemann–Hurwitz formula. Chapter 14 makes differentials into a sheaf, with residues and Serre duality, and Chapter 15 proves that $\deg K_X=2g-2$.

**The lemniscate in history.** In 1718 Fagnano found how to double an arc of the lemniscate by an algebraic substitution (Variation 2). Fagnano's collected papers reached the Berlin Academy on 23 December 1751 and were handed to Euler, who went on to find the addition theorem above. Jacobi dated the birth of the theory of elliptic functions to the five weeks that followed. Gauss studied the inverse of the lemniscate integral, his lemniscatic sine. On 30 May 1799 he noted in his diary that $\pi/\varpi$ and $M(1,\sqrt2)=1.19814\ldots$, the arithmetic–geometric mean of 1 and $\sqrt2$, agree to eleven decimal places, and that a proof would open a new field of analysis. Abel showed that the lemniscate can be divided into $n$ equal arcs by ruler and compass whenever the regular $n$-gon can be constructed. In the 1830s Liouville's theory of integration in finite terms showed that elliptic integrals of the first kind, the lemniscate integral among them, are not even elementary functions.

**Over $\mathbb{C}$.** A regular differential is a holomorphic 1-form on the compact Riemann surface $X(\mathbb{C})$. Proposition 9.9 is Liouville's theorem in disguise: a holomorphic form $f(z)\,dz$ on the Riemann sphere has $f$ entire, and regularity at $\infty$ forces $f(z)\to0$, so $f=0$. On $\widehat\Lambda$, the integral $z=\int dx/y$ is a local coordinate everywhere because $dx/y$ never vanishes, and its inverse, the lemniscatic sine, is doubly periodic. The periods form a square lattice, because $(x,y)\mapsto(ix,y)$ multiplies $dx/y$ by $i$. So $\widehat\Lambda(\mathbb{C})$ is a torus, the plane modulo that lattice, while $\mathbb{P}^1(\mathbb{C})$ is a sphere.

## Variations

These are optional. A hint follows each one.

**Variation 1.** Prove the Mason–Stothers theorem of Chapter 5 (Variation 4) with differentials. Let $a+b=c$ with $a,b,c\in k[t]$ coprime and not all constant, and let $n=\max(\deg a,\deg b,\deg c)$. Apply Proposition 9.6 to $f=a/c$ on $\mathbb{P}^1$ to show that $n\leq n_0(abc)-1$.
*Hint:* $f$ has degree $n$, and $\deg\operatorname{div}(df)=-2$, so $\sum_P(e_P-1)=2n-2$. The fibres of $f$ over $0$, $1$ and $\infty$ consist of the roots of $a$, $b$ and $c$, together possibly with $t=\infty$. So they contain at most $n_0(abc)+1$ points, and their ramification adds up to at least $3n-n_0(abc)-1$. Try $t^2+(2t+1)=(t+1)^2$, where equality holds.

**Variation 2.** Show that Fagnano's doubling map
$$D(x,y)=\Bigl(\frac{2xy}{1+x^4},\ \frac{1-6x^4+x^8}{(1+x^4)^2}\Bigr)$$
sends $\Lambda$ to itself, and that $D^*(dx/y)=2\,dx/y$, so that it doubles the lemniscate integral. Show that $\rho(x,y)=(ix,y)$ multiplies $dx/y$ by $i$. Why must every morphism $\widehat\Lambda\to\widehat\Lambda$ multiply $dx/y$ by a constant, and why is $D$ unramified?
*Hint:* With $s=x^4$, check that $(1+s)^4-16s(1-s)^2=(1-6s+s^2)^2$. For the constant, use $\Omega^1(\widehat\Lambda)=L(0)\cdot dx/y$ and Proposition 9.8. For the last part, $\operatorname{div}(2\,dx/y)=0$, so Proposition 9.8 forces every $e_Q$ to be 1.

**Variation 3.** Pull $dx/y$ back to $\mathbb{P}^1$ along the parametrizations of the node $y^2=x^2(x+1)$ and the cusp $y^2=x^3$ by $t=y/x$. Show that the node gives simple poles with residues $\pm1$ at the two points over the singular point, while the cusp gives a double pole with no residue. Explain why $\int dx/(x\sqrt{x+1})$ is a logarithm while $\int x^{-3/2}\,dx$ is algebraic. Where does Lemma 9.7 fail?
*Hint:* The pullbacks are $2\,dt/(t^2-1)=dt/(t-1)-dt/(t+1)$ and $2\,dt/t^2$. Lemma 9.7 needs smoothness, and at the singular point $f_x=f_y=0$. Chapter 12 measures the damage with $\delta$-invariants.

**Variation 4.** Let $h$ be a squarefree polynomial of degree $n$, and $X$ the smooth model of $y^2=h(x)$. Show that $\operatorname{div}(dx/y)$ is $(n-3)\infty$ if $n$ is odd, and $\bigl(\frac n2-2\bigr)(\infty_++\infty_-)$ if $n$ is even, so that $X$ is not rational when $n\geq3$. For $G$, show that $\Omega^1(\widehat G)$ consists of the differentials $(a+bx)\,dx/y$, and conclude that $\widehat G\not\cong E$.
*Hint:* As in Theorem 9.11, $x$ is ramified at the $n$ roots of $h$, and at $\infty$ exactly when $n$ is odd, while $y$ has poles of total order $n$ at infinity. For $G$, $\Omega^1(\widehat G)=L(2\infty)\cdot dx/y$, and Chapter 8's table gives $\ell(2\infty)=2$, with basis $1,x$. An isomorphism would identify the spaces of regular differentials, by Proposition 9.8, but they have dimensions 2 and 1.

**Variation 5.** In characteristic $p$, show that $d(t^p)=0$, so that the Frobenius map $t\mapsto t^p$ of $\mathbb{P}^1$ pulls every differential back to 0. Which step of the proof of Theorem 9.10 breaks, and why does its conclusion survive?
*Hint:* $d(t^p)=p\,t^{p-1}\,dt$. Injectivity in Proposition 9.8 fails for inseparable maps. But every map of curves factors as a power of Frobenius followed by a separable map [Si, Corollary II.2.12], and for separable maps the argument goes through. Chapter 11 treats the wild ramification that appears when $p$ divides $e_P$.

## Reading Map

- **[H, II.8]:** Kähler differentials, the sheaf of differentials, its local freeness on nonsingular varieties (Theorem 8.15), and the birational invariance of the space of regular differentials (Theorem 8.19).
- **[F, §8.4–8.5]:** derivations and differentials on plane curves, their orders, and canonical divisors, computed for plane curves with ordinary multiple points.
- **[Si, II.4 and III.1]:** differentials on curves (Propositions II.4.2 and II.4.3), the examples of $\mathbb{P}^1$ and of $y^2=(x-e_1)(x-e_2)(x-e_3)$, and the invariant differential of a Weierstrass cubic (Proposition III.1.5).
- **[S, Chapter 4]:** derivations and differentials of function fields (§4.1), and their agreement with the Weil differentials that Stichtenoth uses to define the canonical class (§4.3).
- **R. Miranda, *Algebraic Curves and Riemann Surfaces*,** Chapters IV and V: holomorphic and meromorphic 1-forms, their residues, and canonical divisors on Riemann surfaces.
- **B. Riemann, "Theorie der Abel'schen Functionen",** *Journal für die reine und angewandte Mathematik* 54 (1857): integrals of the first kind, everywhere finite, of which a curve of genus $p$ has $p$ independent ones.
- **M. Rosen, "Abel's theorem on the lemniscate",** *American Mathematical Monthly* 88 (1981): Fagnano, Euler, Gauss and Abel on dividing the lemniscate.
- **D. A. Cox, "The arithmetic-geometric mean of Gauss",** *L'Enseignement Mathématique* 30 (1984): Gauss's diary, $\varpi$ and the arithmetic–geometric mean.
- **N. Snyder, "An alternate proof of Mason's theorem",** *Elemente der Mathematik* 55 (2000): a one-page proof by derivatives, close to Variation 1.
