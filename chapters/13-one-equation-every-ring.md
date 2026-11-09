# One Equation, Every Ring: Schemes

## The Problem

> **Problem 13.** The equation $x^2+y^2=1$ makes sense over every commutative ring. Find one geometric object, built from an equation and a ring, that does the following.
> (a) It tells the real curve $x^2+y^2=-1$, which has no real points, apart from the empty curve.
> (b) It tells the "circle" over $\mathbb{F}_2$, where $x^2+y^2-1=(x+y+1)^2$, apart from the line $x+y+1=0$, and it says in what sense the circle is that line counted twice.
> (c) It contains the circle over $\mathbb{Q}$ and the circles over all the fields $\mathbb{F}_p$ as parts of a single object over $\mathbb{Z}$.

Chapter 1 refused to identify a curve with any one of its sets of points and promised a final answer in this chapter. Since then we have had two working answers. Over an algebraically closed field, a curve is its coordinate ring, by the Nullstellensatz (Chapter 2), and curves that do not fit in one chart are glued together with a sheaf of functions (Chapter 7). The three parts of the problem mark exactly where those tools stop: fields that are not algebraically closed, rings with nilpotent elements, and rings that are not fields at all.

This chapter opens Part IV. Readers who came straight from Chapter 7, as the preface allows, need nothing beyond Chapters 1–7.

## First Attempts

**Points with coordinates in the field.** The real points of $x^2+y^2=-1$ form the empty set, and so do the real points of $1=0$. And over every field the doubled line and the line have the same points, because $(a+b+1)^2=0$ forces $a+b+1=0$ in a field. Sets of points over fields see neither difference.

**Complex points, with conjugation.** Over $\mathbb{R}$ we could take the complex points together with the action of complex conjugation, and recover the real points as the fixed points. The complex curve $a^2+b^2=-1$ is certainly not empty, and conjugation has no fixed points on it. This handles part (a), and it is how Chapter 2 proved that the circle and the hyperbola differ over $\mathbb{R}$. But it fails for part (b), because a field has no nilpotent elements, so the doubled line still looks like the line. It also fails for part (c), because reduction modulo $p$ is not an extension of fields.

**Use the ring.** The coordinate ring sees everything. The ring $\mathbb{R}[x,y]/(x^2+y^2+1)$ is not zero, the ring $\mathbb{F}_2[x,y]/\bigl((x+y+1)^2\bigr)$ is not $\mathbb{F}_2[x,y]/(x+y+1)$, and the ring $\mathbb{Z}[x,y]/(x^2+y^2-1)$ maps both to $\mathbb{Q}[x,y]/(x^2+y^2-1)$ and to every $\mathbb{F}_p[x,y]/(x^2+y^2-1)$. What is missing is geometry: points, open sets, local rings and gluing.

Chapter 2 identified points with maximal ideals, but over $\mathbb{Z}$ that breaks down. Evaluating at the rational point $(\frac35,\frac45)$ is a ring map from $\mathbb{Z}[x,y]/(x^2+y^2-1)$ onto $\mathbb{Z}[\frac15]$, since $\frac15=\frac45-\frac35$. Its kernel is the pullback of a maximal ideal of the rational coordinate ring, yet it is not maximal, because $\mathbb{Z}[\frac15]$ is not a field. A rational point should give a point, so we need more than maximal ideals.

## The Ideas We Need

### The prime spectrum {-}

**Definition 13.1.** Let $A$ be a commutative ring. Its **spectrum** $\operatorname{Spec}A$ is the set of prime ideals of $A$.

- The **residue field** at a point $\mathfrak p$ is $k(\mathfrak p)$, the fraction field of $A/\mathfrak p$. The **value** of $f\in A$ at $\mathfrak p$ is its image $f(\mathfrak p)\in k(\mathfrak p)$.
- The closed sets of the **Zariski topology** are the sets $V(I)=\{\mathfrak p:\mathfrak p\supseteq I\}$, and the sets $D(f)=\{\mathfrak p:f\notin\mathfrak p\}$, where $f$ does not vanish, form a basis of open sets.
- A point is **closed** exactly when it is a maximal ideal. If $A$ is a domain, the point $(0)$ is its **generic point**, and its closure is all of $\operatorname{Spec}A$.

