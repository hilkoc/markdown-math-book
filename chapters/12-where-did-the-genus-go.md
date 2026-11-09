# Where Did the Genus Go?

## The Problem

> **Problem 12.** The closure of $G$ in the plane is the quintic $y^2z^3=x^5-xz^4$. A smooth plane quintic has genus 6, but this one has genus 2, and its only singular point is $[0:1:0]$. Find an invariant of that point that accounts for the missing 4, and compute it from the equation alone. Then show that the genus of every plane curve can be found in this way.

Chapter 1 promised a formula of the shape
$$g=\frac{(d-1)(d-2)}{2}-\bigl(\text{a correction for each singular point}\bigr),$$
and Chapters 10 and 11 gathered evidence. The node and the cusp are cubics of genus 0, so each costs 1. Chapter 7's nodal quartic model of $\widehat G$ has genus 2 instead of 3, so its node costs 1 as well. The lemniscate curve's closure $y^2z^2=z^4-x^4$ is a quartic of genus 1 instead of 3, so its singular point at infinity costs 2. The quintic's triple point must cost 4.

Chapter 6 even anticipated the correction. For a point with a single branch it counted the gaps in a semigroup, called that number the $\delta$-invariant, and claimed that it is exactly what the point subtracts from the genus. This chapter proves that claim for every singular point and gives three ways to compute $\delta$.

## First Attempts

**Use the multiplicity.** Near an ordinary $m$-fold point, a curve looks like $m$ lines through one point. Moving the lines slightly apart creates $\binom m2$ crossings, and each crossing is a node that costs 1. So we might guess that an $m$-fold point costs $\binom m2$. That works for the node and the cusp, which both have $m=2$. The quintic's point has multiplicity 3, as Chapter 7 found from the lowest-degree term $z^3$ in the chart $y=1$. The guess gives 3, not 4, and so genus 3, which is wrong. The lemniscate quartic disagrees too: its singular point has multiplicity 2 but costs 2. Multiplicity sees only the first layer of a singularity.

**Count the gaps.** Chapter 6 found that $G$ has a single branch at infinity, and that for a single branch the cost should be the number of gaps in its semigroup of values. Using the smooth chart $w^2=u-u^5$ of Chapter 7, the coordinates $X=x/y=u^2/w$ and $Z=z/y=u^3/w$ of the chart $y=1$ have orders 3 and 5 at the branch, because $v(u)=2$ and $v(w)=1$. So the semigroup contains $\langle3,5\rangle=\{0,3,5,6,8,9,10,\dots\}$, whose gaps are $1,2,4,7$. That is four gaps, which is promising.

But this attempt leaves three questions open. It used the smooth model, which we wanted to avoid. It does not say how to handle a point with several branches, such as a node. And it does not explain *why* the number of gaps is what the genus loses.

## The Ideas We Need

Throughout, $C$ is an irreducible plane curve of degree $d$, and $\nu:\widetilde C\to C$ is the map from its smooth projective model, as in Chapters 6 and 7. At each point $P$ of $C$, let $\widetilde{\mathcal O}_P$ be the ring of rational functions that are regular at every point of $\widetilde C$ over $P$. It is the integral closure of $\mathcal O_P$ (Theorem 6.6).

### The $\delta$-invariant {-}

**Definition 12.1.** The **$\delta$-invariant** of $C$ at $P$ is
$$\delta_P=\dim_k\widetilde{\mathcal O}_P/\mathcal O_P.$$

**Proposition 12.2.**

1. $\delta_P$ is finite, and $\delta_P=0$ exactly when $P$ is a smooth point.
2. If $C$ has a single branch at $P$, with semigroup of values $S$, then $\delta_P$ is the number of gaps $\#(\mathbb N\setminus S)$.

*Sketch.* $\widetilde{\mathcal O}_P$ is a finitely generated $\mathcal O_P$-module with the same fraction field, so some power of $\mathfrak m_P$ multiplies it into $\mathcal O_P$, and the quotient is finite-dimensional. It is zero exactly when $\mathcal O_P$ is integrally closed, that is, a discrete valuation ring, which is smoothness (Theorem 4.7). For part 2, $\widetilde{\mathcal O}_P$ is the valuation ring $\mathcal O_v$ of the branch. Both rings contain all functions with $v\geq c$ for some $c$, and modulo those functions $\mathcal O_v$ has dimension $c$, while $\mathcal O_P$ has dimension $\#\{s\in S:s<c\}$. The difference is the number of gaps. $\square$

