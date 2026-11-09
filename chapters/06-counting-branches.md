# Counting Branches: Points as Valuations

## The Problem

> **Problem 6.** Two branches of the node $y^2=x^2(x+1)$ pass through the origin, and only one branch of the cusp $y^2=x^3$. Make "branch" precise, and count the branches through each singular point using the function field. Then show that the function field alone knows every point of a smooth model of the curve, including the points at infinity.

Chapter 5 found that the node and the cusp have the same function field as the line, namely $k(t)$. That seems to make the first half of the problem hopeless: how can one field tell two curves apart? But the problem does not ask the field to work alone. It asks for the branches through a given point, and the point is extra information, because it singles out the functions that vanish there. The question is how the field, together with a point, sees the branches.

The second half asks for more: that the field know the points without being told. In Chapter 5 the field seemed to forget points, since the line, the line minus a point and the projective line all have the field $k(t)$. Yet, as we will see, $k(t)$ remembers the projective line exactly, point at infinity included.

## First Attempts

**Topology.** Over $\mathbb{C}$, take a small ball around the origin and remove the origin itself. What remains of the node falls into two pieces, two punctured discs that met at the origin. What remains of the cusp is connected, because near the origin the cusp is the image of a disc under the homeomorphism $t\mapsto(t^2,t^3)$. Counting pieces gives 2 and 1. But this uses the topology of $\mathbb{C}$ rather than algebra, and it uses the equations rather than the field.

**Tangent lines.** The node has two tangent lines at the origin and the cusp has one (Chapter 4). Is the number of branches just the number of tangent lines? No. The **tacnode** $y^2=x^4+x^5$ has a single tangent line at the origin, $y=0$ counted twice. Yet near the origin it consists of $y=\pm x^2\sqrt{1+x}$: two smooth branches, both tangent to $y=0$. Tangent lines undercount branches.

**Parametrizations.** Each of these three curves is parametrized by the line:

- the node by $(t^2-1,\,t(t^2-1))$;
- the cusp by $(t^2,\,t^3)$;
- the tacnode by $(t^2-1,\,t(t^2-1)^2)$.

Count the parameter values that land on the origin: $t=\pm1$ for the node, $t=0$ for the cusp, and $t=\pm1$ for the tacnode. That is the right answer, but it raises two questions. Why should the count be independent of the parametrization? And what about curves, such as $E$, that have no parametrization at all?

**The clue.** A parameter value $t=a$ is a point of the line, and Chapter 4 attached an algebraic gadget to such a point: the order of vanishing $\operatorname{ord}_a(f)$ of rational functions $f\in k(t)$. So "the parameter values over the origin" can be restated as "the ways of measuring orders of vanishing on the function field for which the coordinate functions $x$ and $y$ both vanish". That restatement uses only the field and the point. The rest of the chapter makes it precise.

## The Ideas We Need

### Valuations and places {-}

**Definition 6.1.** Let $K$ be a field containing $k$. A **discrete valuation** of $K$ over $k$ is a surjective map $v:K^\times\to\mathbb{Z}$ such that, for all nonzero $f$ and $g$:

- $v(fg)=v(f)+v(g)$;
- $v(f+g)\geq\min\bigl(v(f),v(g)\bigr)$ whenever $f+g\neq0$;
- $v(c)=0$ for every nonzero constant $c\in k$.

We set $v(0)=+\infty$. The **valuation ring** $\mathcal O_v=\{f: v(f)\geq0\}$ is a discrete valuation ring, with maximal ideal $\mathfrak m_v=\{f: v(f)>0\}$, and an element $\pi$ with $v(\pi)=1$ is a **uniformizer**. A discrete valuation and its valuation ring determine each other, and either one is called a **place** of $K$.

The main examples are orders of vanishing.

- On $k(t)$, for each $a\in k$: $\operatorname{ord}_a(f)$ is the exponent of $t-a$ in $f$, positive at zeros and negative at poles.
- On $k(t)$, at infinity: $\operatorname{ord}_\infty(g/h)=\deg h-\deg g$. This is $\operatorname{ord}_0$ in the coordinate $s=1/t$. For instance $\operatorname{ord}_\infty(t)=-1$: the function $t$ has a simple pole at infinity.
- On the function field of any curve, at a smooth point $p$: the order $\operatorname{ord}_p$ of Theorem 4.7, whose valuation ring is $\mathcal O_{C,p}$.

