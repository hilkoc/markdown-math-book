# A Bijection That Isn't an Isomorphism

## The Problem

> **Problem 2.** The map
> $$\varphi:\mathbb{A}^1\to C,\qquad t\mapsto(t^2,t^3),$$
> is a bijection from the line onto the cusp $C:\ y^2=x^3$. Is it an isomorphism? Is the cusp "the same curve" as the line?
>
> Then answer the same question for the circle $x^2+y^2=1$ and the hyperbola $xy=1$, over $\mathbb{C}$, over $\mathbb{R}$ and over $\mathbb{Q}$.

Chapter 1 left this question open. There the cusp behaved like a line in disguise: lines through its singular point parametrize it, and the parameter comes back as $t=y/x$. The circle's rational points matched the projective line one for one. Yet the cusp has a sharp point and a line does not, and the real circle is a closed loop while the hyperbola falls into two branches.

To answer the problem we must decide what "the same" should mean. Then we must find a way to *prove* that two curves are different. That is harder, because it means ruling out every possible map between them, not just the one in front of us.

Throughout, $\mathbb{A}^n$ denotes affine $n$-space $k^n$, so $\mathbb{A}^1$ is the line and $\mathbb{A}^2$ the plane. As promised in the preface, $k$ is algebraically closed from now on unless we say otherwise. In this chapter we say otherwise in Part B, where the choice of field is the whole point.

## First Attempts

Start with the cusp. The map $\varphi$ is certainly a bijection. If $(x,y)$ lies on $C$ and $x\neq0$, then $t=y/x$ satisfies $t^2=y^2/x^2=x$ and $t^3=t\cdot t^2=y$, so $(x,y)=\varphi(t)$. The origin is $\varphi(0)$, and nothing else maps there, since $t^2=0$ forces $t=0$. So the inverse map is
$$\psi(x,y)=\begin{cases}y/x, & x\neq0,\\ 0, & (x,y)=(0,0).\end{cases}$$

**Topology can't tell.** Over $\mathbb{R}$ or $\mathbb{C}$ with the usual topology, $\psi$ is continuous. Away from the origin it is a quotient of continuous functions, and on the cusp $|y/x|=|x|^{1/2}$, which tends to $0$ at the origin. So $\varphi$ is a homeomorphism. The sharp point in the real picture is invisible to topology: the real cusp is a bent copy of the real line, just as the graph of $|x|$ is.

**Counting points can't tell.** The formulas for $\varphi$ and $\psi$ make sense over every field, so the cusp and the line have the same number of points over every finite field. In Chapter 1, point counts revealed differences between curves. Here they reveal nothing.

**Is the inverse a polynomial?** What we really want is for $\psi$ to be given by a polynomial $g(x,y)$. Then $\varphi$ and $\psi$ would be polynomial maps in both directions, which is surely what "isomorphism" ought to mean. But $\varphi$ turns each monomial $x^iy^j$ into $t^{2i+3j}$, and $2i+3j$ is never $1$. So $g(t^2,t^3)$ can never equal $t$, and $\psi$ is not a polynomial.

That settles the question for this particular $\varphi$, but not the question we care about. There are infinitely many polynomial maps between the line and the cusp, and some cleverer pair might be inverse to each other. To prove that the cusp is not a line we need an **invariant**. That is a quantity attached to every curve, preserved by isomorphisms, and different for the two curves. Topology and point counts both fail. The failed computation above suggests where to look: it was really a question about *polynomial functions on the curve*.

Now the circle and the hyperbola. Over $\mathbb{C}$ the substitution $u=x+iy$, $v=x-iy$ turns $x^2+y^2$ into $uv$, so the circle looks like the hyperbola in disguise. Over $\mathbb{R}$ the pictures differ: the circle is a compact loop and the hyperbola has two unbounded branches. A polynomial map with real coefficients sends real points to real points continuously. So an isomorphism over $\mathbb{R}$ would give a homeomorphism between the two pictures, and there is none. Over $\mathbb{R}$, then, topology settles the question.

Over $\mathbb{Q}$ it does not. There is no useful topology, and both curves have infinitely many rational points: Chapter 1 found the circle's, and the hyperbola has $(a,1/a)$ for every $a\neq0$. Over $\mathbb{Q}$, too, we need an invariant that algebra can compute.