A ring map $\varphi:A\to B$ gives a continuous map $\operatorname{Spec}B\to\operatorname{Spec}A$, sending $\mathfrak q$ to $\varphi^{-1}(\mathfrak q)$. That is why primes are used: the preimage of a prime ideal is prime, while the preimage of a maximal ideal need not be maximal.

Some spectra we already know.

- **$k[t]$, with $k$ algebraically closed.** The closed points are the ideals $(t-a)$, one for each $a\in k$, with residue field $k$. There is one more point, the generic point $(0)$, whose residue field is $k(t)$. Chapter 5's function field is the residue field of a point.
- **$k[x,y]/(f)$, with $f$ irreducible.** The closed points are the points of the curve (Chapter 2), and the generic point has residue field $k(C)$. The classical curve is recovered, with one extra point that lies everywhere at once.
- **$\mathbb{R}[t]$.** The closed points are the $(t-a)$ with $a$ real, with residue field $\mathbb{R}$, and the $(t^2+bt+c)$ with $b^2<4c$, with residue field $\mathbb{C}$. A point of the second kind is a pair of complex conjugate numbers, exactly as Variation 2 of Chapter 6 found for places.
- **$\mathbb{Z}$.** The closed points are the primes $(p)$, with residue fields $\mathbb{F}_p$, and the generic point $(0)$ has residue field $\mathbb{Q}$. Number theory has its own "line".

> **Look up.** The prime spectrum and the Zariski topology: [AM, Chapter 1, Exercises 15–28]; [H, II.2]; [V], Chapter 3. Mumford's *Red Book*, Chapter II, §1, draws the spectrum of $\mathbb{Z}[x]$ (Variation 1).

### Functions on a spectrum {-}

**Theorem 13.2.** On $\operatorname{Spec}A$ there is a sheaf of rings $\mathcal O$, unique up to isomorphism, with $\mathcal O\bigl(D(f)\bigr)=A_f$ for every $f\in A$. Its stalk at $\mathfrak p$ is the local ring $A_{\mathfrak p}$, and $\mathcal O(\operatorname{Spec}A)=A$.

> **Look up.** [H, II.2, Propositions 2.2 and 2.3]; [V], Chapter 4.

For a domain $A$ that is the coordinate ring of a curve over an algebraically closed field, this is Chapter 7's sheaf, $\mathcal O(U)=\bigcap_{P\in U}\mathcal O_P$. What is new is that an element of $A$ is no longer determined by its values. An element whose value is 0 at every point lies in every prime ideal, and those elements are exactly the nilpotents [AM, Proposition 1.8]. So when $A$ has nilpotents, a function carries more information than its values. That extra information is what part (b) needs.

### Schemes {-}

**Definition 13.3.** An **affine scheme** is a space $\operatorname{Spec}A$ together with the sheaf $\mathcal O$ of Theorem 13.2. A **scheme** is a space $X$ with a sheaf of rings $\mathcal O_X$ that can be covered by open sets, each of which, with the restricted sheaf, is isomorphic to an affine scheme. A **morphism** of schemes $\varphi:X\to Y$ is a continuous map together with pullback maps on functions, compatible with restriction, that pull functions vanishing at $\varphi(x)$ back to functions vanishing at $x$.

Projective space $\mathbb{P}^n_A$ is a scheme. It is glued from $n+1$ copies of $\mathbb{A}^n_A=\operatorname{Spec}A[x_1,\dots,x_n]$, just as Chapter 3 glued charts. Chapter 7's abstract curves become schemes once a generic point is added.

**Theorem 13.4.**

1. For a scheme $X$ and a ring $A$, the morphisms $X\to\operatorname{Spec}A$ correspond to the ring maps $A\to\mathcal O_X(X)$. In particular, $A\mapsto\operatorname{Spec}A$ reverses arrows and identifies rings with affine schemes.
2. Over an algebraically closed field $k$, varieties correspond to the integral separated schemes of finite type over $k$. Passing from a variety to its scheme adds a generic point for each irreducible closed subset.

> **Look up.** [H, II.2, Proposition 2.3 and Ex. 2.4]; [H, II.2, Proposition 2.6, and II.4, Proposition 4.10].

So Chapter 2's dictionary between curves and rings now holds literally, over every ring. "Separated" is an analogue of the Hausdorff condition. It rules out pathologies such as the line glued to itself everywhere except at the origin, which has two origins [H, II.4].

### Schemes over a base {-}