So the cusp has $\delta=1$ and the higher cusp $y^2=x^5$ has $\delta=2$ (Chapter 6). The node has $\delta=1$ as well: there $\widetilde{\mathcal O}_P/\mathcal O_P$ is spanned by the slope $y/x$, which takes different values on the two branches, while every function in $\mathcal O_P$ takes the same value on both. The quintic's triple point has $\delta\geq4$, with equality if its semigroup is exactly $\langle3,5\rangle$.

> **Look up.** Normalization and the $\delta$-invariant: [H, Ex. I.3.17 and IV, Ex. 1.8]; J.-P. Serre, *Algebraic Groups and Class Fields*, Chapter IV.

### The genus formula {-}

**Theorem 12.3.** For an irreducible plane curve $C$ of degree $d$,
$$g(C)=\frac{(d-1)(d-2)}{2}-\sum_{P\in C}\delta_P.$$

*Sketch.* Choose coordinates so that the line at infinity meets $C$ in $d$ distinct smooth points, and let $H$ be the divisor they form on $\widetilde C$. Write $A=k[x,y]/(f)$ for the coordinate ring of the affine part, and $\widetilde A\supseteq A$ for that of the affine part of $\widetilde C$. Then $\widetilde A/A\cong\bigoplus_P\widetilde{\mathcal O}_P/\mathcal O_P$, which has dimension $\sum\delta_P$. Now compare two spaces of functions with poles bounded by $mH$.

- **Polynomials.** By the argument of Lemma 10.3, which only needs the line at infinity to meet $C$ transversally away from $[0:1:0]$, $L(mH)\cap A$ is the image of the polynomials of degree at most $m$. That image has dimension $md+1-\frac{(d-1)(d-2)}{2}$ for $m\geq d-2$, by the count of Variation 2 of Chapter 10, which involves only polynomials.
- **All functions.** Every element of $\widetilde A$ lies in $L(mH)$ for $m$ large enough, so for large $m$ the map $L(mH)\to\widetilde A/A$ is onto. Hence $\ell(mH)$ exceeds the polynomial count by exactly $\sum\delta_P$.

Riemann–Roch (Chapter 15) gives $\ell(mH)=md+1-g$ for large $m$. Comparing the two counts proves the formula. $\square$

The proof shows where the genus went. Polynomials see the curve as if it were smooth, and $\frac{(d-1)(d-2)}{2}$ is the genus they measure, the **arithmetic genus** of Variation 5 of Chapter 10. The smooth model has $\sum\delta_P$ more functions than the polynomials can reach, and its genus is smaller by exactly that number. Chapter 14 restates the proof as an exact sequence of sheaves.

> **Look up.** [H, IV, Ex. 1.8]: $p_a(C)=g(\widetilde C)+\sum_P\delta_P$ for every integral curve. Serre, *Algebraic Groups and Class Fields*, Chapter IV, proves it with the conductor.

### Blowing up {-}

Chapter 7 mentioned that **blowing up** a point replaces it by the set of directions through it. For a plane curve with a singular point at the origin, choose a tangent direction, say $y=0$. The substitution $y=xy_1$ maps the plane with coordinates $(x,y_1)$ to the plane with coordinates $(x,y)$. Then $f(x,xy_1)=x^m\,f_1(x,y_1)$, where $m$ is the multiplicity, and $f_1$ is the **strict transform**. The points of $f_1=0$ with $x=0$ correspond to the tangent directions at the origin, except the vertical one, which the other chart $x=x_1y$ handles. These are the **infinitely near points** of the first generation, and blowing them up gives the next generation. After finitely many steps every infinitely near point is smooth (Fulton proves this), and the smooth points that remain over $P$ are the branches of $C$ at $P$.

**Theorem 12.4 (Noether).** Let $m_Q$ be the multiplicity of the curve at $Q$. Then
$$\delta_P=\sum_Q\frac{m_Q(m_Q-1)}{2},$$
where $Q$ runs over $P$ and all the points infinitely near to it. Only finitely many terms are nonzero.

> **Look up.** Blowing up and resolution of plane curve singularities: [F, Chapter 7]. Each blow-up of a point of multiplicity $r$ lowers the arithmetic genus by $\binom r2$: [H, V.3, Corollary 3.7]. The formula for $\delta$: E. Casas-Alvero, *Singularities of Plane Curves*.