For the function field of a curve over an algebraically closed field, the residue field $\mathcal O_v/\mathfrak m_v$ of every place is $k$ itself [S, §1.1]. In that sense every place looks like a point with coordinates in $k$.

> **Look up.** Places of function fields: [S, §1.1]. Discrete valuation rings: [AM, Chapter 9].

### The places of $k(t)$ {-}

**Theorem 6.2.** The places of $k(t)$ over $k$ are exactly $\operatorname{ord}_a$ for $a\in k$, together with $\operatorname{ord}_\infty$. So they correspond to the points of $\mathbb{P}^1$.

*Proof.* Let $v$ be a place, and suppose first that $v(t)\geq0$. Then $k[t]\subseteq\mathcal O_v$. The ideal $\mathfrak m_v\cap k[t]$ is prime, and it is not zero. Otherwise every nonzero polynomial would be a unit in $\mathcal O_v$, so all of $k(t)$ would lie in $\mathcal O_v$, and $v$ would be identically zero rather than surjective.

So $\mathfrak m_v\cap k[t]=(t-a)$ for some $a\in k$, because $k$ is algebraically closed. Every polynomial not divisible by $t-a$ is then a unit in $\mathcal O_v$. Writing $g=(t-a)^nh$ with $h(a)\neq0$ therefore gives $v(g)=n\,v(t-a)$. Since $v$ is surjective, $v(t-a)=1$, and $v=\operatorname{ord}_a$.

If instead $v(t)<0$, then $v(1/t)>0$. The same argument with $s=1/t$ in place of $t$ gives $v=\operatorname{ord}_{s=0}=\operatorname{ord}_\infty$. $\square$

So the field $k(t)$ knows the projective line: its places are the points of $\mathbb{P}^1$, the point at infinity included. It does not know the affine line, because nothing in the field says that $\infty$ should be removed. This gives Chapter 5's observation a precise meaning. The line, the line minus a point and the projective line share one field because the field knows the complete smooth curve, and the others are obtained from it by forgetting some places.

> **Look up.** The places of the rational function field: [S, Theorem 1.2.2].

### Centers and branches {-}

**Definition 6.3.** Let $C$ be an affine curve and $v$ a place of $k(C)$. Suppose every polynomial function on $C$ lies in $\mathcal O_v$. Then the composite $k[C]\to\mathcal O_v\to\mathcal O_v/\mathfrak m_v=k$ is evaluation at a point $p$ of $C$ (Theorem 2.4). We call $p$ the **center** of $v$, and say that $v$ is **centered** at $p$. Equivalently, the local ring $\mathcal O_{C,p}$ lies in $\mathcal O_v$, and $\mathfrak m_v\cap\mathcal O_{C,p}=\mathfrak m_p$. A **branch** of $C$ at $p$ is a place of $k(C)$ centered at $p$.

**Proposition 6.4.** If $p$ is a smooth point of $C$, exactly one place is centered at $p$: the order $\operatorname{ord}_p$, whose valuation ring is $\mathcal O_{C,p}$. If $p$ is singular, then $\mathcal O_{C,p}$ is not a valuation ring, but at least one place, and at most finitely many, is centered at $p$.

*Proof of the smooth case.* Let $v$ be centered at $p$, so that $\mathcal O_{C,p}\subseteq\mathcal O_v\subsetneq k(C)$. A discrete valuation ring is a maximal proper subring of its field of fractions. Indeed, suppose a ring $R$ contains $\mathcal O_{C,p}$ and also some $f=u\pi^{-n}$ with $n\geq1$, where $\pi$ is a uniformizer and $u$ a unit. Then $\pi^{-n}=u^{-1}f$ and hence $\pi^{-1}=\pi^{n-1}\pi^{-n}$ lie in $R$. So every element $u'\pi^m$ lies in $R$, and $R$ is the whole field. Therefore $\mathcal O_v=\mathcal O_{C,p}$ and $v=\operatorname{ord}_p$. The singular case follows from Theorem 6.6 below. $\square$

### Integral closure and normalization {-}

**Definition 6.5.** An element $\varphi\in k(C)$ is **integral** over $k[C]$ if it satisfies an equation
$$\varphi^n+a_{n-1}\varphi^{n-1}+\cdots+a_0=0,\qquad a_i\in k[C].$$
The integral elements form a ring $\widetilde A$, the **integral closure** of $k[C]$ in $k(C)$. The ring $k[C]$ is **integrally closed** (or **normal**) if $\widetilde A=k[C]$.

