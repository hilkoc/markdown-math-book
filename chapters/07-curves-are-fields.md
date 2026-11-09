# Curves Are Fields

## The Problem

> **Problem 7.** The affine curve $G:\ y^2=x^5-x$ is smooth, but its closure in $\mathbb{P}^2$ has a bad singularity at infinity. Find a smooth projective curve with the same function field, and show that it is unique up to isomorphism.

The pieces are already on the table. Variation 1 of Chapter 4 showed that the affine curve $G$ is smooth. Variation 1 of Chapter 3 showed that its closure in $\mathbb{P}^2$ has a triple point at $[0:1:0]$. Chapter 6 found that the function field of $G$ has a single place at infinity. It also found that the substitution $u=1/x$, $w=y/x^3$ produces a smooth curve
$$G':\ w^2=u-u^5$$
whose point $(0,0)$ is the center of that place. So we have a smooth affine curve and a smooth chart at infinity. The problem is to assemble them into a single object, and to say what kind of object it is. Then we must show that no other smooth projective curve has the same field.

This is the main theorem of Part II in miniature. Smooth projective curves and function fields of one variable turn out to be the same thing, which is why this chapter is called "Curves Are Fields".

## First Attempts

**The closure in the plane.** Homogenizing gives $y^2z^3=x^5-xz^4$. In the chart $y=1$ this becomes $z^3=x^5-xz^4$, whose lowest-degree term is $z^3$. So $[0:1:0]$ is a point of multiplicity 3.

**Other plane models.** The function field $k(G)=k(x,y)$ has other generators, and each choice gives another plane model. Try $s=y/x$. Then $x^2s^2=x^5-x$, so $xs^2=x^4-1$, a quartic whose closure is $xs^2z=x^4-z^4$. Its affine part is smooth. At infinity, setting $z=0$ leaves $x^4=0$, so the only point there is $[0:1:0]$. In the chart $s=1$ the equation becomes $xz=x^4-z^4$, whose lowest-degree term is $xz$: a node. We have traded a triple point for a node, which is progress, but the curve is still singular.

Every plane model we try seems to have a singular point somewhere, and Chapter 10 explains why this is inevitable. A smooth plane curve of degree $d$ has genus $\tfrac{(d-1)(d-2)}{2}$, which takes the values $0,0,1,3,6,10,\dots$ and never the value 2. And $G$ has genus 2, as Chapter 10 will show. So no smooth model of $G$ lives in the plane at all: we must leave $\mathbb{P}^2$.

**Normalize.** Chapter 6's normalization repairs the singularities of affine curves. The closure is not affine, but it is covered by affine charts, so we could normalize each chart and fit the results together.

**The pieces fit.** In fact we already have the normalized charts: $G$ itself, and $G'$. Removing the point $(0,0)$ from each, the formulas
$$(x,y)\mapsto(u,w)=\Bigl(\frac1x,\ \frac y{x^3}\Bigr),\qquad (u,w)\mapsto(x,y)=\Bigl(\frac1u,\ \frac w{u^3}\Bigr)$$
are inverse isomorphisms between $G\setminus\{(0,0)\}$ and $G'\setminus\{(0,0)\}$. Between them, the two curves contain one point for every place of $k(G)$. So the answer should be "$G$ and $G'$, glued together along these formulas".

But the glued object is not obviously inside any affine or projective space. To work with it at all, we must say what a regular function on it is. That is what sheaves are for.

## The Ideas We Need

### Gluing, and the simplest example {-}

The projective line is already a glued object. Take two copies of the line, with coordinates $t$ and $s$. Identify the point $t\neq0$ of the first copy with the point $s=1/t$ of the second. The result has one point for each $t\in k$ and one more, $s=0$, which is $t=\infty$. These are exactly the places of $k(t)$ (Theorem 6.2).

What is a regular function on the glued space? It should be a function that is regular on each copy: a polynomial in $t$ that is also a polynomial in $s=1/t$. Only the constants qualify. More generally, a regular function on an open part of the glued space cannot always be written as one formula in one chart. It is a compatible collection of local descriptions. The principle "regular means regular near every point" is the idea behind sheaves.

### Sheaves of functions {-}

