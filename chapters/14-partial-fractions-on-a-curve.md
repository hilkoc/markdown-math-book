# Partial Fractions on a Curve: Sheaves and Cohomology

```{=latex}
\chaptermark{Partial Fractions on a Curve}
```

## The Problem

On the projective line, partial fractions solve every pole problem. Choose finitely many points, with a Laurent tail $\sum_jc_j(t-a)^{-j}$ at each finite point $a$ and possibly a polynomial tail at $\infty$. The sum of the tails has exactly these principal parts and no other poles. Call such data a **prescription**. On the line every prescription can be met, and the integration of rational functions rests on that fact.

> **Problem 14.** On the cubic $E:\ y^2=x^3-x$, take the four points with a vertical tangent: $P_1=(0,0)$, $P_2=(1,0)$, $P_3=(-1,0)$ and $P_4=\infty$. The function $y$ is a uniformizer at $P_1$, $P_2$ and $P_3$, and $x/y$ is one at $P_4$.
> (a) Is there a rational function on $E$ whose only pole is a simple pole at $P_1$?
> (b) For which numbers $c_1,c_2,c_3,c_4$ is there a rational function $f$ on $E$, regular away from the $P_i$, such that $f-c_i/y$ is regular at $P_i$ for $i\leq3$ and $f-c_4\,y/x$ is regular at $P_4$?
> (c) In general, which prescriptions can be met on $E$? Measure how far $E$ falls short of the projective line.

The preface promised that sheaf cohomology would arrive because partial fractions fail on a cubic curve, and that the failure has a size. This is that problem. Part (a) is already settled: a function with a single simple pole would make $E$ rational (Section 8.3), and Chapter 9 proved that $E$ is not rational. But that argument sees only where the poles are, and part (b) asks about their coefficients.

Here $k$ is algebraically closed of any characteristic, except 2 when $E$ or $G$ appears, since both curves are singular in characteristic 2. Nothing here depends on the Riemann–Hurwitz formula or on Theorem 12.3. Both borrowed from Chapter 15, and Chapter 15 will rest on this chapter, in every characteristic.

## First Attempts

**Count degrees.** Suppose that in (b) only $c_1$ and $c_2$ are nonzero. Functions with simple poles at exactly $P_1$ and $P_2$ exist. Since $y^2=x(x-1)(x+1)$, the function $(x+1)/y=y/\bigl(x(x-1)\bigr)$ is one, with principal parts $1/y$ at $P_1$ and $2/y$ at $P_2$. Could another function have $1/y$ at both? Degrees cannot say. They record where the poles are, not what the coefficients are.

**Solve locally, then glue.** Locally there is no difficulty. Let $U=E\setminus\{P_4\}$, the affine curve, and $V=E\setminus\{P_1\}$, which is also affine (Theorem 7.5). On an affine curve the Chinese remainder theorem produces a function with any finitely many prescribed principal parts and no other poles. So some $f_U$ and $f_V$ meet the prescription on $U$ and on $V$, and $f_U-f_V$ has no poles on $U\cap V$. If
$$f_U-f_V=a-b\qquad\text{with }a\in\mathcal O(U),\ b\in\mathcal O(V),$$
then $f_U-a=f_V-b$ meets the prescription on all of $E$. Since $f_U$ and $f_V$ can be changed by elements of $\mathcal O(U)$ and $\mathcal O(V)$, everything depends on the quotient
$$\frac{\mathcal O(U\cap V)}{\mathcal O(U)+\mathcal O(V)}.$$
On the projective line, with $U=\{t\neq\infty\}$ and $V=\{t\neq0\}$, this quotient is zero, because every Laurent polynomial is a polynomial in $t$ plus a polynomial in $1/t$. That one line is the theorem of partial fractions. The local problems can always be solved, and what can fail is the gluing. Sheaves describe the local solutions, and cohomology measures the failure to glue them.

## The Ideas We Need

Throughout, $X$ is a smooth projective curve with function field $K=k(X)$. Singular curves appear only in the last subsection.

### Sheaves of abelian groups {-}

**Definition 14.1.** A **sheaf of abelian groups** $\mathcal F$ on a space $X$ assigns an abelian group $\mathcal F(U)$ to each open set $U$, with restriction homomorphisms $s\mapsto s\vert_V$ for $V\subseteq U$ that are compatible with composition. For every open cover $U=\bigcup U_i$, a section whose restrictions to all $U_i$ vanish must be zero, and sections on the $U_i$ that agree on overlaps must glue to a section on $U$. The **stalk** $\mathcal F_P$ is the group of germs of sections at $P$. A sequence of sheaves $0\to\mathcal F'\to\mathcal F\to\mathcal F''\to0$ is **exact** if it is exact on every stalk.

This is Definition 7.1 with functions replaced by elements of groups. On $X$ we need four sheaves.

