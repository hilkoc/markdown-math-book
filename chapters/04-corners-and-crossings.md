# Corners and Crossings: Tangent Spaces

## The Problem

> **Problem 4.** At the origin, the parabola $y=x^2$, the node $y^2=x^2(x+1)$ and the cusp $y^2=x^3$ look different: the parabola is smooth, the node crosses itself, and the cusp comes to a sharp point. Find invariants, computable from the equations, that prove no two of these curves are isomorphic near the origin. Begin by saying what "isomorphic near a point" should mean.

Chapter 2 separated the cusp from the line using the dimension of $\mathfrak m/\mathfrak m^2$ at the origin, which is 2 for the cusp and 1 at every point of the line. The same number, 2, comes out for the node. So that invariant cannot tell the node from the cusp, and Chapter 2 left the question open. Chapter 3 then used tangent lines without saying exactly what they are, inside the black box of intersection multiplicity. This chapter opens that box.

The word "near" matters. The node and the cusp differ, if at all, only at the origin. Away from it both are smooth, and Chapter 1's parametrizations match their points with points of the line. So we need invariants that see only what happens close to a point.

## First Attempts

**Calculus.** For the parabola, the gradient of $f=y-x^2$ at the origin is $(0,1)\neq(0,0)$. By the implicit function theorem, the real curve near the origin is the graph of a smooth function. For the node and the cusp the gradient vanishes at the origin, and the implicit function theorem says nothing.

That is a real difference, but is it intrinsic? The gradient belongs to the equation, and the equation belongs to one particular way of placing the curve in the plane. The parabola is isomorphic to a line (Chapter 2), whose equation $y=0$ looks quite different from $y=x^2$. Could the node have some other equation, perhaps in a different plane, in which it looks smooth? To rule that out we need invariants that do not depend on the equation.

**Lowest-order terms.** Near the origin, the terms of lowest degree dominate.

- For the parabola, $y-x^2$ starts with $y$, of degree 1.
- For the node, $y^2-x^2-x^3$ starts with $y^2-x^2=(y-x)(y+x)$, of degree 2, with two distinct factors.
- For the cusp, $y^2-x^3$ starts with $y^2$, of degree 2, with one repeated factor.

The real pictures agree. The node has two branches crossing with slopes $\pm1$. The cusp has a single tangent direction $y=0$, approached from one side by both halves of the curve. This looks like exactly the invariant we want. But again, the lowest terms are a property of the equation. A change of coordinates in the plane changes them, and an isomorphism between curves need not come from any change of coordinates in the plane at all.

**Parametrizations.** Chapter 1's parametrizations tell the same story.

- The parabola $(t,t^2)$ passes through the origin once, with velocity $(1,0)$.
- The node $(t^2-1,\,t^3-t)$ passes through it twice, at $t=\pm1$, with velocities $(\pm2,2)$: two directions, with slopes $\pm1$.
- The cusp $(t^2,t^3)$ passes through it once, at $t=0$, with velocity $(0,0)$: the moving point stops.

Again this is suggestive, and again it is about particular maps.

**What we need.** Chapter 2 showed how to make an invariant intrinsic: express it through the ring of functions. For a local question we need a ring that sees only what happens near the point. Then we need ring-theoretic versions of "the degree of the lowest term" and "the factors of the lowest term".

## The Ideas We Need

### Local rings {-}

**Definition 4.1.** Let $C$ be an affine curve whose coordinate ring $k[C]$ is a domain, and let $p$ be a point of $C$. The **local ring** of $C$ at $p$ is
$$\mathcal O_{C,p}=\Bigl\{\frac gh : g,h\in k[C],\ h(p)\neq0\Bigr\},$$
the ring of quotients of polynomial functions whose denominators do not vanish at $p$. Its elements are the functions defined near $p$. It has a unique maximal ideal $\mathfrak m_p$, consisting of the quotients with $g(p)=0$, and everything outside $\mathfrak m_p$ is a unit. Two curves $C$ and $D$ are **isomorphic near** $p\in C$ and $q\in D$ if $\mathcal O_{C,p}\cong\mathcal O_{D,q}$ as $k$-algebras.