**Definition 7.1.** Let $X$ be a topological space. A **sheaf of functions** $\mathcal O$ on $X$ assigns to each open set $U$ a ring $\mathcal O(U)$ of functions $U\to k$, called the **regular functions** on $U$, containing the constants. Two rules must hold.

1. **Restriction.** If $f\in\mathcal O(U)$ and $V\subseteq U$ is open, then $f\vert_V\in\mathcal O(V)$.
2. **Locality.** If $U=\bigcup U_i$ is an open cover and $f:U\to k$ is a function with $f\vert_{U_i}\in\mathcal O(U_i)$ for every $i$, then $f\in\mathcal O(U)$.

A space with a sheaf of functions is a **ringed space**. A **morphism** $\varphi:(X,\mathcal O_X)\to(Y,\mathcal O_Y)$ is a continuous map that pulls regular functions back to regular functions: if $g\in\mathcal O_Y(V)$, then $g\circ\varphi\in\mathcal O_X\bigl(\varphi^{-1}V\bigr)$.

**Example.** Let $C$ be an affine curve with the Zariski topology, whose closed sets are $C$ itself and its finite subsets. For each open $U$, let $\mathcal O(U)=\bigcap_{p\in U}\mathcal O_{C,p}$ inside $k(C)$, the rational functions defined at every point of $U$. This is a sheaf of functions, and its regular functions on the whole curve are the polynomial functions: $\mathcal O(C)=k[C]$. Projective curves get their sheaves in the same way, from the local rings in their affine charts.

The locality rule is what makes gluing possible. On $G$ and $G'$ glued together, we will declare a function regular if it is regular on the part lying in $G$ and on the part lying in $G'$. Locality guarantees that this is consistent.

In this chapter every sheaf is a sheaf of functions sitting inside a function field. Chapter 14 needs more general sheaves, assigning abelian groups to open sets, with restriction maps and a gluing rule, for differentials and for cohomology.

> **Look up.** Regular functions, defined locally: [H, I.3, Theorem 3.2(a)]. Sheaves in general: [H, II.1]; Vakil [V] treats them at length.

### Abstract curves {-}

**Definition 7.2.** A **smooth curve** is a ringed space $(X,\mathcal O_X)$ that can be covered by finitely many open sets, each of which, with the restricted sheaf, is isomorphic to a smooth affine curve with its regular functions.

The charts overlap in dense open sets, so they all have the same field of rational functions. This field is the function field $k(X)$. Smooth affine curves and smooth projective curves are examples of smooth curves. So is $G$ glued to $G'$, once we check that the gluing respects regular functions, which the formulas above do.

### The curve of a function field {-}

A **function field of one variable** over $k$ is a finitely generated field extension $K$ of $k$ of transcendence degree 1. By Chapter 6, its places are candidates for the points of a curve. Here is the curve.

**Definition 7.3.** Let $K$ be a function field of one variable over $k$. Its **abstract curve** $C_K$ is the following ringed space.

- Its points are the places of $K$.
- Its open sets are the empty set and the complements of finite sets.
- Its regular functions on an open set $U$ are $\mathcal O(U)=\bigcap_{P\in U}\mathcal O_P$. An element $f\in\mathcal O(U)$ is viewed as the function $P\mapsto f(P)$, the class of $f$ in $\mathcal O_P/\mathfrak m_P=k$.

For this to make sense, a rational function should have only finitely many zeros and poles.

**Lemma 7.4.** Each nonzero $f\in K$ has only finitely many zeros and poles.

*Sketch.* If $f$ is constant there is nothing to prove. Otherwise, let $A$ be the integral closure of $k[f]$ in $K$, a Dedekind domain. The places where $f$ has a zero correspond to the maximal ideals of $A$ that contain $f$, and there are only finitely many, because the ideal $(f)$ factors into finitely many prime ideals. The poles of $f$ are the zeros of $1/f$. $\square$

**Theorem 7.5 (two charts suffice).** Choose any $x\in K\setminus k$, and let $A$ and $B$ be the integral closures of $k[x]$ and $k[1/x]$ in $K$. Then:

- $A$ and $B$ are the coordinate rings of smooth affine curves $U$ and $V$;
- the points of $U$ are the places with $v(x)\geq0$, and the points of $V$ are those with $v(x)\leq0$;
- the local rings of $U$ and $V$ are the corresponding valuation rings;
- $C_K=U\cup V$, and with these two charts $C_K$ is a smooth curve with function field $K$.