- **$\mathcal O(D)$**, for a divisor $D=\sum n_PP$. Its sections over $U$ are $0$ and the $f\in K^\times$ with $v_P(f)\geq-n_P$ for all $P\in U$. The global sections form $L(D)$ (Definition 8.7), the stalk at $P$ is $\mathcal O(D)_P=\{f:\ v_P(f)\geq-n_P\}$, and $\mathcal O(0)=\mathcal O$.
- **$\Omega^1(D)$**, whose sections over $U$ are the differentials with $\operatorname{ord}_P(\omega)\geq-n_P$ for all $P\in U$. So $\Omega^1(0)(X)$ is Chapter 9's $\Omega^1(X)$, and if $\operatorname{div}(\omega_0)=K_X$, then $f\mapsto f\omega_0$ identifies $\mathcal O(K_X+D)$ with $\Omega^1(D)$.
- **The constant sheaf $\mathcal K$**, with $\mathcal K(U)=K$ for every nonempty open $U$.
- **The sheaf of principal parts $\mathcal K/\mathcal O(D)$**, whose sections over $U$ are the finite families $(r_P)_{P\in U}$ with $r_P\in K/\mathcal O(D)_P$. For $D=0$, the class of $f$ in $K/\mathcal O_P$ is recorded by the terms with negative exponent in its expansion in a uniformizer.

The sequence $0\to\mathcal O(D)\to\mathcal K\to\mathcal K/\mathcal O(D)\to0$ is exact, because on stalks it is $0\to\mathcal O(D)_P\to K\to K/\mathcal O(D)_P\to0$. Near $P$, every principal part is the principal part of a function, namely of its own Laurent tail. Global sections behave differently. In the exact sequence
$$0\to L(D)\to K\to\bigoplus_{P\in X}K/\mathcal O(D)_P$$
the last map need not be onto. Its image consists of the prescriptions that a single global function can meet.

> **Look up.** Sheaves, stalks and exactness: [H, II.1], where Ex. II.1.8 shows that global sections are only left exact; [V], Chapter 2. For $X=\mathbb{P}^1$, [H, Ex. II.1.21(d)–(e)] asks you to prove that the last map *is* onto. Hartshorne writes $\mathcal L(D)$ for $\mathcal O(D)$ [H, II.6].

### The first cohomology group {-}

**Definition 14.2.** A **prescription** for $\mathcal O(D)$ is an element $r=(r_P)$ of $\bigoplus_PK/\mathcal O(D)_P$. A function $f\in K$ **meets** $r$ at $P$ if $f-r_P\in\mathcal O(D)_P$, and meets $r$ on an open set if it does so at every point of it. The **first cohomology group** is
$$H^1(X,\mathcal O(D))=\frac{\bigoplus_PK/\mathcal O(D)_P}{\{\text{prescriptions met on }X\text{ by some }f\in K\}},$$
and $h^1(\mathcal O(D))$ is its dimension. We also write $H^0(X,\mathcal O(D))=L(D)$, so that $h^0(\mathcal O(D))=\ell(D)$.

So $H^1(X,\mathcal O)$ is the space of all prescriptions modulo those that can be met. It is precisely the failure of partial fractions, and on the projective line it is 0.

**Proposition 14.3 (two charts).** Let $U$ and $V$ be affine open sets covering $X$. Sending $h\in\mathcal O(D)(U\cap V)$ to the prescription formed by its classes in $K/\mathcal O(D)_P$ at the points $P$ outside $V$ induces an isomorphism
$$\frac{\mathcal O(D)(U\cap V)}{\mathcal O(D)(U)+\mathcal O(D)(V)}\ \xrightarrow{\ \sim\ }\ H^1(X,\mathcal O(D)).$$

*Proof.* On an affine curve every prescription can be met: write the $r_P$ over a common denominator $s$ in the coordinate ring, and choose the numerator by the Chinese remainder theorem [AM, Proposition 1.10] at the zeros of $s$ and the support of $D$. So, given $r$, some $f_U$ meets it on $U$ and some $f_V$ meets it on $V$. Then $f_U-f_V\in\mathcal O(D)(U\cap V)$, its class does not depend on the choices, and, as in Section 14.2, the class is zero exactly when $r$ can be met on all of $X$. So $r\mapsto[f_U-f_V]$ is injective on $H^1$. It inverts the map in the statement, because the prescription formed by $h$ outside $V$ is met by $f_U=h$ on $U$ and by $f_V=0$ on $V$. $\square$

The quotient on the left is the **Čech cohomology** of the cover $\{U,V\}$.

> **Look up.** Hartshorne defines $H^i$ for every sheaf of abelian groups as a derived functor [H, III.1–III.2], and both of our descriptions compute $H^1$: see [H, III.4, Theorem 4.5] for Čech cohomology, [H, III.3, Theorem 3.5] for $H^1=0$ on an affine curve, and [H, III.2, Theorem 2.7] for $H^i=0$ on a curve when $i\geq2$. Prescriptions are Weil's **repartitions** (J.-P. Serre, *Algebraic Groups and Class Fields*, Chapter II; [S, §1.5]).