On the cusp, $t=y/x$ is integral, since $t^2-x=0$. On the node it is integral too, since $t^2-(x+1)=0$. Unique factorization domains such as $k[t]$ are integrally closed, and so are valuation rings.

**Theorem 6.6 (normalization).** Let $C$ be an affine curve and $\widetilde A$ the integral closure of $k[C]$ in $k(C)$.

1. $\widetilde A$ is a finitely generated $k$-algebra, and a finitely generated $k[C]$-module.
2. Every localization of $\widetilde A$ at a maximal ideal is a discrete valuation ring. So $\widetilde A$ is the coordinate ring of a smooth affine curve $\widetilde C$, the **normalization** of $C$, with the same function field.
3. The inclusion $k[C]\subseteq\widetilde A$ gives a morphism $\nu:\widetilde C\to C$. It is surjective with finite fibres, and an isomorphism over the smooth points of $C$.
4. The points of $\widetilde C$ over a point $p\in C$ correspond to the branches of $C$ at $p$: a point $q$ of $\widetilde C$ gives the place $\operatorname{ord}_q$, and every place centered at $p$ arises this way.

Moreover, $\widetilde A$ is the intersection of all the valuation rings of $k(C)$ that contain $k[C]$.

The ingredients are standard commutative algebra. Statement 1 is Emmy Noether's finiteness theorem. Statement 2 holds because an integrally closed Noetherian domain of dimension one is a Dedekind domain. Statement 4 holds because a valuation ring containing $k[C]$ is integrally closed, so it contains $\widetilde A$, and its maximal ideal meets $\widetilde A$ in a maximal ideal.

> **Look up.** Integral dependence and valuation rings: [AM, Chapter 5, especially Proposition 5.18 and Corollary 5.22]. Dedekind domains: [AM, Theorem 9.3]. Finiteness of the integral closure, and normalization: [H, I.3, Theorem 3.9A, and Ex. I.3.17].

## The Solution

### Branches of the node and the cusp {-}

For both curves the normalization is the line. The ring $k[t]$ lies in $k(C)=k(t)$, it is integral over $k[C]$ (by $t^2=x+1$ for the node and $t^2=x$ for the cusp), and it is integrally closed. So $\widetilde A=k[t]$, and the morphism $\nu:\mathbb{A}^1\to C$ is Chapter 1's parametrization. By Theorem 6.6, the branches at the origin are the places $\operatorname{ord}_a$ of $k(t)$ centered there.

Such a place is centered at the origin exactly when both coordinate functions vanish, that is, when $\operatorname{ord}_a(x)>0$ and $\operatorname{ord}_a(y)>0$. The place $\operatorname{ord}_\infty$ never qualifies, because $x$ has a pole there.

- On the node, $x=(t-1)(t+1)$ and $y=t(t-1)(t+1)$ both vanish exactly at $t=\pm1$, so there are **two branches**.
- On the cusp, $x=t^2$ and $y=t^3$ both vanish exactly at $t=0$, so there is **one branch**.

**Theorem 6.7.** The node has two branches at the origin, and the cusp has one. The number of branches at a point is a local invariant, so, once again, the node and the cusp are not isomorphic near the origin.

*Proof.* The count is above. For invariance, suppose $\mathcal O_{C,p}\cong\mathcal O_{D,q}$ as $k$-algebras. The isomorphism extends to the fields of fractions, $k(C)\cong k(D)$, and it carries the valuation rings containing $\mathcal O_{C,p}$ to those containing $\mathcal O_{D,q}$. $\square$

Valuations also see the geometry of each branch. Here are some orders of vanishing on the node.

| Function | Along $t=1$ | Along $t=-1$ |
|---|---|---|
| $x$ | 1 | 1 |
| $y$ | 1 | 1 |
| $y-x=(t-1)^2(t+1)$ | 2 | 1 |
| $y+x=(t-1)(t+1)^2$ | 1 | 2 |

So each branch has its own tangent line, the line that vanishes to higher order along it: the branch at $t=1$ is tangent to $y=x$, and the branch at $t=-1$ to $y=-x$.

On the cusp, $v(x)=2$ and $v(y)=3$ along the single branch. Every line $ax+by=0$ through the origin vanishes to order 2 along it, except the tangent $y=0$, which vanishes to order 3. The tacnode's two branches share the tangent $y=0$ (Variation 1), which is why branches are a finer invariant than tangent lines.