## The Ideas We Need

The plan is to replace a curve by its ring of polynomial functions. Then "isomorphic curves" becomes "isomorphic rings", and anything defined from the ring structure alone becomes an invariant. The ring will turn out to remember far more than the points do.

### Algebraic sets and their ideals {-}

For a set $S$ of polynomials, $V(S)\subset\mathbb{A}^n$ is the set of their common zeros; sets of this form are **algebraic sets**. For a subset $X\subset\mathbb{A}^n$, $I(X)$ is the ideal of polynomials that vanish on $X$. Then $V(I(X))=X$ for every algebraic set $X$, and $I(V(J))\supseteq J$ for every ideal $J$.

That last inclusion can be strict, and how strict depends on the field. Over $\mathbb{R}$ the polynomial $x^2+y^2+1$ has no zeros at all, so $I(V(x^2+y^2+1))$ is the whole ring: the real points have forgotten the equation entirely. Over an algebraically closed field this cannot happen.

**Hilbert's Nullstellensatz.** Let $k$ be algebraically closed and $J\subset k[x_1,\dots,x_n]$ an ideal. Then $I(V(J))=\sqrt J$, the set of polynomials some power of which lies in $J$. Two consequences matter here.

1. Every maximal ideal of $k[x_1,\dots,x_n]$ has the form $(x_1-a_1,\dots,x_n-a_n)$ for a unique point $(a_1,\dots,a_n)$.
2. If $f\in k[x,y]$ is irreducible, then $I(V(f))=(f)$. In words: a polynomial that vanishes on the curve $f=0$ is a multiple of $f$. (The ideal $(f)$ is prime, so it equals its own radical.)

> **Look up.** The Nullstellensatz and its corollaries: [F, §1.7], or [H, I.1, Theorem 1.3A and Corollary 1.4]. For an algorithmic treatment, see Cox–Little–O'Shea, Chapter 4.

### Coordinate rings {-}

**Definition 2.1.** The **coordinate ring** of an algebraic set $X\subset\mathbb{A}^n$ is
$$k[X]=k[x_1,\dots,x_n]/I(X).$$
Its elements are the **polynomial functions** on $X$: two polynomials define the same function on $X$ exactly when their difference lies in $I(X)$.

By the Nullstellensatz, the plane curve defined by an irreducible $f$ has coordinate ring $k[x,y]/(f)$. Here are our four curves.

| Curve | Coordinate ring | Each element can be written uniquely as |
|---|---|---|
| the line | $k[t]$ | a polynomial in $t$ |
| the cusp $y^2=x^3$ | $k[x,y]/(y^2-x^3)$ | $a(x)+b(x)\,y$ |
| the circle $x^2+y^2=1$ | $k[x,y]/(x^2+y^2-1)$ | $a(x)+b(x)\,y$ |
| the hyperbola $xy=1$ | $k[x,y]/(xy-1)\cong k[x,x^{-1}]$ | a Laurent polynomial in $x$ |

The normal form $a(x)+b(x)\,y$ comes from the equation, which is monic of degree 2 in $y$. It lets us trade $y^2$ for a polynomial in $x$: $y^2=x^3$ on the cusp and $y^2=1-x^2$ on the circle. On the hyperbola, $y=1/x$.

> **Look up.** Coordinate rings: [F, §2.1]; [H, I.1].

### Morphisms {-}

**Definition 2.2.** Let $X\subset\mathbb{A}^n$ and $Y\subset\mathbb{A}^m$ be algebraic sets. A **morphism** $F:X\to Y$ is a map given by polynomials, $F=(F_1,\dots,F_m)$ with each $F_i\in k[x_1,\dots,x_n]$, that sends every point of $X$ into $Y$. An **isomorphism** is a morphism that has an inverse morphism.

A morphism pulls functions back. If $g$ is a polynomial function on $Y$, then $F^*g=g\circ F$ is a polynomial function on $X$. The pullback $F^*:k[Y]\to k[X]$ is a homomorphism of $k$-algebras, and it reverses composition: $(G\circ F)^*=F^*\circ G^*$.

**Theorem 2.3 (the dictionary).** The rule $F\mapsto F^*$ is a bijection between morphisms $X\to Y$ and $k$-algebra homomorphisms $k[Y]\to k[X]$. Consequently, $X$ and $Y$ are isomorphic if and only if $k[X]$ and $k[Y]$ are isomorphic as $k$-algebras.