**Corollary 12.5.** $\delta_P\geq\binom{m_P}{2}$, with equality exactly when a single blow-up resolves the singularity. This happens at an **ordinary** $m$-fold point, which has $m$ smooth branches with distinct tangent lines, and also at the cusp $y^m=x^{m+1}$.

*Proof.* Equality holds exactly when every point of the first generation is smooth. For an ordinary point the blow-up separates the $m$ branches. For $y^m=x^{m+1}$, putting $y=xy_1$ gives $y_1^m=x$, which is smooth. $\square$

That explains the first attempt. The guess $\binom m2$ is right when one blow-up suffices, as for the node and the cusp, and too small otherwise, because the singularity has further layers.

### Puiseux expansions {-}

**Theorem 12.6 (Newton–Puiseux).** Let $k$ have characteristic 0, and choose local coordinates centred at $P$ in which the branch does not lie on the line $x=0$. Then the branch can be parametrized as
$$x=t^m,\qquad y=\sum_{j\geq1}a_jt^j,$$
with $t$ a uniformizer of the branch, $m=v(x)$, and the $a_j$ in $k$. Over $\mathbb{C}$ the series converge.

To find one, read off the leading exponent from an edge facing the origin of the **Newton polygon** of $f$, the convex hull of the exponents $(i,j)$ of the monomials $x^iy^j$ in $f$, and solve for the rest term by term. When $y=t^n+(\text{higher terms})$ with $\gcd(m,n)=1$, the semigroup of the branch is $\langle m,n\rangle$. Its number of gaps is $\frac{(m-1)(n-1)}{2}$, as Sylvester showed. That gives
$$\delta_P=\frac{(m-1)(n-1)}{2}$$
for such a branch.

> **Look up.** Puiseux expansions, characteristic exponents and semigroups: C. T. C. Wall, *Singular Points of Plane Curves*; E. Brieskorn and H. Knörrer, *Plane Algebraic Curves*.

### Milnor's formula {-}

The third method needs no parametrization at all. The **Milnor number** of $f$ at $P$ is
$$\mu_P=\dim_k\mathcal O_{\mathbb A^2,P}/(f_x,f_y)=I_P(f_x,f_y),$$
the intersection multiplicity of the two partial derivatives (Chapter 3).

**Theorem 12.7 (Milnor).** In characteristic 0, if $C$ has $r_P$ branches at $P$, then
$$2\delta_P=\mu_P+r_P-1.$$

For the node, $\mu=1$ and $r=2$. For the cusp $y^2=x^3$, $\mu=I(3x^2,2y)=2$ and $r=1$. Both give $\delta=1$.

> **Look up.** J. Milnor, *Singular Points of Complex Hypersurfaces*, Theorem 10.5; Brieskorn and Knörrer, *Plane Algebraic Curves*.

## The Solution

### Three computations at the triple point {-}

In the chart $y=1$, with coordinates $X=x/y$ and $Z=z/y$, the quintic is
$$F=Z^3-X^5+XZ^4=0,$$
with its singular point at the origin. Its lowest-degree term is $Z^3$, so $m=3$ and the only tangent line is $Z=0$.

**By blowing up.** Put $Z=XZ_1$ and divide by $X^3$:
$$Z_1^3-X^2+X^2Z_1^4=0.$$
The new curve passes through the origin with multiplicity 2 and the single tangent $X=0$. So put $X=Z_1X_2$ and divide by $Z_1^2$:
$$Z_1-X_2^2+X_2^2Z_1^4=0,$$
which is smooth, because it has the linear term $Z_1$. The multiplicities are $3,2,1$, and Theorem 12.4 gives
$$\delta=\binom{3}{2}+\binom{2}{2}=3+1=4.$$

**By Puiseux.** The edge of the Newton polygon facing the origin joins $Z^3$ to $X^5$, so $Z\approx X^{5/3}$. Put $X=t^3$ and $Z=t^5W$. Then $W^3=1-t^8W^4$, which can be solved term by term:
$$X=t^3,\qquad Z=t^5-\tfrac13t^{13}+\cdots.$$
Replacing $t$ by $\zeta t$ with $\zeta^3=1$ gives the same branch, so there is one branch. Since $\gcd(3,5)=1$, its semigroup is exactly $\langle3,5\rangle$, with the four gaps $1,2,4,7$, and $\delta=\frac{(3-1)(5-1)}{2}=4$. This settles the open questions of the second attempt: the branch came from the equation, and the semigroup has no extra elements.