In each case the multiplicity of Chapter 4 is the sum, over the branches, of the lowest order of vanishing of a function in $\mathfrak m_p$ along that branch: $1+1=2$ for the node and $2$ for the cusp. Chapter 12 uses this.

### A semigroup at each branch {-}

Chapter 4's Variation 4 asked for an invariant separating the cusp $y^2=x^3$ from the higher cusp $y^2=x^5$. Both have a single branch at the origin. Let $v$ be its valuation, and collect the values
$$S=\{v(f): f\in\mathcal O_{C,p},\ f\neq0\}.$$
Since $v(fg)=v(f)+v(g)$, the set $S$ is closed under addition: it is a **semigroup**. By the argument of Theorem 6.7 it is a local invariant.

With the parametrizations $(t^2,t^3)$ and $(t^2,t^5)$, the functions on these curves are the polynomials in $x=t^2$ and in $y=t^3$ or $y=t^5$. So
$$S(y^2=x^3)=\{0,2,3,4,5,\dots\},\qquad S(y^2=x^5)=\{0,2,4,5,6,\dots\}.$$
The missing values, or **gaps**, are $\{1\}$ and $\{1,3\}$. So the two cusps are not isomorphic near the origin.

The number of gaps measures how much the singular point has lost. It is the dimension of $\widetilde A/k[C]$: the space $k[t]/k[t^2,t^3]$ has basis $t$, and $k[t]/k[t^2,t^5]$ has basis $t,t^3$. Chapter 12 calls this number the **$\delta$-invariant**, and shows that it is exactly what a singular point subtracts from the genus.

### Points at infinity {-}

Now for the second half of the problem: does the function field know every point of a smooth model, including the points at infinity?

On an affine curve, some places have no center, because some coordinate function has a pole there. The place $\operatorname{ord}_\infty$ of $k(t)$ has no center on the affine line, for instance. Such places should be centered at infinity, and on a projective curve they are.

**Theorem 6.8.** Let $\overline C$ be a projective plane curve with function field $K$. Every place $v$ of $K$ has exactly one center on $\overline C$: a point $p$ with $\mathcal O_{\overline C,p}\subseteq\mathcal O_v$ and $\mathfrak m_v\cap\mathcal O_{\overline C,p}=\mathfrak m_p$.

*Proof.* Let $x$ and $y$ be the coordinates in the chart $z=1$. If $v(x)\geq0$ and $v(y)\geq0$, then $v$ has a center in that chart, by Definition 6.3. Otherwise one of the coordinates has the most negative value; say $v(x)<0$ and $v(x)\leq v(y)$. In the chart $x\neq0$ the coordinates are $y/x$ and $z/x=1/x$, and both have value at least 0. So $v$ has a center in that chart, at a point where $1/x$ vanishes, which is a point at infinity. The case $v(y)<0$ with $v(y)<v(x)$ is the same, using the chart $y\neq0$.

For uniqueness, suppose $p\neq q$ were both centers. Choose a linear form $L$ vanishing at $p$ but not at $q$, and a linear form $M$ vanishing at neither. The rational function $L/M$ lies in $\mathfrak m_p\subseteq\mathfrak m_v$. But it is a unit at $q$, hence a unit in $\mathcal O_v$, which is a contradiction. $\square$

This is the algebraic form of Chapter 3's remark that projective curves are complete. Nothing can escape to infinity, because every place has a center.

**Corollary 6.9.** If the projective curve $\overline C$ is smooth, then $p\mapsto\operatorname{ord}_p$ is a bijection between the points of $\overline C$ and the places of its function field. In general, the places correspond to the smooth points of $\overline C$ together with the branches at its singular points.

*Proof.* Combine Theorem 6.8 with Proposition 6.4. $\square$

So the function field alone knows every point of a smooth projective curve, including the points at infinity. Here is what it says about our cast.