*Proof.* Write $\bar y_1,\dots,\bar y_m$ for the coordinate functions on $Y$. A morphism $F$ is determined by $F^*$, because its components are $F_i=F^*(\bar y_i)$. Changing $F_i$ by an element of $I(X)$ does not change $F$ on $X$.

Conversely, let $h:k[Y]\to k[X]$ be a homomorphism. Choose polynomials $F_i$ representing $h(\bar y_i)$, and put $F=(F_1,\dots,F_m)$. For each $g\in I(Y)$, the polynomial $g(F_1,\dots,F_m)$ represents $h\bigl(g(\bar y_1,\dots,\bar y_m)\bigr)=h(0)=0$, so it vanishes on $X$. Hence, for every $p\in X$, the point $F(p)$ is a zero of every $g\in I(Y)$, which means $F(p)\in V(I(Y))=Y$. So $F$ is a morphism, and $F^*=h$, because both are $k$-algebra homomorphisms that agree on the generators $\bar y_i$.

For the last statement, suppose $F^*$ is an isomorphism with inverse $G^*$. Then $(G\circ F)^*=F^*\circ G^*$ and $(F\circ G)^*=G^*\circ F^*$ are identity maps, so $G\circ F$ and $F\circ G$ are identities by the bijection. The converse is clear. $\square$

So the question "is the cusp a line?" has become a question about rings: is $k[x,y]/(y^2-x^3)$ isomorphic to $k[t]$?

The idea of replacing a space by its ring of functions runs through modern mathematics. Gelfand and Naimark showed in 1943 that a compact Hausdorff space can be recovered from its ring of continuous complex functions. Grothendieck's schemes, which arrive in Chapter 13, push the idea as far as it will go.

**Over other fields.** The proof of Theorem 2.3 never used algebraic closure. What changes over $\mathbb{R}$ or $\mathbb{Q}$ is that the points no longer determine the ring; recall $x^2+y^2=-1$ over $\mathbb{R}$. So for curves with coefficients in such a field we make the ring primary. Two plane curves $f=0$ and $g=0$ with coefficients in $k$ are **isomorphic over $k$** when $k[x,y]/(f)\cong k[x,y]/(g)$ as $k$-algebras. Concretely, there are polynomial maps with coefficients in $k$, in each direction, whose composites are the identity modulo the equations. Chapter 13 explains why this is the right definition.

> **Look up.** Polynomial maps and pullbacks: [F, §2.2]; [H, I.3, Proposition 3.5 and its corollaries]. Cox–Little–O'Shea, Chapter 5, works through coordinate rings with many computed examples.

### Points are maximal ideals {-}

Each point $p\in X$ gives a $k$-algebra homomorphism $k[X]\to k$, evaluation at $p$. Its kernel
$$\mathfrak m_p=\{f\in k[X] : f(p)=0\}$$
is a maximal ideal, because $k[X]/\mathfrak m_p\cong k$ is a field.

**Theorem 2.4.** Let $k$ be algebraically closed. Then $p\mapsto\mathfrak m_p$ is a bijection between the points of $X$ and the maximal ideals of $k[X]$. If $F:X\to Y$ is a morphism, then $F(p)=q$ exactly when $(F^*)^{-1}(\mathfrak m_p)=\mathfrak m_q$.

The first statement is consequence 1 of the Nullstellensatz, passed to the quotient ring. The second holds because $g(F(p))=(F^*g)(p)$, so $g$ vanishes at $F(p)$ exactly when $F^*g$ vanishes at $p$.

So **the ring knows the points**: they are its maximal ideals, and morphisms move them around through the ring. The cusp will show that the points do not know the ring.

> **Look up.** [H, I.3, Theorem 3.2(b)]; [F, §1.7], the corollaries of the Nullstellensatz.

### Invariants from rings {-}

Anything defined purely from the ring structure is an invariant: if $k[X]\cong k[Y]$, the two rings share it. We will use two such invariants.