Three remarks make this definition reasonable.

- An isomorphism $C\to D$ taking $p$ to $q$ induces an isomorphism of local rings. Conversely, isomorphic local rings give an isomorphism between $C$ and $D$ once finitely many points other than $p$ and $q$ are removed from each [H, Ex. I.4.7]. So "isomorphic near a point" means what it should.
- Localizing does not change quotients by powers of the maximal ideal: $k[C]/\mathfrak m_p^n\cong\mathcal O_{C,p}/\mathfrak m_p^n$ for every $n$. The reason is that any $h$ with $h(p)\neq0$ is already invertible modulo $\mathfrak m_p^n$. In particular, Chapter 2's computations of $\mathfrak m/\mathfrak m^2$ were local all along.
- For a plane curve $f=0$ with $f$ irreducible, $\mathcal O_{C,p}$ consists of the rational functions $a(x,y)/b(x,y)$ with $b(p)\neq0$, taken modulo $f$.

Anything defined from the local ring alone is a **local invariant**: if $\mathcal O_{C,p}\cong\mathcal O_{D,q}$, the two share it.

> **Look up.** Local rings of curves: [F, §2.4]; [H, I.3, Theorem 3.2(c)]. Localization: [AM, Chapter 3].

### Multiplicity and tangent lines {-}

**Definition 4.2.** Let $C$ be the curve $f=0$, and move the point $p$ to the origin. Write
$$f=f_m+f_{m+1}+\cdots+f_d,$$
where $f_j$ is homogeneous of degree $j$ and $f_m\neq0$. The number $m=m_p(C)$ is the **multiplicity** of $C$ at $p$. The point is **simple** if $m=1$, and a **multiple point** (double, triple, and so on) if $m\geq2$. By Lemma 3.3, $f_m$ factors into linear forms, $f_m=\prod_iL_i^{r_i}$ with the $L_i$ distinct. The lines $L_i=0$ are the **tangent lines** at $p$, with multiplicities $r_i$, and the curve $f_m=0$ is the **tangent cone**. A multiple point with $m$ distinct tangent lines is **ordinary**.

In these terms, the parabola has a simple point at the origin, with tangent $y=0$. The node has an ordinary double point there, with tangents $y=\pm x$. The cusp has a double point with the single tangent $y=0$, of multiplicity 2.

Tangent lines are the lines that meet the curve more than they should. Parametrize a line through the origin as $s\mapsto(us,vs)$. Then $f(us,vs)=s^m f_m(u,v)+s^{m+1}(\cdots)$, so the line meets $C$ at the origin with multiplicity exactly $m$ unless $f_m(u,v)=0$, which says the line is tangent.

For the node, substituting $y=tx$ gives $x^2(x+1-t^2)=0$. The multiplicity at the origin is 2 for most $t$, but when $t=\pm1$ the equation is $x^3=0$, with multiplicity 3. This explains a puzzle from Chapter 1. The lines of slope $\pm1$ through the node meet the curve only at the node, so in Chapter 1's parametrization both $t=1$ and $t=-1$ landed there.

> **Look up.** Multiple points and tangent lines: [F, §3.1]; [H, Ex. I.5.3].

### The tangent cone, intrinsically {-}

Definition 4.2 uses the equation. Here is how to see the same information in the local ring alone.

Filter the local ring by powers of its maximal ideal, $\mathcal O\supset\mathfrak m\supset\mathfrak m^2\supset\cdots$. Each quotient $\mathfrak m^n/\mathfrak m^{n+1}$ is a vector space over $k$. Together they form the **graded ring**
$$\operatorname{gr}\mathcal O_{C,p}=\bigoplus_{n\geq0}\mathfrak m^n/\mathfrak m^{n+1},$$
with multiplication inherited from $\mathcal O_{C,p}$: the product of the class of $u\in\mathfrak m^a$ and the class of $v\in\mathfrak m^b$ is the class of $uv\in\mathfrak m^{a+b}$. The graded ring is built from the local ring alone, so it is a local invariant.