**Definition 13.5.** Fix a scheme $S$, usually $\operatorname{Spec}$ of a field or of $\mathbb{Z}$. An **$S$-scheme** is a scheme $X$ with a morphism $X\to S$.

- The **fibre product** $X\times_SY$ of two $S$-schemes always exists. For affine schemes, $\operatorname{Spec}B\times_{\operatorname{Spec}R}\operatorname{Spec}C=\operatorname{Spec}(B\otimes_RC)$.
- **Base change** along $T\to S$ gives the $T$-scheme $X_T=X\times_ST$.
- The **fibre** of $X\to S$ over a point $s$ is $X_s=X\times_S\operatorname{Spec}k(s)$.

For $X=\operatorname{Spec}\mathbb{Z}[x,y]/(f)$, the fibre over $(p)$ is $\operatorname{Spec}\mathbb{F}_p[x,y]/(f)$, the reduction of $f$ modulo $p$, and the fibre over the generic point $(0)$ is $\operatorname{Spec}\mathbb{Q}[x,y]/(f)$. Base change from $\mathbb{R}$ to $\mathbb{C}$ replaces $A$ by $A\otimes_{\mathbb{R}}\mathbb{C}$, which is the ring $A_K$ used in the proof of Proposition 2.7. One warning: the points of a fibre product are not the pairs of points (Variation 5).

> **Look up.** Fibre products and fibres: [H, II.3, Theorem 3.3 and the discussion after it]; [V], the chapter on fibred products and base change.

### The functor of points {-}

**Definition 13.6.** For schemes $T$ and $X$, the **$T$-points** of $X$ are the morphisms $X(T)=\operatorname{Hom}(T,X)$, and for a ring $R$ we write $X(R)=X(\operatorname{Spec}R)$.

For $X=\operatorname{Spec}\mathbb{Z}[x_1,\dots,x_n]/(f_1,\dots,f_m)$, Theorem 13.4 gives
$$X(R)=\{a\in R^n:\ f_1(a)=\dots=f_m(a)=0\},$$
the solutions of the equations in $R$, for every ring $R$. This is how the book has always used points. $X(\mathbb{Q})$ is Chapter 1's set of rational points, $X(\mathbb{F}_p)$ is Chapter 1's point count, and $X(k[\varepsilon])$, with $\varepsilon^2=0$, is the set of points with tangent vectors (Proposition 4.6). By Yoneda's lemma, a scheme is determined by its functor of points, $R\mapsto X(R)$. Chapter 4 already used this idea: the map from the line to the cusp is a bijection on points over $k$, but not on points over $k[\varepsilon]$.

> **Look up.** D. Eisenbud and J. Harris, *The Geometry of Schemes*, Chapter VI; [V], where the functor of points recurs throughout.

### What a curve is {-}

**Definition 13.7.** Let $k$ be a field. A **curve over $k$** is an integral, separated scheme of finite type over $k$, of dimension 1.

Over an algebraically closed field these are the curves of Chapters 2–12, each with its generic point, and the smooth projective ones correspond to function fields (Chapter 7). The definition also allows curves over $\mathbb{R}$, $\mathbb{Q}$ and $\mathbb{F}_q$ without special pleading. Schemes of dimension 1 that are not integral, such as the doubled line or the crossing lines $xy=0$, are still useful, and they appear as fibres and degenerations of honest curves. That is the final answer to the question Chapter 1 asked.

> **Look up.** [H, II.6], where "curve" is defined in this way; Eisenbud–Harris, Chapters I–II, for many examples.

## The Solution

### (a) A real curve with no real points {-}

Let $A=\mathbb{R}[x,y]/(x^2+y^2+1)$ and $X=\operatorname{Spec}A$. The polynomial $x^2+y^2+1$ is irreducible, so $A$ is a domain, and $X$ has a generic point whose residue field is the function field of the curve. Variation 5 of Chapter 5 showed that this field is not $\mathbb{R}(t)$.

The closed points are the maximal ideals of $A$. Their residue fields are finite extensions of $\mathbb{R}$, so each is $\mathbb{R}$ or $\mathbb{C}$. A residue field $\mathbb{R}$ would give a real solution of $a^2+b^2=-1$, so every closed point has residue field $\mathbb{C}$. Each closed point is a pair of complex conjugate solutions. For example, the ideal $(x,\,y^2+1)$ is the pair $(0,\pm i)$, since $A/(x,y^2+1)\cong\mathbb{R}[y]/(y^2+1)\cong\mathbb{C}$.