- **The circle.** Over $\mathbb{C}$ its function field is $k(t)$, whose places are the points of $\mathbb{P}^1$. The place $t=\infty$ is centered at $P_0=(-1,0)$. The places $t=\pm i$ are centered at infinity. There $x=\frac{1-t^2}{1+t^2}$ and $y=\frac{2t}{1+t^2}$ both have simple poles, while $y/x=\frac{2t}{1-t^2}$ takes the value $\pm i$. So the centers are $[1:\pm i:0]$, the circular points $I$ and $J$ of Chapter 3. The field knew about the circular points all along.
- **$E$.** The projective closure $y^2z=x^3-xz^2$ is smooth (Variation 1 of Chapter 4 and Variation 1 of Chapter 3), so the places of $k(E)$ are exactly its points. The point at infinity $[0:1:0]$ is the center of the unique place where $x$ has a pole. There the equation $y^2=x^3-x$ forces $2v(y)=3v(x)$, so $v(x)=-2$ and $v(y)=-3$.
- **$G$.** The closure of $y^2=x^5-x$ is singular at its point at infinity (Variation 1 of Chapter 3), so we ask how many branches it has there. Put $u=1/x$ and $w=y/x^3$. Then
$$w^2=\frac{y^2}{x^6}=\frac{x^5-x}{x^6}=u-u^5,$$
and the curve $w^2=u-u^5$ is smooth at $(0,0)$, because its equation has the linear term $u$. Every place where $x$ has a pole has $v(u)>0$, and so it is centered at the only point $(0,0)$ of this new curve with $u=0$. By Proposition 6.4 there is exactly one such place: $G$ has **one branch at infinity**, with $v(x)=-2$ and $v(y)=-5$. The smooth model that Chapter 7 constructs will therefore have exactly one point at infinity. In fact, the curve $w^2=u-u^5$ is the extra chart it needs.

The table summarizes the places of our cast.

| Curve | Function field | Its places correspond to |
|---|---|---|
| line, projective line | $k(t)$ | the points of $\mathbb{P}^1$ |
| circle | $k(t)$ | $\mathbb{P}^1$: $t=\infty$ gives $P_0$, and $t=\pm i$ give $I$ and $J$ |
| node | $k(t)$ | $\mathbb{P}^1$: $t=\pm1$ give the two branches at the origin |
| cusp | $k(t)$ | $\mathbb{P}^1$: $t=0$ gives the one branch at the origin |
| $E$ | $k(x,y)$ | the points of the smooth projective cubic |
| $G$ | $k(x,y)$ | the affine points, and one branch at infinity |

## What Just Happened

- **A place measures orders of vanishing.** It is a discrete valuation of the function field. At a smooth point the local ring is already the valuation ring of a place.
- **The field $k(t)$ has exactly the places of $\mathbb{P}^1$.** That includes the place at infinity, so the field knows the projective line, not the affine one.
- **Branches are places.** The branches at a point are the places centered there, which are also the points of the normalization over it. The node has two at the origin, the cusp one and the tacnode two. The number of branches is a local invariant, and each branch carries its own tangent line and its own semigroup of values.
- **Normalization is integral closure.** The integral closure of the coordinate ring is the coordinate ring of a smooth curve. For the node and the cusp it is the line, and the normalization map is the parametrization.
- **Projective curves are complete.** Every place has a center on a projective curve, so on a smooth projective curve the points are exactly the places. The field knows the circle's circular points, $E$'s point at infinity, and the single branch of $G$ at infinity.

## Threads

**What is a curve?** A smooth projective curve is, as a set, the set of places of its function field. Dedekind and Weber took this as their definition of the Riemann surface of an algebraic function field in 1882. Chapter 7 turns this set into a curve. It supplies a topology, the local rings (which are the valuation rings), and the functions regular on each open set (intersections of valuation rings). That last piece of structure is our first sheaf. The new chart $w^2=u-u^5$ for $G$ is a preview.

**When are two curves the same?** A function field determines its set of places, together with the local ring at each one. Chapter 7 shows that this data determines a smooth projective curve up to isomorphism, so isomorphic function fields give isomorphic smooth projective curves.

**Branches and the genus.** Chapter 12 computes the genus of a plane curve by subtracting the $\delta$-invariants of its singular points from $\tfrac{(d-1)(d-2)}{2}$. For a singular point with one branch, $\delta$ is the number of gaps in the semigroup. Over $\mathbb{C}$, branches can also be described by convergent power series, the Puiseux expansions of Chapter 12, and these match the places exactly.

**Divisors.** Zeros and poles live at places. Chapter 8 defines the divisor of a function $f$ as the formal sum $\sum_v v(f)\cdot v$ over all places. Variation 4 below shows that on $\mathbb{P}^1$ the zeros and poles of a function balance.