**Theorem 4.3.** Let the origin be a point of multiplicity $m$ on the curve $f=0$, and let $f_m$ be the lowest-degree part of $f$. Then
$$\operatorname{gr}\mathcal O_{C,0}\;\cong\;k[x,y]/(f_m)$$
as graded rings. In particular $\dim_k\mathfrak m^n/\mathfrak m^{n+1}=\min(n+1,\,m)$. So the multiplicity, the tangent cone and its number of distinct lines are all determined by the local ring.

*Proof.* By the second remark after Definition 4.1, $\mathcal O_{C,0}/\mathfrak m^{n+1}=k[x,y]/\bigl((x,y)^{n+1}+(f)\bigr)$. The forms of degree $n$ in $x$ and $y$ span $\mathfrak m^n/\mathfrak m^{n+1}$, so we need to know which forms $\varphi$ of degree $n$ lie in $(x,y)^{n+1}+(f)$. We claim these are exactly the multiples $hf_m$, with $h$ a form of degree $n-m$.

Such multiples qualify, because $hf_m=hf-h(f-f_m)$ and the second term has degree at least $n+1$. Conversely, suppose $\varphi=\psi+gf$ with $\psi\in(x,y)^{n+1}$. If $g=0$, then $\varphi=-\psi$ has degree at least $n+1$, so $\varphi=0$. If $g\neq0$, the lowest-degree part of $gf$ is $g_{\text{low}}\,f_m$, which is nonzero because $k[x,y]$ is a domain. Since $gf=\varphi-\psi$ has no terms of degree below $n$, either $g_{\text{low}}f_m$ has degree $n$ and equals $\varphi$, or $gf$ has no term of degree $n$ and $\varphi=0$.

So the degree-$n$ part of $\operatorname{gr}\mathcal O_{C,0}$ is the space of forms of degree $n$ modulo the multiples of $f_m$, which is the degree-$n$ part of $k[x,y]/(f_m)$. To count dimensions: there are $n+1$ monomials of degree $n$, and the multiples of $f_m$ of degree $n$ form a space of dimension $n-m+1$ when $n\geq m$, and $0$ otherwise. $\square$

For our three curves, the graded rings are $k[x,y]/(y)\cong k[x]$, then $k[x,y]/(y^2-x^2)$, then $k[x,y]/(y^2)$. The dimensions of $\mathfrak m^n/\mathfrak m^{n+1}$ run $1,1,1,\dots$ for the parabola, and $1,2,2,2,\dots$ for both the node and the cusp. The multiplicity cannot separate the node from the cusp. The ring structure will.

> **Look up.** Graded rings and Hilbert functions: [AM, Chapters 10–11]. Multiplicity via $\mathfrak m^n/\mathfrak m^{n+1}$: [F, §3.2, Theorem 2]. The tangent cone in general: Eisenbud, *Commutative Algebra*, §5.4.

### The Zariski tangent space and the Jacobian criterion {-}

**Definition 4.4.** The **Zariski tangent space** of $C$ at $p$ is the dual vector space
$$T_pC=(\mathfrak m_p/\mathfrak m_p^2)^*.$$

Why the dual? A tangent vector should be a way of differentiating functions at $p$: a linear map $v:\mathcal O_{C,p}\to k$ that obeys the Leibniz rule $v(gh)=g(p)\,v(h)+h(p)\,v(g)$. Such a $v$ kills constants, since $v(1)=v(1\cdot1)=2v(1)$. It also kills $\mathfrak m_p^2$, since if $g(p)=h(p)=0$ the rule gives $v(gh)=0$. So $v$ is a linear function on $\mathfrak m_p/\mathfrak m_p^2$. Conversely, a linear function $\ell$ on $\mathfrak m_p/\mathfrak m_p^2$ gives the derivation $v(g)=\ell\bigl(g-g(p)\bigr)$.

**Proposition 4.5 (Jacobian criterion).** Let $p=(x_0,y_0)$ be a point of the plane curve $f=0$. Then
$$T_pC\cong\{(a,b)\in k^2 : f_x(p)\,a+f_y(p)\,b=0\},$$
where $f_x,f_y$ are the partial derivatives of $f$. So $\dim T_pC=1$ if the gradient of $f$ at $p$ is nonzero, and $\dim T_pC=2$ if it vanishes. The first case happens exactly when $m_p(C)=1$.