*Sketch.* As in Theorem 6.6, $A$ is a finitely generated $k$-algebra whose localizations at maximal ideals are discrete valuation rings, so $A=k[U]$ for a smooth affine curve $U$. A valuation ring is integrally closed, so it contains $A$ exactly when it contains $k[x]$, that is, when $v(x)\geq0$. The same argument applies to $B$ with $1/x$ in place of $x$. Finally, every place has $v(x)\geq0$ or $v(1/x)\geq0$. $\square$

> **Look up.** [H, I.6, Lemma 6.5 and the construction of $C_K$]; [S, §1.3].

### Extending maps from smooth curves {-}

Smooth curves have a property that singular curves and higher-dimensional spaces lack: maps into projective space can always be extended over missing points.

**Proposition 7.6 (extension).** Let $X$ be a smooth curve, $p$ a point of $X$, and $Y\subseteq\mathbb{P}^n$ a projective curve. Then every morphism $\varphi:X\setminus\{p\}\to Y$ extends uniquely to a morphism $X\to Y$.

*Proof.* Near $p$, write $\varphi=[f_0:\dots:f_n]$ with $f_i\in k(X)$, not all zero. Let $m=\min_iv_p(f_i)$, and let $t$ be a uniformizer at $p$. Then
$$\varphi=[t^{-m}f_0:\dots:t^{-m}f_n],$$
and now every $t^{-m}f_i$ is regular at $p$, while at least one of them, say $t^{-m}f_j$, is nonzero at $p$. So this formula assigns a point $\varphi(p)$ of $\mathbb{P}^n$. In the chart $X_j\neq0$, the coordinates $f_i/f_j$ have nonnegative order at $p$, so the extended map is regular near $p$. The point $\varphi(p)$ lies on $Y$ because $Y$ is closed and contains the images of the points near $p$. The extension is unique because any extension is given near $p$ by the same quotients $f_i/f_j$. $\square$

Smoothness is essential. On the node, the slope map $(x,y)\mapsto[x:y]$ is a morphism to $\mathbb{P}^1$ away from the origin. But the slope $y/x=t$ tends to $1$ along one branch and to $-1$ along the other, so no single value at the origin will do. After normalization the two branches are separate points, and the map extends.

Dimension one is essential too. On the plane, the map $(x,y)\mapsto[x:y]$ is a morphism away from the origin, yet it has no extension there, since lines of every slope pass through the origin. The way around this, replacing the origin by the set of all those directions, is called blowing up.

> **Look up.** [H, I.6, Proposition 6.8]; [Si, II.2, Proposition 2.1].

### Smooth projective models {-}

**Theorem 7.7.** For every function field $K$ of one variable over $k$, the abstract curve $C_K$ is isomorphic to a smooth projective curve.

The proof in [H, I.6, Theorem 6.9] embeds the charts of Theorem 7.5 and uses the extension property. Chapter 15 gives a second proof, using the Riemann–Roch theorem. For a large enough $n$, the functions whose only poles are at one fixed point, of order at most $n$, embed the curve in projective space. For $G$ we will find such an embedding by hand.

**Theorem 7.8 (curves are fields).** The rule $X\mapsto k(X)$ gives an arrow-reversing equivalence between

- smooth projective curves over $k$, with nonconstant morphisms, and
- function fields of one variable over $k$, with $k$-embeddings.

In detail:

1. every function field of one variable is $k(X)$ for some smooth projective curve $X$;
2. every $k$-embedding $k(Y)\hookrightarrow k(X)$ is $\varphi^*$ for a unique nonconstant morphism $\varphi:X\to Y$.

*Proof.* Statement 1 is Theorem 7.7. For statement 2, the embedding is $\varphi^*$ for a dominant rational map $\varphi:X\dashrightarrow Y$, by the field dictionary of Theorem 5.3. That rational map is a morphism away from finitely many points, and Proposition 7.6 extends it over each of them, uniquely. $\square$

**Corollary 7.9.**