**Units.** A unit of $k[X]$ is a polynomial function with a polynomial inverse. Over an algebraically closed field the units are exactly the functions with no zeros on $X$. Indeed, $f$ is a unit exactly when it lies in no maximal ideal, and by Theorem 2.4 that means it vanishes at no point. On the line, the units are the nonzero constants, since a nonconstant polynomial has a root. On the hyperbola, $x$ is a unit, with inverse $y$. So the hyperbola is not isomorphic to the line (Variation 2).

**The space $\mathfrak m/\mathfrak m^2$.** Let $\mathfrak m$ be a maximal ideal of $k[X]$, with $k[X]/\mathfrak m\cong k$. Let $\mathfrak m^2$ be the ideal generated by products of two elements of $\mathfrak m$. Then $\mathfrak m/\mathfrak m^2$ is a vector space over $k$. A ring isomorphism carries $\mathfrak m$ to a maximal ideal $\mathfrak m'$ and $\mathfrak m^2$ to $\mathfrak m'^2$, so it induces an isomorphism $\mathfrak m/\mathfrak m^2\cong\mathfrak m'/\mathfrak m'^2$. The dimensions of these spaces, point by point, are therefore invariants.

On the line, every maximal ideal has the form $\mathfrak m=(t-a)$, and $\mathfrak m/\mathfrak m^2$ is spanned by the class of $t-a$, so it has dimension 1. To see this, note that every element of $\mathfrak m$ can be written
$$(t-a)\,g(t)=g(a)\,(t-a)+(t-a)\bigl(g(t)-g(a)\bigr),$$
and the second term lies in $\mathfrak m^2$.

What does $\mathfrak m/\mathfrak m^2$ measure? If $f$ vanishes at $p$, its class in $\mathfrak m_p/\mathfrak m_p^2$ records $f$ to first order at $p$: two functions have the same class when they agree up to terms that vanish to second order. So the dimension counts the independent first-order directions in which a function can leave zero at $p$. Chapter 4 turns this into the tangent space. For now it is just a number we can compute.

> **Look up.** Ideals and units: [AM, Chapter 1]. The space $\mathfrak m/\mathfrak m^2$ returns as the cotangent space in [H, I.5] and in the dimension theory of [AM, Chapter 11].

## The Solution

### Part A: the cusp is not a line {-}

First look at the cusp's ring through the bijection $\varphi$. Pulling back along $\varphi$ sends $x\mapsto t^2$ and $y\mapsto t^3$, so
$$\varphi^*\bigl(a(x)+b(x)\,y\bigr)=a(t^2)+b(t^2)\,t^3.$$
The first term contains only even powers of $t$, and the second only odd powers from $t^3$ up. So $\varphi^*$ is injective, and its image is
$$k[t^2,t^3]=\{a_0+a_2t^2+a_3t^3+a_4t^4+\cdots\},$$
the polynomials whose coefficient of $t$ is zero. In other words, **the cusp's ring is the line's ring with the function $t$ taken out**, and everything else kept.

**Theorem 2.5.** The cusp $y^2=x^3$ is not isomorphic to the line. In particular, $\varphi$ is a bijective morphism that is not an isomorphism.

*Proof.* By Theorem 2.3, it is enough to show that $k[C]\cong k[t^2,t^3]$ is not isomorphic to $k[t]$. Under $\varphi^*$, the maximal ideal of the origin corresponds to
$$M=\{f\in k[t^2,t^3] : f(0)=0\}=\operatorname{span}\{t^2,t^3,t^4,\dots\}.$$
A product of two elements of $M$ has no terms below $t^4$. Conversely, every $t^n$ with $n\geq4$ equals $t^2\cdot t^{n-2}$, a product of two elements of $M$. So $M^2=\operatorname{span}\{t^4,t^5,\dots\}$, and $M/M^2$ has basis $t^2,t^3$, the classes of $x$ and $y$. Its dimension is 2. Every maximal ideal of $k[t]$ has $\mathfrak m/\mathfrak m^2$ of dimension 1. Since these dimensions are invariants, $k[t^2,t^3]\not\cong k[t]$. $\square$

The proof shows exactly where the difference lives: at the origin. On the line, the functions vanishing at $0$ have one first-order direction, spanned by $t$. On the cusp, $t$ is missing. The functions vanishing at the origin start with $t^2$ and $t^3$, and these are independent to first order, because the ring has no $t$ with which to write $t^3=t\cdot t^2$.