*Proof.* In the plane, $\mathfrak m/\mathfrak m^2$ has basis $X=x-x_0$ and $Y=y-y_0$. On the curve there is one extra relation: by Taylor's formula, $f\equiv f_x(p)\,X+f_y(p)\,Y$ modulo $(X,Y)^2$. So $\mathfrak m_p/\mathfrak m_p^2$ is the span of $X,Y$ modulo this linear form, and its dual is the kernel displayed above. The linear form is nonzero exactly when the lowest-degree part of $f$ at $p$ has degree 1. $\square$

We call $p$ **smooth** (or nonsingular) when $\dim T_pC=1$, and **singular** otherwise. The definition is intrinsic, because it uses only the local ring. It is also computable, because the Jacobian criterion turns it into a gradient. At a smooth point the tangent line is $f_x(p)(x-x_0)+f_y(p)(y-y_0)=0$.

> **Look up.** Nonsingular points and the Jacobian criterion: [F, §3.1]; [H, I.5, Theorem 5.1, and Ex. I.5.10 for the Zariski tangent space].

### Tangent vectors from dual numbers {-}

There is a second way to see tangent vectors, and it points straight at schemes. The **dual numbers** are $k[\varepsilon]=k[\varepsilon]/(\varepsilon^2)$: expressions $a+b\varepsilon$ with $\varepsilon^2=0$, numbers with an infinitesimal part.

A point of $C$ with coordinates in $k[\varepsilon]$ is a pair $(x_0+a\varepsilon,\;y_0+b\varepsilon)$ with $f(x_0+a\varepsilon,\,y_0+b\varepsilon)=0$ in $k[\varepsilon]$. Taylor's formula is exact here, because $\varepsilon^2=0$:
$$f(x_0+a\varepsilon,\;y_0+b\varepsilon)=f(p)+\bigl(f_x(p)\,a+f_y(p)\,b\bigr)\,\varepsilon.$$
So a point with coordinates in $k[\varepsilon]$ is a point $p$ of $C$ together with a tangent vector $(a,b)\in T_pC$.

**Proposition 4.6.** For any affine curve $C$, the $k$-algebra homomorphisms $k[C]\to k[\varepsilon]$ correspond to pairs $(p,v)$ with $p\in C$ and $v\in T_pC$.

*Proof.* Composing with $\varepsilon\mapsto0$ gives a homomorphism $k[C]\to k$, which is evaluation at some point $p$ (Theorem 2.4). Write the original homomorphism as $g\mapsto g(p)+v(g)\,\varepsilon$. Multiplicativity says exactly that $v$ obeys the Leibniz rule $v(gh)=g(p)v(h)+h(p)v(g)$, so $v$ is a tangent vector at $p$. Conversely, every tangent vector gives such a homomorphism. $\square$

By the dictionary of Chapter 2, a homomorphism $k[C]\to k[\varepsilon]$ ought to be a map into $C$ from a "point with infinitesimal extent". We cannot yet say what kind of space that is; Chapter 13 can. But the algebra already makes sense.

It also explains Chapter 2's bijection. The map $\varphi(t)=(t^2,t^3)$ from the line to the cusp is bijective on ordinary points. Now look at what it does to points with coordinates in $k[\varepsilon]$. Over the origin, such a point of the line is $t=c\varepsilon$, and it goes to $(c^2\varepsilon^2,\,c^3\varepsilon^3)=(0,0)$. Every tangent vector at $0$ is crushed to zero, and the cusp's two-dimensional tangent space at the origin is missed entirely. An isomorphism must give a bijection on points with coordinates in *every* $k$-algebra, and $\varphi$ fails as soon as infinitesimals are allowed.

> **Look up.** Tangent vectors as maps from the dual numbers: [H, Ex. II.2.8]. Vakil [V] develops this for schemes in his treatment of the Zariski tangent space.

### Smooth points and discrete valuation rings {-}

At a smooth point, functions have a well-defined order of vanishing, just as a polynomial in one variable has a well-defined multiplicity at each root.