**Ramification.** Variation 5 counts the places of $E$ lying over each point of the $x$-line. There are two over most points and one over each of four special points. Chapter 8 calls this ramification, and Chapter 11 turns the count into the genus.

## Variations

These are optional. A hint follows each one.

**Variation 1.** Find the normalization of the tacnode $y^2=x^4+x^5$, and its branches at the origin. Show that both branches are tangent to $y=0$, and compute $v(x)$ and $v(y)$ along each.
*Hint:* The function $t=y/x^2$ satisfies $t^2=1+x$, so $x=t^2-1$ and $y=t(t^2-1)^2$. The branches are at $t=\pm1$, and along each $v(x)=1$ and $v(y)=2$.

**Variation 2.** Over $\mathbb{R}$, which is not algebraically closed, show that the places of $\mathbb{R}(t)$ correspond to the real numbers, to $\infty$, and to pairs of complex-conjugate numbers. The last kind come from irreducible quadratics $t^2+bt+c$ and have residue field $\mathbb{C}$. Deduce that over $\mathbb{R}$ the circle has a single place at infinity, with residue field $\mathbb{C}$, which is the conjugate pair $I,J$.
*Hint:* Repeat the proof of Theorem 6.2. Now the prime ideal $\mathfrak m_v\cap\mathbb{R}[t]$ is generated by an irreducible polynomial of degree 1 or 2. This is Chapter 2's twist once more: the circle and the hyperbola differ over $\mathbb{R}$ in their places at infinity.

**Variation 3.** For $y^2=x^5$, show that the normalization is the line, with $x=t^2$ and $y=t^5$, and that $k[t]/k[t^2,t^5]$ has basis $t,t^3$. Do the same for $y^3=x^4$, parametrized by $(t^3,t^4)$. What is its semigroup, and how many gaps does it have?
*Hint:* For $y^3=x^4$, try $t=y/x$. The semigroup is generated by 3 and 4, and the gaps are 1, 2 and 5.

**Variation 4.** Show that a rational function $f\in k(t)$ with $v(f)\geq0$ at every place $v$ of $k(t)$ is constant. Then show that $\sum_vv(f)=0$ for every nonzero $f\in k(t)$, the sum being over all places.
*Hint:* No poles at the places $\operatorname{ord}_a$ means that $f$ is a polynomial, and $\operatorname{ord}_\infty(f)\geq0$ means its degree is at most 0. For the sum, write $f=c\prod(t-a_i)^{n_i}$ and compare $\sum n_i$ with $\operatorname{ord}_\infty(f)$. Zeros and poles balance; that is the theme of Chapter 8.

**Variation 5.** Count the places of $k(E)$, for $E:\ y^2=x^3-x$, lying over each point of the $x$-line. Show that there are two over each $a$ with $a^3-a\neq0$, namely the points $(a,\pm\sqrt{a^3-a})$, and one over each of $a=0,1,-1$ and over $\infty$.
*Hint:* Over a finite $a$, the places are centered at the points of $E$ with $x=a$. Over $\infty$, use the computation of Section 6.4. Chapter 11's Riemann–Hurwitz formula turns this count into the genus: $2g-2=2\cdot(-2)+4$, so $g=1$.

## Reading Map

- **[S, §1.1–1.2]:** places of algebraic function fields, and Theorem 1.2.2 on the places of the rational function field.
- **[AM, Chapters 5 and 9]:** integral dependence, valuation rings and their relationship (Corollary 5.22), discrete valuation rings and Dedekind domains.
- **[H, I.6]:** the set of discrete valuation rings of a function field of one variable, made into an abstract curve. That is the subject of our Chapter 7.
- **[H, Ex. I.3.17]:** normal varieties and normalization.
- **[F, Chapter 7]:** rational maps of curves and nonsingular models, whose points are discrete valuation rings of the function field.
- **C. Chevalley, *Introduction to the Theory of Algebraic Functions of One Variable* (1951):** the valuation-theoretic approach in its purest form.
- **R. Dedekind and H. Weber, "Theorie der algebraischen Functionen einer Veränderlichen",** *Journal für die reine und angewandte Mathematik* 92 (1882). John Stillwell's English translation appeared in 2012.
- **E. Brieskorn and H. Knörrer, *Plane Algebraic Curves*, and C. T. C. Wall, *Singular Points of Plane Curves*:** branches over $\mathbb{C}$ and Puiseux expansions.