In terms of points, $X(\mathbb{R})=\varnothing$ but $X(\mathbb{C})\neq\varnothing$. The empty scheme is $\operatorname{Spec}$ of the zero ring $\mathbb{R}[x,y]/(1)$, which has no $\mathbb{C}$-points either. After base change to $\mathbb{C}$, the substitution $(x,y)\mapsto(ix,iy)$ turns $X_{\mathbb{C}}$ into the circle, which over $\mathbb{C}$ is the hyperbola (Chapter 2). So $X$ is a **form** of the complex circle, a real curve that becomes the circle over $\mathbb{C}$, and it happens to have no real points. The circle and the hyperbola of Chapter 2 are two other forms of the same complex curve.

### (b) A line counted twice {-}

Over $\mathbb{F}_2$, compare
$$B=\mathbb{F}_2[x,y]/\bigl((x+y+1)^2\bigr)\qquad\text{and}\qquad B'=\mathbb{F}_2[x,y]/(x+y+1)\cong\mathbb{F}_2[x].$$
Every prime ideal of $B$ contains the nilpotent element $\varepsilon=x+y+1$, so $\operatorname{Spec}B$ and $\operatorname{Spec}B'$ are the same topological space, the line. The rings differ:
$$B\cong\mathbb{F}_2[x][\varepsilon]/(\varepsilon^2).$$
So the doubled line is the line together with a first-order neighbourhood in the direction across it. Chapter 4's dual numbers are spread along the whole line.

The functor of points sees this. Over $\mathbb{F}_2[\varepsilon]$, the line has 4 points and the doubled line has 8, because $a+b+1$ may be $\varepsilon$ as well as 0. The Jacobian criterion agrees: the gradient of $(x+y+1)^2$ is $2(x+y+1)(1,1)=0$ in characteristic 2, so every point of the doubled line has a two-dimensional tangent space (Variation 4).

"Counted twice" has two precise meanings.

1. **Every line meets it twice.** The line $y=0$ meets the doubled line in $\operatorname{Spec}\mathbb{F}_2[x]/\bigl((x+1)^2\bigr)$, a single point carrying a ring of dimension 2. So Bézout's count from Chapter 3, two intersections for a conic and a line, survives in characteristic 2, provided we keep the scheme and not just its points.
2. **The prime 2 vanishes to order 2 along it.** On the circle over $\mathbb{Z}$,
$$(x+y+1)^2=(x^2+y^2-1)+2(1+x)(1+y)=2(1+x)(1+y).$$
Let $\eta$ be the generic point of the fibre over 2, which is the prime $(2,\,x+y+1)$. There $(1+x)(1+y)$ is a unit, because modulo that prime it becomes the nonzero polynomial $(1+x)x$. So the local ring at $\eta$ is a discrete valuation ring with uniformizer $x+y+1$, and the number 2, viewed as a function on the circle over $\mathbb{Z}$, vanishes there to order exactly 2. The fibre over 2 is the line with multiplicity 2, just as a ramified point of Chapter 8 occurs twice in its fibre. This is the geometric face of the factorization $2=-i(1+i)^2$ in the Gaussian integers (Variation 2).

### (c) The circle over $\mathbb{Z}$ {-}

Let $X=\operatorname{Spec}\mathbb{Z}[x,y]/(x^2+y^2-1)$, with its morphism to $\operatorname{Spec}\mathbb{Z}$.

- **The fibres.** Over the generic point $(0)$, the fibre is Chapter 1's circle over $\mathbb{Q}$. Over an odd prime $p$, it is a smooth conic over $\mathbb{F}_p$, because the gradient $(2x,2y)$ never vanishes on it, with $p-1$ or $p+1$ points with coordinates in $\mathbb{F}_p$ (Chapter 1). Over 2 it is the doubled line. So the family is smooth everywhere except over 2.
- **The points.** $X$ has dimension 2. It is an **arithmetic surface**, with one direction along each curve and one along $\operatorname{Spec}\mathbb{Z}$. Its generic point has residue field $\mathbb{Q}(X)$. Each fibre $X_p$ is a "vertical" curve. The closed points have finite residue fields, and they are the points of the fibres $X_p$ over $\overline{\mathbb{F}}_p$, up to the Frobenius map.
- **Rational points are horizontal curves.** Evaluation at $(\frac35,\frac45)$ is a ring map onto $\mathbb{Z}[\frac15]$, so it is a section of $X$ over $\operatorname{Spec}\mathbb{Z}[\frac15]$, which is $\operatorname{Spec}\mathbb{Z}$ with the point $(5)$ removed. Over each prime $p\neq5$ it passes through the point $(3\cdot5^{-1},4\cdot5^{-1})$ of $X_p$, the rational point reduced modulo $p$. In the projective closure $x^2+y^2=z^2$, the triple $[3:4:5]$ is defined over all of $\mathbb{Z}$. Over 5 it reduces to $[3:4:0]$, a point at infinity of the conic over $\mathbb{F}_5$. Primitive Pythagorean triples are exactly the $\mathbb{Z}$-points of the projective circle over $\mathbb{Z}$.
- **Integral points.** The sections of $X$ over all of $\operatorname{Spec}\mathbb{Z}$ are $X(\mathbb{Z})=\{(\pm1,0),(0,\pm1)\}$.