**Theorem 4.7.** A point $p$ of $C$ is smooth exactly when $\mathcal O_{C,p}$ is a **discrete valuation ring**: a Noetherian local domain, not a field, whose maximal ideal is principal. In that case, let $t$ generate $\mathfrak m_p$. Every nonzero $g\in\mathcal O_{C,p}$ can be written uniquely as $g=u\,t^n$ with $u$ a unit and $n\geq0$, and $n=\operatorname{ord}_p(g)$ is the **order** of $g$ at $p$. Any line through $p$ that is not tangent to $C$ gives such a generator $t$, called a **uniformizer**.

One direction is immediate. If $\mathfrak m_p=(t)$ is principal, then $\mathfrak m_p/\mathfrak m_p^2$ is spanned by the class of $t$, so $\dim T_pC\leq1$ and $p$ is smooth. At the node and the cusp, where $\dim T_0=2$, the maximal ideal needs two generators. The converse, and the statement about lines, are in [F, §3.2, Theorem 1].

On the parabola at the origin, $x$ is a uniformizer, because the line $x=0$ is not tangent there. In the local ring $y=x^2$, so $\operatorname{ord}_0(y)=2$: the tangent line $y=0$, restricted to the curve, vanishes to second order.

This order function is about to become one of the book's main tools. Chapter 6 uses it to recover the points of a curve from its field of functions, and Chapter 8 uses it to count zeros and poles. It also explains Chapter 3's intersection numbers: at a smooth point $p$ of $F$, $I_p(F,G)$ is the order at $p$ of the equation of $G$ restricted to $F$ (Variation 5).

> **Look up.** Discrete valuation rings: [F, §2.5]; [AM, Chapter 9, Proposition 9.2].

## The Solution

**Theorem 4.8.** Near the origin, no two of the parabola $y=x^2$, the node $y^2=x^2(x+1)$ and the cusp $y^2=x^3$ are isomorphic.

*Proof.* *The parabola differs from the others.* The gradients of the three equations at the origin are $(0,1)$, $(0,0)$ and $(0,0)$. By the Jacobian criterion, the tangent spaces have dimensions 1, 2 and 2. Since $\dim T_0=\dim\mathfrak m/\mathfrak m^2$ depends only on the local ring, the parabola's local ring is isomorphic to neither of the others.

*The node differs from the cusp.* By Theorem 4.3, their graded rings are
$$\operatorname{gr}\mathcal O_{\text{node},0}\cong k[x,y]/(y^2-x^2),\qquad \operatorname{gr}\mathcal O_{\text{cusp},0}\cong k[x,y]/(y^2).$$
In the cusp's graded ring, the degree-1 element $\bar y$ is nonzero but $\bar y^{\,2}=0$. In the node's graded ring, no nonzero element of degree 1 squares to zero. Indeed, $(ax+by)^2=a^2x^2+2ab\,xy+b^2y^2$ is a multiple $\lambda(y^2-x^2)$ only if $2ab=0$ and $a^2=-\lambda=-b^2$, which forces $a=b=0$. An isomorphism of local rings would induce an isomorphism of graded rings preserving degrees. So the node and the cusp are not isomorphic near the origin. $\square$

In plain terms, the test is this. On the cusp, the function $y$ vanishes to first order at the origin ($y\notin\mathfrak m^2$), yet its square vanishes to third order ($y^2=x^3\in\mathfrak m^3$). On the node no function does that: if $u$ vanishes to first order, then $u^2$ vanishes to exactly second order. Where the node has two tangent directions, the cusp has one direction counted twice, and the graded ring records the doubling as a nilpotent element.

Here are all the invariants side by side.

| At the origin | parabola $y=x^2$ | node $y^2=x^2(x+1)$ | cusp $y^2=x^3$ |
|---|---|---|---|
| gradient | $(0,1)$ | $(0,0)$ | $(0,0)$ |
| $\dim T_0$ | 1 | 2 | 2 |
| multiplicity | 1 | 2 | 2 |
| tangent cone | $y=0$ | $y=x$ and $y=-x$ | $y=0$, twice |
| graded ring | $k[x]$ | $k[x,y]/(y^2-x^2)$ | $k[x,y]/(y^2)$ |
| local ring a DVR? | yes | no | no |
| some $u\notin\mathfrak m^2$ with $u^2\in\mathfrak m^3$? | no | no | yes: $u=y$ |