1. Two smooth projective curves with isomorphic function fields are isomorphic. So every curve is birationally equivalent to exactly one smooth projective curve, up to isomorphism: its **smooth projective model**.
2. A nonconstant morphism between smooth projective curves is surjective.
3. The only functions regular on all of a smooth projective curve are the constants.
4. The points of the smooth projective model of a curve correspond to the places of its function field, and the local rings are the valuation rings.

*Proof.*

1. Apply Theorem 7.8 to an isomorphism of function fields and to its inverse. The two morphisms compose to morphisms that induce the identity on function fields, so they are identities, by uniqueness.
2. Let $\varphi:X\to Y$ be nonconstant and $q\in Y$. Some place of $k(X)$ lies over the place $\operatorname{ord}_q$ of the subfield $k(Y)$ [S, Proposition 3.1.7]. Its center $p\in X$ then satisfies $\varphi(p)=q$.
3. A nonconstant regular function would be a nonconstant morphism $X\to\mathbb{A}^1\subset\mathbb{P}^1$. By statement 2 it would be surjective onto $\mathbb{P}^1$, yet it never takes the value $\infty$.
4. This is Corollary 6.9, whose proof works for curves in any projective space. $\square$

> **Look up.** [H, I.6, Theorem 6.9 and Corollaries 6.10–6.12]; [Si, II.2, Theorem 2.4].

## The Solution

### Two charts for $G$ {-}

Take the function $x\in k(G)$ and follow Theorem 7.5.

- **The chart $U$.** The integral closure of $k[x]$ in $k(G)$ is $k[G]=k[x,y]/(y^2-x^5+x)$. The function $y$ is integral over $k[x]$, because $y^2=x^5-x$. And $k[G]$ is integrally closed, because $G$ is smooth, so its local rings are discrete valuation rings. So $U=G$.
- **The chart $V$.** Put $u=1/x$. The function $w=y/x^3$ is integral over $k[u]$, because $w^2=u-u^5$. The curve $G':\ w^2=u-u^5$ is smooth: its gradient $(5u^4-1,\,2w)$ vanishes only where $w=0$ and $u^4=\tfrac15$, and there $w^2-u+u^5=u(u^4-1)\neq0$. So $k[G']$ is integrally closed, it is the integral closure of $k[u]$, and $V=G'$.
- **The overlap.** The places with $v(x)=0$ are the points of $G$ with $x\neq0$, which correspond to the points of $G'$ with $u\neq0$ by the formulas of Section 7.2.
- **What $G'$ adds.** The only point of $G'$ with $u=0$ is $(0,0)$, which is the single point at infinity found in Chapter 6.

So the smooth curve $\widehat G$, obtained by gluing $G$ and $G'$ along the overlap, is the abstract curve $C_{k(G)}$. Its points are the points of $G$ together with one more point, $\infty$.

### Into projective space {-}

**Theorem 7.10.** Define a map $\widehat G\to\mathbb{P}^4$ by
$$[1:x:x^2:x^3:y]\ \text{ on } G,\qquad [u^3:u^2:u:1:w]\ \text{ on } G'.$$
It is well defined, and it is an isomorphism of $\widehat G$ onto a smooth closed curve in $\mathbb{P}^4$. So $\widehat G$ is a smooth projective curve with function field $k(G)$.

*Proof.* On the overlap, multiplying the second formula by $x^3=u^{-3}$ gives the first, so the two formulas define the same point.

On $G$, the map lands in the chart $X_0\neq0$, with affine coordinates $(x,x^2,x^3,y)$. It is an isomorphism onto its image there, whose inverse simply reads off the first and last coordinates. On $G'$, the map lands in the chart $X_3\neq0$, with affine coordinates $(u^3,u^2,u,w)$. Again it is an isomorphism onto its image, whose inverse reads off the third and fourth coordinates.

The point $\infty$, which is $(u,w)=(0,0)$, goes to $[0:0:0:1:0]$. That point is not in the image of $G$, where $X_0\neq0$, so the map is injective.

Finally, the image is closed. The closure of the image is a projective curve with function field $k(G)$, and by Theorem 6.8 and Proposition 6.4, each of its points is the center of some place of $k(G)$. But every place is a point of $\widehat G$, whose image lies in the image already. $\square$