**By Milnor.** Here $F_Z=Z^2(3+4XZ)$, and $3+4XZ$ is a unit at the origin. By the properties of intersection multiplicity,
$$\begin{aligned}\mu=I(F_X,F_Z)&=2\,I(F_X,Z)+I(F_X,3+4XZ)\\&=2\,I(-5X^4+Z^4,\,Z)+0=2\cdot4=8.\end{aligned}$$
With one branch, Theorem 12.7 gives $2\delta=8+1-1$, so again $\delta=4$.

**The answer.** The triple point of the quintic has $\delta=4$, and Theorem 12.3 gives
$$g=\binom42-4=6-4=2.$$
The missing genus went into the singular point. A point with local equation $Z^3=X^5$, up to higher-order terms like $XZ^4$, is called an $E_8$ singularity (Section 12.6).

### The cast's singular models {-}

| Model | Degree | Singular point | $\delta$ | Genus |
|---|---|---|---|---|
| node $y^2=x^2(x+1)$ | 3 | node: $\mu=1$, $r=2$ | 1 | 0 |
| cusp $y^2=x^3$ | 3 | cusp: $\mu=2$, $r=1$ | 1 | 0 |
| lemniscate curve, closure | 4 | tacnode at $[0:1:0]$: multiplicities $2,2$ | 2 | 1 |
| $G$, nodal quartic $xs^2z=x^4-z^4$ | 4 | node at $[0:1:0]$ | 1 | 2 |
| $G$, quintic $y^2z^3=x^5-xz^4$ | 5 | $E_8$ point at $[0:1:0]$: multiplicities $3,2$ | 4 | 2 |

The lemniscate's point at infinity is a **tacnode**, two smooth branches with a common tangent (Variation 1 of Chapter 6). In the chart $y=1$ it is $z^2-z^4+x^4=0$. One blow-up turns it into a node, which a second blow-up separates, so $\delta=1+1=2$. Equivalently, $\mu=I(4x^3,2z-4z^3)=3$ and $r=2$.

### Which differentials survive {-}

Chapter 10 found the regular differentials of a smooth plane curve of degree $d$ among the $h\,dx/f_y$ with $\deg h\leq d-3$. On a singular curve the same candidates appear, but a singular point $P$ removes exactly $\delta_P$ of them. For the quintic, $f_y=2y$ and the candidates are $h\,dx/y$ for $h\in\{1,x,y,x^2,xy,y^2\}$. At the point over infinity, $v(x)=-2$, $v(y)=-5$ and $\operatorname{div}(dx/y)=2\infty$, so only $h=1$ and $h=x$ give regular differentials. That is $6-2=4$ conditions, matching $\delta=4$, and it recovers the basis $dx/y$, $x\,dx/y$ of Chapter 10. The $h$ that pass these tests define the **adjoint curves**. For a node, the condition is that the curve $h=0$ passes through the node, as Variation 4 of Chapter 10 found. Gorenstein proved in 1952 that at each singular point the adjoint condition is membership in an ideal of $\mathcal O_P$, the conductor, which amounts to exactly $\delta_P$ linear conditions.

### Over $\mathbb{C}$: where the holes went {-}

Perturb the coefficients of the quintic slightly and it becomes smooth, a surface with six holes (Chapter 10). Near the old singular point the smooth curve contains a small piece of surface, the **Milnor fibre**, which collapses to the point as the coefficients return. Milnor showed that this piece has Euler characteristic $1-\mu$ and $r$ boundary circles, so it is a surface of genus $\frac{\mu-r+1}{2}$ with $r$ discs removed. For the $E_8$ point, with $\mu=8$ and $r=1$, it is a surface of genus 4 with one disc removed. Collapsing it to a point removes those 4 holes, which leaves $6-4=2$.

For a node, $\mu=1$ and $r=2$, so the Milnor fibre is a tube joining the two branches, and pinching the tube removes one hole. In general the loss is $\frac{\mu-r+1}{2}$ holes inside the Milnor fibre, plus $r-1$ for the tubes that join its $r$ boundary circles. That is
$$\frac{\mu-r+1}{2}+(r-1)=\frac{\mu+r-1}{2}=\delta,$$
which is Milnor's formula read as a statement about holes.

### A shortcut: Newton polygons {-}

The Newton polygon also gives a global shortcut, often the quickest way to the genus.