**A second proof, with jets.** Dual numbers see first-order behaviour. To see second-order behaviour, allow coordinates in $k[\varepsilon]/(\varepsilon^3)$ and ask which tangent vectors extend to second order. Put $x=a\varepsilon+c\varepsilon^2$ and $y=b\varepsilon+d\varepsilon^2$, and compute modulo $\varepsilon^3$.

- On the node, $y^2-x^2-x^3=(b^2-a^2)\,\varepsilon^2$, which vanishes exactly when $b=\pm a$.
- On the cusp, $y^2-x^3=b^2\varepsilon^2$, which vanishes exactly when $b=0$.

At the origin, every vector $(a,b)$ is a tangent vector of both curves. But only the vectors along the tangent cone extend to second order: two lines' worth for the node, one line for the cusp. The tangent cone is the set of directions in which one can actually leave the point along the curve. This description uses only homomorphisms out of $k[C]$, so it is intrinsic, and it separates the node from the cusp once more.

## What Just Happened

- **"Near a point" means the local ring.** Two curves are isomorphic near two points when their local rings are isomorphic, and every local invariant is something defined from the local ring.
- **A ladder of invariants.** The tangent space $(\mathfrak m/\mathfrak m^2)^*$ sees first-order behaviour and detects singular points. The multiplicity, read off from the dimensions of $\mathfrak m^n/\mathfrak m^{n+1}$, measures how singular a point is. The graded ring $\bigoplus\mathfrak m^n/\mathfrak m^{n+1}\cong k[x,y]/(f_m)$ is the tangent cone in ring form, and it tells the node's two crossing lines from the cusp's doubled line.
- **Intrinsic and computable at once.** Each invariant is defined from the ring, so it does not depend on the equation. Each is also computable from the equation: the Jacobian criterion gives the tangent space, and the lowest-degree terms give the multiplicity and the tangent cone.
- **Infinitesimal points.** A tangent vector is a point with coordinates in the dual numbers. Chapter 2's bijection fails to be an isomorphism because it is not bijective on such points.
- **Smooth points are discrete valuation rings.** At a smooth point every function has an order of vanishing. That is the beginning of the arithmetic of zeros and poles.

## Threads

**What is a curve?** We have quietly started to ask for a curve's points with coordinates in rings other than $k$, such as the dual numbers. A curve turns out to be determined by its points with coordinates in every $k$-algebra, and Chapter 13 makes this precise as the *functor of points*. The dual numbers are the first ring with nilpotent elements to enter the book, and schemes are built to include such things.

**When are two curves the same?** We can now tell many singular points apart, but not all. The cusp $y^2=x^3$ and the "higher cusp" $y^2=x^5$ have the same tangent space, multiplicity, tangent cone and graded ring at the origin, yet they are not isomorphic near it (Variation 4). A further invariant, the $\delta$-invariant of Chapter 12, separates them. Branches give another invariant: Chapter 6 counts them with valuations, and that count separates the node, with two branches, from the cusp, with one.

There is also a warning. Over $\mathbb{C}$, near the origin, the node *looks like* the two crossing lines $xy=0$. Yet no Zariski neighbourhood of the node is isomorphic to a neighbourhood of the crossing lines, because the node's local ring is a domain and that of $xy=0$ is not. Looking that closely requires power series, through completions or analytic geometry; see [H, Ex. I.5.14].

**Which curves can be parametrized?** All three curves of this chapter are parametrized by the line. Chapter 5 finds what they have in common: the same field of rational functions.

**Valuations and divisors.** The order $\operatorname{ord}_p$ at smooth points becomes central. Chapter 6 shows that the points of a smooth curve correspond to the valuations of its function field. Chapter 7 builds a smooth projective curve out of these discrete valuation rings, and Chapter 8 counts zeros and poles with them.

**Differentials.** The space $\mathfrak m_p/\mathfrak m_p^2$ records the first-order behaviour of functions at $p$. It is the cotangent space, the space of "differentials at a point". Chapter 9 assembles these into the differentials of a curve, and in Chapter 10 their dimension becomes the genus.