The hyperplane $X_0=0$ meets the curve only at $\infty$, where $x^3$ has a pole of order 6, so the curve has degree 6 in $\mathbb{P}^4$. Chapter 8 explains why the pole order gives the degree.

Why these five functions? The functions $1,x,x^2,x^3,y$ are exactly the functions on $\widehat G$ whose only pole is at $\infty$, of order at most 6 (Variation 5). Chapter 15 explains why such functions always give embeddings once the order is large enough.

### Uniqueness {-}

By Corollary 7.9, every smooth projective curve with function field $k(G)$ is isomorphic to $\widehat G$. The plane model $xs^2z=x^4-z^4$ of Section 7.2 shows what this means in practice. Its affine part $xs^2=x^4-1$ contains every point of $G$ with $x\neq0$, but it misses two points of $\widehat G$: the point $(0,0)$ and the point $\infty$. On that model both have gone to its node at infinity. To check this, put $s=y/x$:

- at $(0,0)\in G$ the function $x$ vanishes to order 2 and $y$ to order 1, so $v(s)=-1$;
- at $\infty$ we have $v(s)=v(y)-v(x)=-5+2=-3$.

So $s$ has a pole at both points, and both are centered at the model's only point at infinity, $[0:1:0]$. The node's two branches are the points $(0,0)$ and $\infty$ of $\widehat G$, pinched together. Normalizing the model pulls them apart again and gives back $\widehat G$, as uniqueness says it must.

### The cast's smooth models {-}

| Curve | Smooth projective model | Comment |
|---|---|---|
| line, parabola, circle, node, cusp | $\mathbb{P}^1$ | they are rational (Chapter 5) |
| $E:\ y^2=x^3-x$ | its closure in $\mathbb{P}^2$ | one point at infinity, $[0:1:0]$ |
| Fermat cubic $x^3+y^3=1$ | its closure in $\mathbb{P}^2$ | three points at infinity |
| $G:\ y^2=x^5-x$ | $\widehat G\subset\mathbb{P}^4$ | one point at infinity; no smooth plane model |
| lemniscate curve $y^2=1-x^4$ | two charts (Variation 1) | two points at infinity |
| Fermat quartic $x^4+y^4=1$ | its closure in $\mathbb{P}^2$ | four points at infinity |

## What Just Happened

- **To repair $G$ at infinity, we left the plane.** No smooth plane model exists. Instead we glued two smooth affine charts, $G$ and $G'$, and then embedded the result in $\mathbb{P}^4$ using the functions $1,x,x^2,x^3,y$.
- **Gluing needs sheaves.** A regular function on a glued space is one that is regular near every point. That rule is a sheaf of functions, and the curve of a function field carries our first sheaf: $\mathcal O(U)=\bigcap_{P\in U}\mathcal O_P$.
- **The curve of a function field.** Its points are the places, its local rings are the valuation rings, and two affine charts always cover it: the integral closures of $k[x]$ and $k[1/x]$.
- **Maps from smooth curves extend.** Valuations make limits exist, so a map from a smooth curve into projective space extends over any missing point. This gives the main theorem of Part II: smooth projective curves are the same thing as function fields of one variable. Each curve has exactly one smooth projective model, and the only functions regular on all of a smooth projective curve are the constants.

## Threads

**What is a curve?** For smooth projective curves we now have a final answer: a curve is its function field, or equivalently the space of places of that field together with its sheaf of functions. The affine and singular curves of Part I are pieces and pictures of these. Chapter 13 generalizes the construction. A scheme is a space with a sheaf of rings that looks locally like a space built from a ring, and the curve of a function field is the prototype.

**When are two curves the same?** For smooth projective curves, exactly when their function fields are isomorphic. So classifying curves means classifying function fields, and Chapter 17 does this for our cast. Chapter 2's promise is also nearly kept. Chapter 8 shows that, in characteristic 0, a bijective morphism has degree 1, so it is birational and hence, by Corollary 7.9, an isomorphism between smooth projective curves.

**Which curves can be parametrized?** Exactly those whose smooth projective model is $\mathbb{P}^1$.

**The genus.** Chapter 10 shows that $\widehat G$ has genus 2 and that no smooth plane curve has genus 2. That is why $G$ had to leave the plane.