At every other point of the cusp the dimension is 1 (Variation 4). So the origin is intrinsically special, and no isomorphism from the line can exist. What topology could not see, the ring sees at once.

Compare the parabola $y=x^2$. The maps $(x,y)\mapsto x$ and $t\mapsto(t,t^2)$ are inverse morphisms, so the parabola *is* a line, with ring $k[x,y]/(y-x^2)\cong k[x]$. Bending a line is harmless. Crushing its tangent direction at a point is not.

**What exactly was lost.** The function $t$ on the line becomes $\psi=y/x$ on the cusp. That is a quotient of two polynomial functions, defined away from the origin, but it is not itself a polynomial function. Two later chapters return to this.

- Chapter 5 calls $\varphi$ a *birational* map: it is an isomorphism away from finitely many points, and it identifies the fields of rational functions, which are $k(t)$ on both sides.
- Chapter 6 sees the inclusion $k[t^2,t^3]\subset k[t]$ as *normalization*. The function $t$ is not in $k[t^2,t^3]$, but it satisfies $t^2-x=0$, an equation with coefficients in the cusp's ring. Adjoining all such elements repairs the singularity.

In characteristic 0, Chapters 7 and 8 will show that a bijective morphism between *smooth* curves is always an isomorphism. The cusp's failure comes entirely from its singular point. In characteristic $p$ even smooth curves can misbehave (Variation 5).

### Part B: the circle and the hyperbola {-}

**Proposition 2.6.** Let $k$ be any field of characteristic $\neq2$ in which $-1$ is a square, say $i^2=-1$. Then the circle and the hyperbola are isomorphic over $k$, via
$$(x,y)\mapsto(u,v)=(x+iy,\;x-iy),\qquad (u,v)\mapsto(x,y)=\Bigl(\frac{u+v}{2},\;\frac{u-v}{2i}\Bigr).$$

*Proof.* The two maps are inverse to each other as maps of the plane. If $x^2+y^2=1$, then $uv=(x+iy)(x-iy)=x^2+y^2=1$. Conversely, if $uv=1$, then
$$\Bigl(\frac{u+v}{2}\Bigr)^2+\Bigl(\frac{u-v}{2i}\Bigr)^2=\frac{(u+v)^2-(u-v)^2}{4}=uv=1.\qquad\square$$

So over $\mathbb{C}$ the circle and the hyperbola are the same curve, and both coordinate rings are $\mathbb{C}[u,u^{-1}]$. Over $\mathbb{R}$ and $\mathbb{Q}$, the units tell them apart.

**Proposition 2.7.** Let $k$ be a field of characteristic $\neq2$ in which $-1$ is not a square. Then the only units of the circle's ring $A=k[x,y]/(x^2+y^2-1)$ are the nonzero constants. Consequently the circle is not isomorphic over $k$ to the hyperbola, whose ring contains the unit $x$.

*Proof.* Adjoin a square root of $-1$: let $K=k(i)$ with $i^2=-1$, so $K\neq k$. Every element of $A_K=K[x,y]/(x^2+y^2-1)$ can be written uniquely as $f+ig$ with $f,g\in A$. Conjugation, $\sigma(f+ig)=f-ig$, is a ring automorphism of $A_K$, and the elements it fixes are exactly those of $A$. By Proposition 2.6 over $K$, we have $A_K=K[u,u^{-1}]$ with $u=x+iy$, and $\sigma(u)=x-iy=u^{-1}$.

The units of a Laurent polynomial ring over a field are the monomials $c\,u^n$. Indeed, suppose $fg=1$, where $f$ has terms from $u^a$ up to $u^b$ and $g$ from $u^c$ up to $u^d$. Then $fg$ has nonzero terms $u^{a+c}$ and $u^{b+d}$, so $a+c=0=b+d$. Since $a\leq b$ and $c\leq d$, this forces $a=b$.

Now a unit of $A$ is also a unit of $A_K$, so it has the form $c\,u^n$, and it is fixed by $\sigma$. But $\sigma(c\,u^n)=\sigma(c)\,u^{-n}$, which equals $c\,u^n$ only if $n=0$ and $\sigma(c)=c$, that is, $c\in k$. $\square$