## Variations

These are optional. A hint follows each one.

**Variation 1.** Find all the singular points, in the affine plane, of the Fermat cubic $x^3+y^3=1$, of $E:\ y^2=x^3-x$, of the folium $x^3+y^3=3xy$, and of $G:\ y^2=x^5-x$.
*Hint:* Solve $f=f_x=f_y=0$. Only the folium has a singular point, at the origin. Chapter 3's Variation 1 found the singular point of $G$ at infinity.

**Variation 2.** Find the multiplicity and the tangent lines at the origin of $(x^2+y^2)^2+3x^2y-y^3=0$ and of $(x^2+y^2)^3=4x^2y^2$. Which of these singular points is ordinary?
*Hint:* Look at the lowest-degree terms: $3x^2y-y^3=y(3x^2-y^2)$ and $-4x^2y^2$. Then check your multiplicities against the dimensions of $\mathfrak m^n/\mathfrak m^{n+1}$.

**Variation 3.** Projecting the parabola $x=y^2$ onto the $x$-axis is a morphism between smooth curves. Show that it induces the zero map on tangent spaces at the origin. What does the map look like near the origin?
*Hint:* Use dual numbers. A tangent vector $(a\varepsilon,b\varepsilon)$ at the origin of $x=y^2$ must satisfy $a\varepsilon=b^2\varepsilon^2=0$. Near the origin, every nonzero value of $x$ has two preimages; Chapter 8 calls the origin a ramification point. This is [H, Ex. I.5.10(c)].

**Variation 4.** Show that the cusps $y^2=x^3$ and $y^2=x^5$ have the same tangent space, multiplicity, tangent cone and graded ring at the origin. Can you find an invariant that separates them?
*Hint:* Both graded rings are $k[x,y]/(y^2)$. Use the parametrizations $(t^2,t^3)$ and $(t^2,t^5)$ to list the possible orders in $t$ of the functions in each local ring. You should get $\{0,2,3,4,\dots\}$ and $\{0,2,4,5,6,\dots\}$. Chapter 6 shows that this set of orders is a local invariant. The number of missing orders, 1 for the first and 2 for the second, is the $\delta$-invariant of Chapter 12.

**Variation 5.** Let $p$ be a smooth point of the curve $F$, and $G$ another curve. Show that $I_p(F,G)=\operatorname{ord}_p(g)$, where $g$ is the equation of $G$ restricted to $F$. Deduce Chapter 3's property (f).
*Hint:* $\mathcal O_{\mathbb{A}^2,p}/(f,g)\cong\mathcal O_{F,p}/(g)$, and if $g=u\,t^n$ then $\mathcal O_{F,p}/(t^n)$ has basis $1,t,\dots,t^{n-1}$. Check the result on the parabola $y=x^2$ and the line $y=0$.

## Reading Map

- **[F, §2.4–2.5 and §3.1–3.2]:** local rings, discrete valuation rings, multiple points and tangent lines. §3.2 proves that a point is simple exactly when its local ring is a DVR, and that the multiplicity can be read from $\mathfrak m^n/\mathfrak m^{n+1}$.
- **[H, I.5]:** nonsingular varieties, the Jacobian criterion and regular local rings (Theorem 5.1). Exercises I.5.3 (multiplicities), I.5.10 (the Zariski tangent space) and I.5.14 (analytically isomorphic singularities) extend this chapter.
- **[H, Ex. II.2.8]:** tangent vectors as morphisms from the dual numbers, in the language of schemes.
- **[AM, Chapters 9–11]:** discrete valuation rings, graded rings and the dimension theory of local rings.
- **D. Eisenbud, *Commutative Algebra with a View Toward Algebraic Geometry*,** §5.4: the tangent cone as an associated graded ring, in general.
- **I. R. Shafarevich, *Basic Algebraic Geometry 1*,** Chapter II, §1: singular and nonsingular points, tangent spaces and tangent cones, with many examples.
- **C. T. C. Wall, *Singular Points of Plane Curves*:** for readers who want to classify singular points, using and extending the invariants of this chapter.