**Sheaves and Riemann–Roch.** Chapter 14 uses sheaves of a more general kind, built from divisors and from differentials, and their cohomology. Chapter 15 counts functions with prescribed poles. Variation 5 gives a preview: on $\widehat G$, the functions whose only pole is at $\infty$ can have every pole order except 1 and 3.

## Variations

These are optional. A hint follows each one.

**Variation 1.** Find the smooth projective model of the lemniscate curve $y^2=1-x^4$. How many points does it have at infinity? Compare with its closure in $\mathbb{P}^2$.
*Hint:* Put $u=1/x$ and $w=y/x^2$, so that $w^2=u^4-1$. Over $u=0$ there are two smooth points, $w=\pm i$. The closure $y^2z^2=z^4-x^4$ has a single singular point at infinity, $[0:1:0]$, with two branches. Chapters 9 and 16 return to this curve.

**Variation 2.** Let $f$ be a squarefree polynomial of degree $2g+1$ or $2g+2$. Show that $y^2=f(x)$ and $w^2=u^{2g+2}f(1/u)$, glued by $u=1/x$ and $w=y/x^{g+1}$, form a smooth curve. Show that it has one point over $u=0$ if $\deg f$ is odd, and two if $\deg f$ is even.
*Hint:* If $\deg f=2g+2$, then $u^{2g+2}f(1/u)$ has a nonzero constant term, the leading coefficient of $f$. If $\deg f=2g+1$, it has a simple zero at $u=0$. These are the **hyperelliptic curves** of Chapter 11.

**Variation 3.** Show that the slope map $(x,y)\mapsto[x:y]$ on the node does not extend to the origin, but that after normalization it becomes $t\mapsto[1:t]$, which extends everywhere. Then show that $(x,y)\mapsto[x:y]$ on the plane has no extension to the origin.
*Hint:* On the node, $y/x=t$, and the two branches at the origin are $t=\pm1$. In the plane, look at the lines $y=cx$ through the origin.

**Variation 4.** (a) Show that $\widehat G$ is not isomorphic to any affine curve. (b) The function $x$ defines a morphism $\widehat G\to\mathbb{P}^1$. Which point goes to $\infty$? How many points of $\widehat G$ lie over a typical point of $\mathbb{P}^1$?
*Hint:* (a) An affine curve has nonconstant regular functions, its coordinates; use Corollary 7.9. (b) Only $\infty$ goes to $\infty$. Over a typical $a$ there are two points, $(a,\pm\sqrt{a^5-a})$. Chapter 8 calls this number the degree of the map.

**Variation 5.** For $n=0,1,\dots,8$, compute the dimension $\ell(n\infty)$ of the space of functions on $\widehat G$ whose only pole is at $\infty$, of order at most $n$.
*Hint:* Such functions are regular on $G$, so they have the form $a(x)+b(x)\,y$, with pole order $\max\bigl(2\deg a,\ 5+2\deg b\bigr)$ at $\infty$. You should find $1,1,2,2,3,4,5,6,7$, and $\ell(n\infty)=n-1$ for $n\geq3$. Chapter 15 explains the formula $n-g+1$, here with $g=2$.

## Reading Map

- **[H, I.6]:** the abstract curve of a function field, the extension property (Proposition 6.8), the theorem that complete smooth curves are projective (Theorem 6.9), and the equivalence of categories (Corollary 6.12).
- **[H, I.3 and II.1]:** regular functions defined locally, and sheaves in general, as preparation for Chapters 13 and 14.
- **[Si, II.2]:** rational maps from smooth curves are morphisms (Proposition 2.1), and curves correspond to function fields (Theorem 2.4).
- **[F, §7.1 and §7.5]:** Fulton's route to nonsingular models, by blowing up points.
- **[S, Appendix B]:** curves and function fields side by side.
- **R. Miranda, *Algebraic Curves and Riemann Surfaces*,** Chapter I: hyperelliptic Riemann surfaces glued from two charts, which is our construction of $\widehat G$ in the analytic setting.
- **A. Weil, *Foundations of Algebraic Geometry* (1946):** abstract varieties built by gluing charts.
- **J.-P. Serre, "Faisceaux algébriques cohérents",** *Annals of Mathematics* 61 (1955): the paper that brought sheaves, invented by Leray in topology, into algebraic geometry.