**Theorem 12.8 (Baker).** Let $f\in k[x,y]$ be irreducible. The genus of $f=0$ is at most the number of lattice points in the interior of the Newton polygon of $f$. Equality holds when $f$ is **nondegenerate**: the curve has no singular points with $xy\neq0$, and for each edge of the polygon, the polynomial formed by the terms of $f$ on that edge has no repeated factors apart from powers of $x$ and $y$.

For $y^2=x^5-x$ the polygon is the triangle with vertices $(1,0)$, $(5,0)$ and $(0,2)$. Its interior lattice points are $(1,1)$ and $(2,1)$, so the genus is at most 2. The affine curve is smooth, the bottom edge carries $x^5-x=x(x^4-1)$, and the other two edges carry only two terms each. So $f$ is nondegenerate and the genus is exactly 2. The interior points even name the regular differentials: $(i,j)$ corresponds to $x^{i-1}y^{j-1}\,dx/f_y$, here $dx/2y$ and $x\,dx/2y$. For a general curve of degree $d$ the polygon is the triangle with vertices $(0,0)$, $(d,0)$ and $(0,d)$, with $\frac{(d-1)(d-2)}{2}$ interior points. The same count gives 1 for $E$, the lemniscate curve and the Fermat cubic, and 3 for the Fermat quartic.

Baker proved the inequality in 1893, and Beelen extended it to every field in 2009. The polygon records only which monomials occur, not their coefficients, so it cannot see a singular point created by special coefficients. That is why the theorem needs the nondegeneracy condition (Variation 4).

## What Just Happened

- **The $\delta$-invariant measures what a singular point loses.** It is the dimension of $\widetilde{\mathcal O}_P/\mathcal O_P$, the functions on the smooth model that the singular curve cannot see at $P$. For a single branch it is the number of gaps in the semigroup.
- **The genus formula.** For an irreducible plane curve of degree $d$, $g=\frac{(d-1)(d-2)}{2}-\sum\delta_P$. Polynomials see the arithmetic genus $\frac{(d-1)(d-2)}{2}$, and each singular point removes $\delta_P$ from it.
- **Three ways to compute $\delta$.** Blowing up gives $\delta=\sum\binom{m_Q}{2}$ over infinitely near points. Puiseux expansions give the semigroup of each branch. Milnor's formula gives $2\delta=\mu+r-1$ from the partial derivatives alone.
- **The quintic's triple point has $\delta=4$.** All three methods agree, so $g=6-4=2$. Over $\mathbb{C}$, the four missing holes sit in the Milnor fibre, which collapses into the singular point.
- **Shortcuts.** Adjoint conditions tell which candidate differentials survive, and Baker's theorem reads the genus from the interior lattice points of the Newton polygon.

## Threads

**When are two curves the same?** The $\delta$-invariant, the Milnor number, the multiplicities of the infinitely near points and the semigroups are all invariants of a singular point. They separate the node, the cusp, the tacnode and the $E_8$ point, which all have different values of $(\mu,r)$. The simplest singularities, those whose equations have no continuous parameters, form Arnold's **ADE** list. The node is $A_1$, the cusp $A_2$, the tacnode $A_3$, and the quintic's point is $E_8$.

**What is a curve?** A singular plane model and the smooth model are different curves with the same function field. The $\delta$-invariants measure the difference, and the arithmetic genus $\frac{(d-1)(d-2)}{2}$ belongs to the singular model. Chapter 13 treats singular curves as schemes in their own right. Chapter 14 then defines the arithmetic genus of any curve as $h^1(\mathcal O)$ and proves $p_a=g+\sum\delta_P$ with an exact sequence of sheaves.

**Which curves can be parametrized?** A plane curve of degree $d$ has genus 0 exactly when its singular points use up the whole arithmetic genus, $\sum\delta_P=\frac{(d-1)(d-2)}{2}$, and Chapter 16 shows that genus 0 means rational. The node and the cusp do this for cubics. Variations 1 and 2 give two classical quartics that do it too.

**Riemann–Roch.** The proof of Theorem 12.3 borrowed $\ell(mH)=md+1-g$ for large $m$ from Chapter 15. It is the same kind of count as Chapter 8's table, where $\ell(n\infty)$ eventually fell short of $n+1$ by the genus.

## Variations

These are optional. A hint follows each one.