Combining the two propositions: **over a field of characteristic $\neq2$, the circle and the hyperbola are isomorphic exactly when $-1$ is a square.** Over $\mathbb{C}$ they are the same curve. Over $\mathbb{R}$ and over $\mathbb{Q}$ they are different curves, which become the same once $i$ is adjoined. Curves related like this are called **twists** (or forms) of each other.

Finite fields give a check that needs no theory at all. Over $\mathbb{F}_p$ the hyperbola has $p-1$ points: $(a,1/a)$ for each $a\neq0$. Chapter 1 counted the circle: $p-1$ points if $p\equiv1\pmod4$ and $p+1$ if $p\equiv3\pmod4$. Curves that are isomorphic over $\mathbb{F}_p$ have the same number of $\mathbb{F}_p$-points. So for $p\equiv3\pmod4$ the two curves are different over $\mathbb{F}_p$, and those are exactly the primes for which $-1$ is not a square mod $p$, as Proposition 2.7 predicts.

**What the proof means.** Chapter 1 identified the circle with the projective line minus the two slopes $t=\pm i$, where the second intersection point escaped to infinity. The hyperbola is also a projective line minus two points: $t\mapsto(t,1/t)$ misses $t=0$ and $t=\infty$.

- Over $\mathbb{C}$, any pair of distinct points of the projective line can be moved to any other pair by a Möbius transformation. That is why the curves become isomorphic.
- Over $\mathbb{R}$, the hyperbola misses two *real* points, while the circle misses a *complex-conjugate pair*. No real transformation can move a conjugate pair onto two real points.

The units detect exactly this. A unit is a function whose zeros and poles lie only at the missing points. The hyperbola has $t$, with a zero at $0$ and a pole at $\infty$. Over $\mathbb{C}$ the circle has $(t-i)/(t+i)$, which is $-u$ in disguise. Over $\mathbb{R}$, a function must treat $i$ and $-i$ alike, so it looks like $c\,(t^2+1)^n$. Unless $n=0$, such a function has a pole or a zero of order $2|n|$ at $t=\infty$. That point is *not* missing from the circle: it is Chapter 1's point $P_0$. So the only real units are constants. The principle at work, that zeros and poles must balance, is the subject of Chapter 8.

## What Just Happened

- **A curve is more than its points.** The cusp and the line have the same points: the bijection $\varphi$ works over every field and is even a homeomorphism. But they have different rings of functions, and the ring is what an isomorphism must preserve.
- **The dictionary.** Morphisms $X\to Y$ correspond to $k$-algebra homomorphisms $k[Y]\to k[X]$, with the arrows reversed, and isomorphic curves have isomorphic rings. Over an algebraically closed field the points are the maximal ideals of the ring, so nothing is lost by passing to the ring.
- **Invariants come from ring theory.** Anything definable from the ring is an invariant. We used two: the units, and the dimension of $\mathfrak m/\mathfrak m^2$ at each maximal ideal. The cusp has dimension 2 at the origin, while the line has dimension 1 everywhere.
- **The field matters.** The circle and the hyperbola are isomorphic over $\mathbb{C}$, and over any field containing $\sqrt{-1}$, but not over $\mathbb{R}$ or $\mathbb{Q}$. Over a field that is not algebraically closed the points do not determine the ring, so we make the ring the definition.

## Threads

**What is a curve?** Chapter 1 asked whether "the circle" is its equation or one of its sets of points. Here is a better answer: a curve is its coordinate ring. Over an algebraically closed field the ring determines the points, as maximal ideals. Over $\mathbb{R}$ or $\mathbb{Q}$ it carries information the points have lost. Chapter 3 adds the points at infinity, which no single affine ring can see. Chapter 13 takes the ring-first view to its conclusion: a scheme can be built from any ring at all, and its points are the prime ideals.

**When are two curves the same?** The question is now precise: two curves are the same when their coordinate rings are isomorphic. We have two invariants, but they are blunt. The node $y^2=x^2(x+1)$ also has $\dim\mathfrak m/\mathfrak m^2=2$ at its singular point, so this invariant cannot tell the node from the cusp. Chapter 4 refines it into tangent spaces and tangent cones. Chapter 5 asks a deliberately weaker question: when do two curves have the same field of rational functions? Under that weaker notion the parabola, the circle, the node and the cusp all become the line.