So the single scheme $X$ contains every circle of Chapter 1: the rational circle as its generic fibre, the finite circles as its other fibres, and the strange doubled line over 2. Each is recovered by base change.

## What Just Happened

- **A ring is a space.** Its points are its prime ideals, each with a residue field. Closed points are maximal ideals, and a domain has a generic point whose residue field is its fraction field.
- **Functions are more than their values.** The structure sheaf gives each open set its ring of functions, and nilpotent functions vanish at every point without being zero.
- **Schemes are glued from spectra.** Morphisms into affine schemes are ring maps, so the dictionary of Chapter 2 holds for every ring, and varieties become schemes once generic points are added.
- **Families and fibres.** A scheme over $\mathbb{Z}$ is a family of schemes over all the prime fields at once, and base change moves between fields.
- **Points with values in rings.** $X(R)$ is the set of solutions in $R$, and the functor $R\mapsto X(R)$ determines the scheme.
- **The problem.** $x^2+y^2=-1$ over $\mathbb{R}$ is a nonempty scheme whose closed points all have residue field $\mathbb{C}$. The circle over $\mathbb{F}_2$ is the line thickened by a nilpotent, and 2 vanishes to order 2 along it. The circle over $\mathbb{Z}$ contains all the circles of Chapter 1 as fibres.

## Threads

**What is a curve?** Definition 13.7 is the end of this thread. A curve was a set of solutions (Chapter 1), then a coordinate ring (Chapter 2), then a projective object (Chapter 3), a set of places (Chapter 6) and a space glued from charts with a sheaf of functions (Chapter 7). A scheme combines all of these, and it works over any field or ring.

**When are two curves the same?** Over a field that is not algebraically closed, curves that become isomorphic after base change, such as the circle, the hyperbola and $x^2+y^2=-1$ over $\mathbb{R}$, are **forms** of one another. Chapter 17 asks whether $E$ and the lemniscate curve, which are isomorphic over $\mathbb{C}$ (Chapter 9), are isomorphic over $\mathbb{Q}$. That is a question about forms.

**Characteristic $p$ and arithmetic.** Reduction modulo $p$ is passing to a fibre. The bad fibre over 2 is the first example of **bad reduction**. Chapter 18 builds codes from curves over finite fields, and the Afterword describes the Weil conjectures, which govern $X(\mathbb{F}_{p^n})$ as $n$ grows.

**Sheaves and cohomology.** The structure sheaf is the first of many sheaves. Chapter 14 introduces the sheaves $\mathcal O(D)$ and $\Omega^1$ on a curve and their cohomology, and it proves that $h^1(\mathcal O)$ is the genus.

**Infinitesimals.** The dual numbers of Chapter 4 were the first scheme-theoretic idea in this book. Nilpotent functions record first-order information, which is what deformation theory and the theory of moduli are built on (Afterword).

## Variations

These are optional. A hint follows each one.

**Variation 1.** Describe all the points of $\operatorname{Spec}\mathbb{Z}[x]$ and sketch it as a surface over $\operatorname{Spec}\mathbb{Z}$, as Mumford did.
*Hint:* Look at the map to $\operatorname{Spec}\mathbb{Z}$. Over $(p)$ the fibre is $\operatorname{Spec}\mathbb{F}_p[x]$, and over $(0)$ it is $\operatorname{Spec}\mathbb{Q}[x]$. The points are $(0)$; $(p)$; $(f)$ for $f$ irreducible in $\mathbb{Z}[x]$ of positive degree; and the maximal ideals $(p,g)$ with $g$ irreducible modulo $p$.