**Proposition 14.4 (the exact sequence).** Let $\mathcal F\subseteq\mathcal G$ be two of the sheaves above, for instance $\mathcal O(D)\subseteq\mathcal O(D')$ with $D\leq D'$, whose stalks differ at only finitely many points. Then the sequence
$$0\to H^0(\mathcal F)\to H^0(\mathcal G)\to\bigoplus_P\mathcal G_P/\mathcal F_P\xrightarrow{\ \partial\ }H^1(\mathcal F)\to H^1(\mathcal G)\to0$$
is exact. The map $\partial$ sends a family of local elements to the class of the prescription it defines.

*Proof.* The map $K\to\bigoplus_PK/\mathcal G_P$ is the composite of $K\to\bigoplus_PK/\mathcal F_P$ with the projection $\pi$ onto $\bigoplus_PK/\mathcal G_P$, whose kernel is $\bigoplus_P\mathcal G_P/\mathcal F_P$. By the snake lemma [AM, Proposition 2.10], the kernels and cokernels of two maps and of their composite form an exact sequence. Here the kernels are $H^0(\mathcal F)$, $H^0(\mathcal G)$ and $\ker\pi$, and the cokernels are $H^1(\mathcal F)$, $H^1(\mathcal G)$ and $0$. $\square$

This is the long exact sequence of cohomology [H, III.1] for $0\to\mathcal F\to\mathcal G\to\mathcal G/\mathcal F\to0$, and it counts conditions. For $\mathcal O\subseteq\mathcal O(D)$ with $D\geq0$, the middle term is the space of prescriptions with poles bounded by $D$, of dimension $\deg D$. Such a prescription can be met exactly when $\partial$ kills it, which imposes $h^1(\mathcal O)-h^1(\mathcal O(D))$ independent conditions.

### Residues {-}

**Definition 14.5.** Let $\omega$ be a differential and $P$ a point with uniformizer $t$. Expand $\omega=\bigl(\sum_{n\geq-N}a_nt^n\bigr)\,dt$. The **residue** of $\omega$ at $P$ is $\operatorname{Res}_P(\omega)=a_{-1}$.

**Theorem 14.6.** The residue does not depend on the choice of uniformizer. Moreover:

1. $\operatorname{Res}_P$ is $k$-linear, and it vanishes on differentials that are regular at $P$;
2. $\operatorname{Res}_P(df)=0$ for every $f\in K$;
3. $\operatorname{Res}_P(df/f)=v_P(f)$ for every $f\neq0$, read as an element of $k$.

*Proof in characteristic 0.* For a fixed $t$, part 2 holds because the derivative of a Laurent series has no $t^{-1}$ term, and part 3 because $f=t^mu$ with $u$ a unit gives $df/f=m\,dt/t+du/u$, where $du/u$ is regular. For independence, note that $t^n\,dt=d\bigl(t^{n+1}/(n+1)\bigr)$ for $n\neq-1$, so $\omega=a_{-1}\,dt/t+dg$ for a Laurent series $g$. If $s$ is another uniformizer, then $t=su$ with $u$ a unit, so $dt/t=ds/s+du/u$. Expanding in $s$, the term $dg$ has no residue by part 2, and $du/u$ has none by part 1. $\square$

In characteristic $p$ this proof breaks, since $t^{-p-1}\,dt$ is not $dg$ for any Laurent series $g$, but the theorem survives. Serre deduces it from characteristic 0, because the coefficients after a change of uniformizer are universal polynomials with integer coefficients. Tate's proof works in every characteristic at once.

**Theorem 14.7 (the residue theorem).** For every differential $\omega$ on $X$,
$$\sum_{P\in X}\operatorname{Res}_P(\omega)=0.$$

*Proof for $\mathbb{P}^1$.* Write $\omega=R(t)\,dt$ and split $R$ into partial fractions: a polynomial plus terms $c\,(t-a)^{-j}$. The residue at $a$ is the coefficient of $(t-a)^{-1}$. At $\infty$, put $s=1/t$, so that $dt=-ds/s^2$. The polynomial and the terms with $j\geq2$ have no residue there, while $(t-a)^{-1}dt=-s^{-1}(1-as)^{-1}ds$ has residue $-1$. So the residue at $\infty$ is minus the sum of all the others. $\square$

*Sketch in general.* Choose $x\in K$ with $K/k(x)$ separable. The trace $\operatorname{Tr}(h\,dx)=\operatorname{Tr}_{K/k(x)}(h)\,dx$ takes differentials on $X$ to differentials on $\mathbb{P}^1$, and for every point $Q$ of $\mathbb{P}^1$,
$$\sum_{x(P)=Q}\operatorname{Res}_P(\omega)=\operatorname{Res}_Q(\operatorname{Tr}\omega).$$
Summing over $Q$ reduces the theorem to $\mathbb{P}^1$. Over $\mathbb{C}$ it is Stokes's theorem, since each residue is $\frac1{2\pi i}\oint\omega$ around a small loop. $\square$

On the line, then, the residue theorem *is* partial fractions. Applied to $df/f$ in characteristic 0, it gives $\sum_Pv_P(f)=0$. That is the contour-integral proof that zeros and poles balance, which Chapter 8 sketched over $\mathbb{C}$ and promised to make algebraic. In characteristic $p$ it gives the balance only modulo $p$.

> **Look up.** Residues, their invariance and the residue theorem in every characteristic: Serre, Chapter II; J. Tate, "Residues of differentials on curves" (1968); [S, §§4.2–4.3].

### Serre duality {-}

The residue theorem gives every regular differential a test that a prescription must pass.

**Proposition 14.8 (the residue pairing).** Let $\omega$ be a differential with $\operatorname{div}(\omega)\geq D$, that is, $\omega\in H^0(X,\Omega^1(-D))$. For a prescription $r$ for $\mathcal O(D)$, the number
$$\langle\omega,r\rangle=\sum_P\operatorname{Res}_P(r_P\,\omega)$$
is well defined, and it is zero when $r$ can be met. So residues define a pairing $H^0(X,\Omega^1(-D))\times H^1(X,\mathcal O(D))\to k$.

*Proof.* If $r_P\in\mathcal O(D)_P$, then $\operatorname{ord}_P(r_P\,\omega)\geq-n_P+n_P=0$, so $r_P\,\omega$ is regular at $P$ and has no residue. Hence $\operatorname{Res}_P(r_P\,\omega)$ depends only on the class of $r_P$. If $f$ meets $r$, the same argument gives $\operatorname{Res}_P(r_P\,\omega)=\operatorname{Res}_P(f\omega)$ at every $P$, and the sum is 0 by Theorem 14.7. $\square$

**Theorem 14.9 (Serre duality for curves).** This pairing is perfect. Hence
$$h^1(\mathcal O(D))=\ell(K_X-D),\quad\text{and in particular}\quad h^1(X,\mathcal O)=\dim\Omega^1(X)=g.$$

*Sketch.* Since $f\mapsto f\omega_0$ identifies $L(K_X-D)$ with $H^0(X,\Omega^1(-D))$, only perfectness needs proof. One half is easy. Given $\omega\neq0$ and any point $P$, write $\omega=(at^m+\cdots)\,dt$ with $a\neq0$. The prescription $t^{-m-1}/a$ at $P$ alone pairs with $\omega$ to give 1, so $\ell(K_X-D)\leq h^1(\mathcal O(D))$. The other half is the real theorem: every linear form on $H^1(X,\mathcal O(D))$ comes from a differential. Weil considered the linear forms on prescriptions that vanish both on the prescriptions that can be met and on those bounded by some divisor, and showed that they form a vector space of dimension 1 over $K$. The forms $\langle\omega,\cdot\rangle$ already fill it. $\square$

> **Look up.** Serre, Chapter II, proves duality with residues in every characteristic, and [S, §§1.5 and 4.3] calls the linear forms Weil differentials. The general theorem: [H, III.7, Corollary 7.12]. Compact Riemann surfaces: Forster, §17.

**Corollary 14.10 (partial fractions on a curve).** A prescription $r$ of principal parts on $X$ can be met exactly when
$$\sum_P\operatorname{Res}_P(r_P\,\omega)=0\qquad\text{for every }\omega\in\Omega^1(X).$$
These are $g$ independent linear conditions, one for each element of a basis of $\Omega^1(X)$.

*Proof.* Take $D=0$ in Theorem 14.9. The prescription $r$ can be met exactly when its class in $H^1(X,\mathcal O)$ is zero, which, by perfectness, happens exactly when it pairs to zero with all of $\Omega^1(X)$. Perfectness also makes the $g$ conditions independent. $\square$

So the genus is the number of conditions that partial fractions must pay. On the line there are none.

### The arithmetic genus {-}

Now let $C$ be a projective curve (Definition 13.7), possibly singular, with normalization $\nu:\widetilde C\to C$ and rings $\widetilde{\mathcal O}_P\supseteq\mathcal O_{C,P}$ as in Chapter 12. Define $H^1(C,\mathcal O_C)$ and $H^1(C,\nu_*\mathcal O_{\widetilde C})$ by Definition 14.2, with $\mathcal O_{C,P}$ or $\widetilde{\mathcal O}_P$ in place of $\mathcal O_P$. Propositions 14.3 and 14.4 hold on $C$, with the same proofs.

**Definition 14.11.** The **arithmetic genus** of $C$ is $p_a(C)=h^1(C,\mathcal O_C)$.

By Theorem 14.9, $p_a=g$ for a smooth curve.

**Theorem 14.12.** $p_a(C)=g(\widetilde C)+\sum_P\delta_P$.

*Proof.* Apply Proposition 14.4 to $\mathcal O_C\subseteq\nu_*\mathcal O_{\widetilde C}$, whose stalks $\mathcal O_{C,P}\subseteq\widetilde{\mathcal O}_P$ differ only at the singular points. The global sections of $\nu_*\mathcal O_{\widetilde C}$ are the regular functions on $\widetilde C$, which are constant by Corollary 7.9, so both sheaves have only the constants. The sequence reads
$$0\to k\to k\to\bigoplus_P\widetilde{\mathcal O}_P/\mathcal O_{C,P}\to H^1(C,\mathcal O_C)\to H^1(C,\nu_*\mathcal O_{\widetilde C})\to0,$$
so $p_a(C)=\sum_P\delta_P+h^1(\nu_*\mathcal O_{\widetilde C})$. Finally, for the points $Q$ of $\widetilde C$ above $P$, the map $K\to\bigoplus_{Q\mapsto P}K/\mathcal O_Q$ is onto by the approximation theorem [S, Theorem 1.3.1], with kernel $\widetilde{\mathcal O}_P$. So $H^1(C,\nu_*\mathcal O_{\widetilde C})=H^1(\widetilde C,\mathcal O)$, which has dimension $g$ by Theorem 14.9. $\square$

**Proposition 14.13.** A plane curve of degree $d$ has $p_a=\binom{d-1}{2}$.

*Proof.* Choose coordinates with $[1:0:0]\notin C$, so that the affine equation $f(x,y)=0$ is monic in $x$ of degree $d$, after scaling. The charts $U=\{z\neq0\}$ and $V=\{y\neq0\}$ cover $C$, since $[1:0:0]$ is the only point with $y=z=0$. Division by $f$ as a polynomial in $x$ gives bases:

- $\mathcal O(U)=k[x,y]/(f)$ has basis $x^iy^j$ with $0\leq i<d$ and $j\geq0$;
- $\mathcal O(U\cap V)=k[x,y,y^{-1}]/(f)$ has basis $x^iy^j$ with $0\leq i<d$ and $j\in\mathbb{Z}$;
- $\mathcal O(V)$, the coordinate ring of the chart $y=1$, is generated by $x/y$ and $1/y$, with basis $(x/y)^i(1/y)^m=x^iy^{-i-m}$ for $0\leq i<d$ and $m\geq0$.

By Proposition 14.3, $H^1(C,\mathcal O_C)$ has basis the classes of $x^iy^j$ with $0\leq i<d$ and $-i<j<0$. There are $0+0+1+2+\dots+(d-2)=\binom{d-1}{2}$ of them. $\square$

**Corollary 14.14.** For an irreducible plane curve of degree $d$, $g=\binom{d-1}{2}-\sum_P\delta_P$.

This is Theorem 12.3, now proved without the loan from Chapter 15. Chapter 12's comparison of polynomials with all functions has become the promised exact sequence of sheaves, and $\binom{d-1}{2}$ is the arithmetic genus of Variation 5 of Chapter 10.

> **Look up.** Proposition 14.13 is [H, Ex. III.4.7], and Theorem 14.12 is [H, IV, Ex. 1.8]. [H, Ex. III.4.1] gives $H^1(C,\nu_*\mathcal O_{\widetilde C})=H^1(\widetilde C,\mathcal O)$, and [H, Ex. III.5.3] matches $h^1(\mathcal O_C)$ with Hartshorne's definition of $p_a$ by the Hilbert polynomial. Serre, Chapter IV, treats singular curves.

## The Solution

### The obstruction on $E$ {-}

Take the charts of Section 14.2: $U=E\setminus\{P_4\}$, the affine curve, and $V=E\setminus\{P_1\}$. Since $P_1$ is the only zero of $x$, Theorem 7.5 makes $\mathcal O(V)$ the integral closure of $k[1/x]$. It contains $u=1/x$ and $w=y/x^2$, which satisfy
$$w^2=\frac{x^3-x}{x^4}=u-u^3.$$
This curve is smooth, so $k[u,w]$ is integrally closed, and it is $\mathcal O(V)$. Each of the three rings has a basis of the form $x^i,\ x^iy$:

- $\mathcal O(U)=k[x,y]$: $x^i$ and $x^iy$ with $i\geq0$;
- $\mathcal O(V)=k[u,w]$: $u^j=x^{-j}$ and $u^jw=x^{-j-2}y$ with $j\geq0$;
- $\mathcal O(U\cap V)=k[x,x^{-1},y]$: $x^i$ and $x^iy$ with $i\in\mathbb{Z}$.

The only basis element in neither $\mathcal O(U)$ nor $\mathcal O(V)$ is $x^{-1}y$. By Proposition 14.3,
$$H^1(E,\mathcal O)=k\cdot[y/x],\qquad h^1(E,\mathcal O)=1.$$
The class $[y/x]$ is the prescription formed by $y/x$ at $P_1$, the one point outside $V$. Since $y/x=(x^2-1)/y=-1/y+x^2/y$, and $x^2/y$ vanishes at $P_1$, that prescription is the principal part $-1/y$ at $P_1$: a simple pole at $P_1$ alone. Its class spans $H^1(E,\mathcal O)$, so it is not zero. **This answers (a)**, by linear algebra in three rings and without Chapter 9.

### The residue test {-}

Let $\phi(r)=\langle dx/y,\,r\rangle=\sum_P\operatorname{Res}_P(r_P\,dx/y)$. By Proposition 14.8, $\phi$ vanishes on every prescription that can be met. On the generator, Theorem 14.6 gives
$$\phi\bigl([y/x]\bigr)=\operatorname{Res}_{P_1}\Bigl(\frac yx\cdot\frac{dx}y\Bigr)=\operatorname{Res}_{P_1}\frac{dx}x=v_{P_1}(x)=2.$$
Since $H^1(E,\mathcal O)$ is one-dimensional and $\phi$ is not zero on it, $\phi$ identifies $H^1(E,\mathcal O)$ with $k$. **This answers (c):** a prescription $r$ on $E$ can be met exactly when
$$\sum_P\operatorname{Res}_P\Bigl(r_P\,\frac{dx}y\Bigr)=0.$$
That is one linear condition. $E$ falls short of the projective line by exactly one dimension, its genus, as Corollary 14.10 predicts. As a check on Theorem 14.7, the differential $dx/x$ has residue $v(x)=2$ at $P_1$ and $v(x)=-2$ at $P_4$, and no other poles.

### The four points {-}

To apply the test to (b), expand $dx/y$ in the given uniformizers. At $P_i=(a,0)$, differentiating the equation gives $2y\,dy=(3x^2-1)\,dx$, so
$$\frac{dx}y=\frac{2\,dy}{3x^2-1}=\Bigl(\frac2{3a^2-1}+\cdots\Bigr)\,dy,$$
with leading coefficients $-2$, $1$ and $1$ at $P_1$, $P_2$ and $P_3$. At $P_4$, use Chapter 8's chart $X=x/y$, $Z=1/y$, in which $Z=X^3-XZ^2$, so that $X$ is a uniformizer and $Z=X^3+\cdots$. Then
$$\frac{dx}y=Z\,d\Bigl(\frac XZ\Bigr)=dX-X\,\frac{dZ}Z=dX-3\,dX+\cdots=(-2+\cdots)\,dX.$$
So a principal part $c_i/t_i$, with $t_i=y$ for $i\leq3$ and $t_4=x/y$, has residue $c_iu_i$ against $dx/y$, where $(u_1,u_2,u_3,u_4)=(-2,1,1,-2)$. **This answers (b):** the prescription can be met exactly when
$$-2c_1+c_2+c_3-2c_4=0.$$
The solutions form a space of dimension 3. The functions $1/y$, $x/y$ and $x^2/y$ realize
$$(c_1,c_2,c_3,c_4)=(1,1,1,0),\qquad(0,1,-1,0),\qquad(0,1,1,1),$$
and in general the prescription is met by
$$f=\frac{c_1+\tfrac12(c_2-c_3)\,x+c_4\,x^2}y,$$
unique up to an added constant, so that $\ell(P_1+P_2+P_3+P_4)=4$. The function $(x+1)/y$ of Section 14.2 has $(1,2,0,0)$, and the ratio $1:2$ is forced: no function has principal part $1/y$ at both $P_1$ and $P_2$ and no other poles.

### $\widehat G$: two conditions {-}

For $\widehat G$, take Chapter 7's charts $U=G$ and $V=G'$, where $u=1/x$, $w=y/x^3$ and $w^2=u-u^5$. Now $\mathcal O(V)$ has basis $x^{-j}$ and $x^{-j-3}y$, and the same bookkeeping leaves two classes:
$$H^1(\widehat G,\mathcal O)=k\cdot[y/x]\oplus k\cdot[y/x^2].$$
At $(0,0)$, the one point outside $G'$, we have $x=-y^2-y^{10}-\cdots$, so these classes are exactly the prescriptions $-1/y$ and $1/y^3$ there. Their products with the basis $dx/y$, $x\,dx/y$ of $\Omega^1(\widehat G)$ (Proposition 10.2) are
$$\frac{dx}x,\qquad dx,\qquad\frac{dx}{x^2},\qquad\frac{dx}x,$$
with residues $2$, $0$, $0$ and $2$ at $(0,0)$, because $v_{(0,0)}(x)=2$ and $dx/x^2=-d(1/x)$. The matrix is $2I$, so the pairing is perfect and $h^1(\widehat G,\mathcal O)=2=g$, as Theorem 14.9 predicts: on $\widehat G$ every prescription must pass two residue tests.

The two obstructions are a simple pole and a triple pole at $(0,0)$. The automorphism $(x,y)\mapsto(-1/x,\,y/x^3)$ of $\widehat G$ swaps $(0,0)$ and $\infty$, and Variation 5 of Chapter 7 found that no function whose only pole is at $\infty$ has a pole of order 1 or 3. So the obstructions sit at exactly the missing pole orders. Chapter 15 explains why.

### Singular cubics: where $\delta$ lives {-}

Repeat the computation for the cusp $y^2=x^3$ and the node $y^2=x^2(x+1)$, with $U$ the affine curve and $V$ the complement of the singular point $(0,0)$. Again $u=1/x$ and $w=y/x^2$ give a smooth chart, $w^2=u$ for the cusp and $w^2=u+u^2$ for the node. The bases are word for word those for $E$, so $H^1(C,\mathcal O_C)=k\cdot[y/x]$, and $p_a=1$ for all three cubics, as Proposition 14.13 says.

But the class now means something else. On the cusp and the node, $y/x$ is Chapter 1's parameter $t$ on the normalization $\mathbb{P}^1$. It is regular over the singular point $P$, so it lies in $\widetilde{\mathcal O}_P$ but not in $\mathcal O_{C,P}$, and it spans $\widetilde{\mathcal O}_P/\mathcal O_{C,P}$. The obstruction disappears on the normalization, and Theorem 14.12 reads $1=0+1$. On $E$ the same class survives on the smooth curve: $1=1+0$.

## What Just Happened

- **Partial fractions is a gluing problem.** Every prescription can be met locally. Exactness of sheaves is checked on stalks, but global sections can lose surjectivity, and the question is whether local solutions glue.
- **$H^1$ measures the failure.** It is the space of prescriptions modulo those that can be met. With two affine charts it is $\mathcal O(U\cap V)/(\mathcal O(U)+\mathcal O(V))$, and an inclusion of sheaves gives a six-term exact sequence that counts conditions.
- **Residues and duality.** Residues do not depend on the uniformizer, and on a complete curve they sum to zero; on the line this is partial fractions. They pair $H^1(\mathcal O(D))$ perfectly with the differentials of divisor at least $D$, so $h^1(\mathcal O)=g$, and the genus counts the conditions a prescription must satisfy.
- **The problem.** On $E$ no function has a single simple pole, and the prescription of (b) can be met exactly when $-2c_1+c_2+c_3-2c_4=0$. In general a prescription on $E$ can be met exactly when its residue pairing with $dx/y$ vanishes, and on $\widehat G$ there are two such conditions.
- **The arithmetic genus.** $p_a=h^1(\mathcal O_C)=g+\sum\delta_P$, and $p_a=\binom{d-1}{2}$ for plane curves, so Chapter 12's genus formula needs nothing from later chapters.

## Threads

**Riemann–Roch.** Proposition 14.4 for $\mathcal O\subseteq\mathcal O(D)$, with $D\geq0$, counts the conditions on prescriptions bounded by $D$. Counting the functions that meet them gives
$$\ell(D)-1=\deg D-\bigl(g-h^1(\mathcal O(D))\bigr),$$
and Theorem 14.9 turns $h^1(\mathcal O(D))$ into $\ell(K_X-D)$. Chapter 15 proves the resulting formula for every divisor, deduces $\deg K_X=2g-2$ in every characteristic, as Chapter 11 needed, and explains Chapter 8's tables. It also explains why the obstructions on $E$ and $\widehat G$ sat at the missing pole orders, the Weierstrass gaps, which Variation 2 previews.

**Where did the genus go?** In the family $y^2=x^3-\lambda x$, the chart $w^2=u-\lambda u^3$ gives the class $[y/x]$ for every $\lambda$. So $p_a=1$ throughout, while the genus drops to 0 at the cusp, $\lambda=0$. The arithmetic genus is constant in flat families, since it is read off from the Hilbert polynomial [H, III.9, Theorem 9.9], and the $\delta$-invariant of the limit absorbs the lost genus.

**What sheaves are for.** A sheaf records which local solutions exist, and cohomology measures whether they glue. The same pattern gives $\operatorname{Pic}(X)\cong H^1(X,\mathcal O_X^\times)$ [H, Ex. III.4.5], and it classifies the first-order deformations of a curve by $H^1$ of its tangent sheaf, of dimension $3g-3$ when $g\geq2$: the number of moduli (Afterword).

**Over $\mathbb{C}$.** By Mittag-Leffler's theorem (1884), even infinitely many principal parts can be met on the complex plane, at points without an accumulation point. On a compact Riemann surface the obstruction is $H^1(X,\mathcal O)$, as in Forster's §18. On the torus $E(\mathbb{C})$, the Weierstrass function $\zeta(z)$ has principal part $1/z$ at each period and no other poles, but it is not periodic. That failure is the class of a single simple pole in $H^1(E,\mathcal O)$, seen analytically.

**History.** Riemann (1857) proved $\ell(D)\geq\deg D+1-g$, and his student Roch (1865) identified the defect: the differentials vanishing on $D$. Weil (1938) proved the theorem algebraically, in every characteristic, with repartitions, and Serre's sheaf cohomology (1955) recast Weil's quotient as $H^1$.

## Variations

These are optional. A hint follows each one.

**Variation 1.** On $\mathbb{P}^1$, with $U=\{t\neq\infty\}$, $V=\{t\neq0\}$ and $n\geq1$, show that $H^1(\mathbb{P}^1,\mathcal O(-n\infty))$ has basis $[t^{-1}],\dots,[t^{1-n}]$, and that the residue pairing with $H^0(\Omega^1(n\infty))=\{p(t)\,dt:\ \deg p\leq n-2\}$ is perfect.
*Hint:* $\mathcal O(-n\infty)(U)=k[t]$ and $\mathcal O(-n\infty)(V)=t^{-n}k[t^{-1}]$. The class $[t^{-j}]$ is the prescription $t^{-j}$ at $0$, and it pairs with $t^i\,dt$ to give $\operatorname{Res}_0(t^{i-j}\,dt)$, which is 1 when $j=i+1$ and 0 otherwise. For $n=2$ this says that $H^1(\mathbb{P}^1,\Omega^1)$ is spanned by the class of $dt/t$.

**Variation 2.** Use the residue test to find the points $P$ of $\widehat G$ at which some function has a double pole at $P$ and no other poles.
*Hint:* At $P=(a,b)$ with $b\neq0$, use $t=x-a$ and write $1/y=\beta_0+\beta_1t+\cdots$. The principal part $c_2t^{-2}+c_1t^{-1}$ pairs with $dx/y$ and $x\,dx/y$ through a $2\times2$ matrix with determinant $-\beta_0^2\neq0$, so it cannot be met unless $c_1=c_2=0$. At the six points over $0,\pm1,\pm i,\infty$, the functions $1/(x-a)$ and $x$ work. These are the **Weierstrass points** of $\widehat G$, which Chapter 15 studies.

**Variation 3.** The plane quintic $y^2z^3=x^5-xz^4$ is Chapter 12's singular model of $\widehat G$, with $\delta=4$ at $P=[0:1:0]$. Cover it by the charts $z\neq0$ and $y\neq0$, as in Proposition 14.13, and find the six basis classes $x^iy^j$ with $-i<j<0$. Show that four of them have orders $1,2,4,7$ at $\infty$ on $\widehat G$, while $x^3/y$ and $x^4/y$ have poles of orders 1 and 3.
*Hint:* At $\infty$, $v(x^iy^j)=-2i-5j$. The orders $1,2,4,7$ are the gaps of $\langle3,5\rangle$ (Section 12.2), so no nonzero combination of the four lies in $\mathcal O_{C,P}$, and they span $\widetilde{\mathcal O}_P/\mathcal O_{C,P}$. The other two survive in $H^1(\widehat G,\mathcal O)$, where they pair with $x\,dx/y$ and with $dx/y$, respectively, to give 2.

**Variation 4.** In characteristic 2, let $X$ be the curve $y^2+y=x^3$ of Theorem 11.8, on which $dx$ has no zeros or poles. Show that the charts $z\neq0$ and $y\neq0$ give $H^1(X,\mathcal O)=k\cdot[x^2/y]$, and that this class pairs with $dx$ to give $\operatorname{Res}_{(0,0)}(x^2\,dx/y)=1$. So Serre duality holds on this curve, as it must for Chapter 15 to reach Theorem 11.8.
*Hint:* In the chart $y\neq0$, the functions $u=x/y$ and $s=1/y$ satisfy $s^2+s=u^3$, the same equation. The only point with $y=0$ is $(0,0)$, where $x$ is a uniformizer and $y=x^3+x^6+\cdots$, so $x^2/y=x^{-1}+x^2+\cdots$.

**Variation 5.** On the node $y^2=x^2(x+1)$, with $t=y/x$, show that $\omega=dx/y=2\,dt/(t^2-1)$ defines a pairing $r\mapsto\operatorname{Res}_{t=1}(r\,\omega)+\operatorname{Res}_{t=-1}(r\,\omega)$ on $K/\mathcal O_{C,P}$, with value 2 on the class $[t]$. So $H^1$ of the node is dual to the differential with poles of Variation 3 of Chapter 9.
*Hint:* A function in $\mathcal O_{C,P}$ takes the same value at $t=\pm1$, where $\omega$ has residues $\pm1$. For $[t]$, use $2t/(t^2-1)=1/(t-1)+1/(t+1)$. These are Rosenlicht's regular differentials on a singular curve (Serre, Chapter IV).

## Reading Map

- **[H, II.1, II.6 and III.1–III.9]:** sheaves and the sheaves $\mathcal L(D)$; derived-functor and Čech cohomology; the arithmetic genus in Ex. III.4.7 and Ex. III.5.3; Serre duality (Corollary III.7.12); and flat families.
- **[V]:** the chapter on Čech cohomology of quasicoherent sheaves, and the chapter on curves that follows it.
- **J.-P. Serre, *Algebraic Groups and Class Fields*,** Chapter II: repartitions, residues, the residue theorem and the duality theorem, in every characteristic. Chapter IV: singular curves, the $\delta$-invariant and Rosenlicht's differentials.
- **O. Forster, *Lectures on Riemann Surfaces*,** §§12–18: cohomology, Riemann–Roch, Serre duality and prescribed principal parts on a compact Riemann surface.
- **[S, §1.5 and Chapter 4]:** adeles, Weil differentials and residues.
- **J. Tate, "Residues of differentials on curves",** *Annales scientifiques de l'École Normale Supérieure* (4) 1 (1968): residues by linear algebra, in every characteristic.
- **Sources.** G. Roch, "Ueber die Anzahl der willkürlichen Constanten in algebraischen Functionen", *Journal für die reine und angewandte Mathematik* 64 (1865). A. Weil, "Zur algebraischen Theorie der algebraischen Funktionen", same journal, 179 (1938). G. Mittag-Leffler, "Sur la représentation analytique des fonctions monogènes uniformes d'une variable indépendante", *Acta Mathematica* 4 (1884).