**Which curves can be parametrized?** The cusp is parametrized bijectively by the line, yet it is not isomorphic to the line. So "parametrizable" is weaker than "isomorphic to a line". The right notion, birational equivalence, arrives in Chapter 5.

**The circle, again.** The circle's two missing slopes $\pm i$ reappear in Chapter 3 as its points at infinity, the *circular points* $[1:\pm i:0]$. They explain where the missing intersections of two circles have gone.

## Variations

These are optional. A hint follows each one.

**Variation 1.** Show that the graph $y=g(x)$ of any polynomial is isomorphic to the line. Then show the same for the *twisted cubic* $t\mapsto(t,t^2,t^3)$ in $\mathbb{A}^3$.
*Hint:* Project to the first coordinate. What does the dictionary say about $k[x,y]/(y-g(x))$?

**Variation 2.** (a) Show that the hyperbola $xy=1$ is not isomorphic to the line, over any field. (b) Show that the real circle is not isomorphic over $\mathbb{R}$ to the line, even though both coordinate rings have only constant units.
*Hint:* (a) Units. (b) An isomorphism of $\mathbb{R}$-algebras stays an isomorphism after adjoining $i$, that is, after tensoring with $\mathbb{C}$. What are the units then?

**Variation 3.** (a) Show that the node $y^2=x^2(x+1)$ is not isomorphic to the line. (b) Can you find any way to tell the node from the cusp?
*Hint:* (a) Compute $\mathfrak m/\mathfrak m^2$ at the origin; the equation has no linear terms there. (b) Their spaces $\mathfrak m/\mathfrak m^2$ both have dimension 2, so you need something finer. Compare what the parametrizations $t\mapsto(t^2-1,\,t(t^2-1))$ and $t\mapsto(t^2,t^3)$ from Chapter 1 do near the singular point. Chapter 4 makes this rigorous.

**Variation 4.** Let $q=(a^2,a^3)$, with $a\neq0$, be a point of the cusp other than the origin. Show that $\mathfrak m_q/\mathfrak m_q^2$ has dimension 1.
*Hint:* Put $X=x-a^2$ and $Y=y-a^3$. The equation $y^2=x^3$ becomes $2a^3Y+Y^2=3a^4X+3a^2X^2+X^3$, which shows that $Y\equiv\tfrac{3a}{2}X$ modulo $\mathfrak m_q^2$. So the dimension is at most 1. For the other inequality, pull functions back to $k[t]$ and send $f\mapsto f'(a)$. This map is zero on $\mathfrak m_q^2$ but not on $X$.

**Variation 5.** Let $k$ be algebraically closed of characteristic $p>0$. Show that $t\mapsto t^p$ is a bijective morphism $\mathbb{A}^1\to\mathbb{A}^1$ that is not an isomorphism. This is the *Frobenius morphism*; compare [H, Ex. I.3.2].
*Hint:* For bijectivity, factor $x^p-a$ in $k[x]$. For the rest, what is the image of the pullback?

## Reading Map

- **[F, Chapters 1–2]:** algebraic sets, the Nullstellensatz, coordinate rings and polynomial maps, with many short problems in the spirit of this chapter.
- **[H, I.1 and I.3]:** the same material in the language the rest of this book uses. Exercise I.3.2 is our Problem 2, together with the Frobenius example of Variation 5.
- **D. Cox, J. Little and D. O'Shea, *Ideals, Varieties, and Algorithms*,** Chapters 3–5: implicitization by elimination, the Nullstellensatz, and coordinate rings, all with algorithms you can run.
- **M. Reid, *Undergraduate Algebraic Geometry*,** Part II: affine varieties, the Nullstellensatz and functions on varieties, briskly and with a strong point of view.
- **I. R. Shafarevich, *Basic Algebraic Geometry 1*,** Chapter I: regular functions and regular maps on affine varieties, with many examples.
- **[AM, Chapters 1, 5 and 7]:** rings and ideals, integral dependence and Noetherian rings, which together are the algebra behind the Nullstellensatz.
- **D. Hilbert, "Über die vollen Invariantensysteme",** *Mathematische Annalen* 42 (1893): where the Nullstellensatz first appears, as a tool in invariant theory.
- **[Si, X.2]:** twists of curves, for readers who want the general form of the circle–hyperbola story.