**Variation 2.** Show that $(a,b)\cdot(c,d)=(ac-bd,\,ad+bc)$ makes $X(R)$ a group for every ring $R$, where $X$ is the circle over $\mathbb{Z}$, compatibly with ring maps. So the circle is a **group scheme**. Identify $X(R)$ with the elements of norm 1 in $R[i]$, and deduce that $X(\mathbb{F}_p)$ is cyclic of order $p\mp1$, that $X(\mathbb{C})\cong\mathbb{C}^\times$, and that $X(\mathbb{Z})=\{\pm1,\pm i\}$.
*Hint:* $(a+bi)(c+di)=(ac-bd)+(ad+bc)i$, and norms multiply. For $p\equiv3\pmod4$ the norm-1 elements of $\mathbb{F}_{p^2}^\times$ form a cyclic group of order $p+1$. Over $\mathbb{Z}$, $1+i$ has norm 2, and $2=-i(1+i)^2$ is the factorization behind Section 13.4(b).

**Variation 3.** Revisit Proposition 1.5. Show that the rational points of $x^2+y^2=3z^2$ are its $\mathbb{Z}$-points as a projective scheme over $\mathbb{Z}$. The fibre over 3, $x^2+y^2=0$, has a single $\mathbb{F}_3$-point, $[0:0:1]$, where two lines conjugate over $\mathbb{F}_9$ cross. Show that a $\mathbb{Z}$-point would have to reduce to that point, and that the equation modulo 9 forbids it.
*Hint:* A primitive solution $(a,b,c)$ reduces modulo 3 to $[0:0:1]$, so $3\mid a$ and $3\mid b$. Then $9\mid3c^2$, so $3\mid c$, contradicting primitivity. Over $\mathbb{F}_9$ the fibre is the pair of lines $y=\pm ix$.

**Variation 4.** Compute $X(\mathbb{F}_2[\varepsilon])$ for the doubled line and for the line, and show that every point of the doubled line has a two-dimensional Zariski tangent space. Compare with Proposition 4.6.
*Hint:* An element $c_0+c_1\varepsilon$ of $\mathbb{F}_2[\varepsilon]$ squares to $c_0^2$. So $(a+b+1)^2=0$ means $a+b+1\in\{0,\varepsilon\}$, which gives 8 solutions, against 4 for $a+b+1=0$.

**Variation 5.** Show that $\mathbb{C}\otimes_{\mathbb{R}}\mathbb{C}\cong\mathbb{C}\times\mathbb{C}$, so that $\operatorname{Spec}\mathbb{C}\times_{\operatorname{Spec}\mathbb{R}}\operatorname{Spec}\mathbb{C}$ has two points, although each factor has one. Interpret this for the closed point $(x,y^2+1)$ of $x^2+y^2=-1$, after base change to $\mathbb{C}$.
*Hint:* Use $a\otimes b\mapsto(ab,\,a\bar b)$. After base change, the residue field $\mathbb{C}$ of the real point becomes $\mathbb{C}\otimes_{\mathbb{R}}\mathbb{C}$, and the point splits into the two complex points $(0,i)$ and $(0,-i)$.

## Reading Map

- **[H, II.1–II.3]:** sheaves, schemes and their first properties, fibre products and fibres. Propositions II.2.2–2.3 give the structure sheaf of a spectrum, and Proposition II.2.6 turns varieties into schemes. Exercise II.2.8 is Chapter 4's tangent vectors in scheme language.
- **[V], Chapters 2–4:** sheaves, the spectrum of a ring and the structure sheaf, with many pictures and exercises. Later chapters treat fibred products, base change and the functor of points.
- **D. Eisenbud and J. Harris, *The Geometry of Schemes*,** Chapters I, II and VI: the definitions, a wealth of examples including arithmetic and nonreduced schemes, and schemes as functors.
- **D. Mumford, *The Red Book of Varieties and Schemes*,** Chapter II: the spectrum of a ring, with the famous picture of $\operatorname{Spec}\mathbb{Z}[x]$.
- **[AM, Chapter 1, Exercises 15–28]:** the prime spectrum and its topology, as exercises in commutative algebra.
- **A. Grothendieck and J. Dieudonné, *Éléments de géométrie algébrique I*** (1960): where schemes in their modern form began.