**Variation 1.** Show that Bernoulli's lemniscate $(x^2+y^2)^2=x^2-y^2$ from Chapter 9 has three nodes: one at the origin and one at each circular point $I,J$. Deduce that it is rational, and check the parametrization
$$x=\frac{t(1+t^2)}{1+t^4},\qquad y=\frac{t(1-t^2)}{1+t^4}.$$
So the curve is rational, although its arc length leads to the lemniscate integral, which no rational substitution can tame (Chapter 9).
*Hint:* At the origin the lowest-degree part is $y^2-x^2$. At $I=[1:i:0]$, put $y=i+s$ in the chart $x=1$; the homogenized equation becomes $s^2(2i+s)^2=z^2(2-2is-s^2)$, whose quadratic part $-4s^2-2z^2$ is a product of two distinct lines. So $g=3-1-1-1=0$.

**Variation 2.** The three-leaved rose $(x^2+y^2)^2=x^3-3xy^2$, which is $r=\cos3\theta$ in polar coordinates, has an ordinary triple point at the origin. Show that it has no other singular points, deduce that it is rational, and parametrize it using lines through the origin.
*Hint:* The lowest-degree part $x(3y^2-x^2)$ is three distinct lines. At the circular points the equation has a nonzero linear term, so they are smooth. With $y=tx$ you should find $x=\frac{1-3t^2}{(1+t^2)^2}$. Then $g=3-\binom32=0$.

**Variation 3.** Compute the Milnor numbers of $y^2=x^n$, $y^3=x^4$ and $y^3=x^5$, and check Milnor's formula against the gaps of the semigroups $\langle2,n\rangle$ (for odd $n$), $\langle3,4\rangle$ and $\langle3,5\rangle$. What happens for $y^2=x^n$ with $n$ even?
*Hint:* For $y^a=x^b$ one finds $\mu=(a-1)(b-1)$. When $\gcd(a,b)=1$ there is one branch, so $\delta=\frac{\mu}{2}$, which is Sylvester's count of gaps. For $y^2=x^{2k}$ there are two branches $y=\pm x^k$ and $\mu=2k-1$, so $\delta=k$.

**Variation 4.** Show that Baker's bound can be strict. For $y^2=x(x-1)^2$, count the interior lattice points of the Newton polygon, and compare with the genus.
*Hint:* The polygon has vertices $(1,0)$, $(3,0)$ and $(0,2)$, with one interior point. But the curve has a node at $(1,0)$, so its genus is 0. The node lies on the line $y=0$, and the bottom edge, which describes the curve near that line, carries $x^3-2x^2+x=x(x-1)^2$, with a repeated factor. So $f$ is degenerate.

**Variation 5.** On the lemniscate quartic $y^2z^2=z^4-x^4$, the recipe of Chapter 10 offers $h\,dx/f_y$ with $h\in\{1,x,y\}$. Show that only $h=1$ gives a regular differential on the smooth model, so that the tacnode imposes $2=\delta$ conditions.
*Hint:* At $\infty_\pm$ we have $v(x)=-1$ and $v(y)=-2$, while $\operatorname{div}(dx/y)=0$ (Theorem 9.11).

## Reading Map

- **[F, Chapter 7]:** blowing up points of the plane, quadratic transformations, and the existence of nonsingular models. Chapter 8 computes the genus of plane curves with ordinary multiple points.
- **[H, IV, Ex. 1.8 and V.3]:** the arithmetic genus of a singular curve is the genus of its normalization plus $\sum\delta_P$. Blowing up a point of multiplicity $r$ on a surface lowers the arithmetic genus of a curve through it by $\binom r2$ (Corollary V.3.7).
- **J.-P. Serre, *Algebraic Groups and Class Fields*,** Chapter IV: singular curves, the conductor and the $\delta$-invariant.
- **E. Brieskorn and H. Knörrer, *Plane Algebraic Curves*:** Puiseux expansions, the topology of singularities and Milnor numbers, with many pictures.
- **C. T. C. Wall, *Singular Points of Plane Curves*,** and **E. Casas-Alvero, *Singularities of Plane Curves*:** characteristic exponents, semigroups, infinitely near points and the formulas for $\delta$.
- **J. Milnor, *Singular Points of Complex Hypersurfaces*** (1968): the Milnor fibre, and the formula $2\delta=\mu+r-1$.
- **D. Gorenstein, "An arithmetic theory of adjoint plane curves",** *Transactions of the AMS* 72 (1952): adjoint conditions and the conductor.
- **H. F. Baker, "Examples of the application of Newton's polygon to the theory of singular points of algebraic functions",** *Transactions of the Cambridge Philosophical Society* 15 (1893), and **P. Beelen, "A generalization of Baker's theorem",** *Finite Fields and Their Applications* 15 (2009).
