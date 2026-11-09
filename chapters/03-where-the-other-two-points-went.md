# Where the Other Two Points Went

## The Problem

> **Problem 3.** Two distinct circles meet in at most two points. Yet two curves of degree 2 can meet in four points, and Bézout's theorem promises exactly four intersections for any two conics. Where are the other two intersection points of two circles? Find them, and show that the count comes out to exactly four for *every* pair of distinct circles, whether they cross, touch, miss each other or share a centre.

Why at most two? Subtract the equations of two circles $(x-a_1)^2+(y-b_1)^2=r_1^2$ and $(x-a_2)^2+(y-b_2)^2=r_2^2$. The terms $x^2+y^2$ cancel, leaving a linear equation. So every common point lies on a line, the **radical axis** of the two circles, and by Lemma 1.1 a line meets a circle in at most two points. If the centres coincide, the linear equation reads $r_1^2=r_2^2$, which has no solutions at all for distinct circles.

So two intersection points have gone missing, and they are not the only ones. Chapter 1 kept losing points too. The line $x+y=1$ met the Fermat cubic $x^3+y^3=1$ in two points, though Lemma 1.1 allowed three. The lines of slope $\pm i$ through $(-1,0)$ met the circle only once. Each time, the polynomial that should have had $d$ roots had dropped in degree. This chapter finds the missing points, and with them a count that is always exact.

## First Attempts

Compute some examples. The degrees suggest how many intersections to expect: a line and a curve of degree $d$ should meet $d$ times, and two curves of degrees $m$ and $n$ should meet $mn$ times.

| Curves | Expected | Real points | Complex points |
|----------------------------------------|------------|------------|------------|
| ellipses $x^2+4y^2=4$ and $4x^2+y^2=4$ | 4 | 4 | 4 |
| parabolas $y=x^2$ and $x=y^2$ | 4 | 2 | 4 |
| circles $x^2+y^2=1$ and $(x-1)^2+y^2=1$ | 4 | 2 | 2 |
| circles $x^2+y^2=1$ and $(x-2)^2+y^2=1$ | 4 | 1 | 1 |
| circles $x^2+y^2=1$ and $(x-3)^2+y^2=1$ | 4 | 0 | 2 |
| circles $x^2+y^2=1$ and $x^2+y^2=4$ | 4 | 0 | 0 |
| lines $y=0$ and $y=1$ | 1 | 0 | 0 |
| hyperbola $xy=1$ and line $y=1$ | 2 | 1 | 1 |

Three different things are going wrong.

1. **Points can be complex.** The parabolas $y=x^2$ and $x=y^2$ meet where $x=x^4$, that is at $x=0$, $1$, $\omega$ and $\omega^2$, where $\omega=e^{2\pi i/3}$. Two of the four points are not real. Likewise the circles centred $3$ apart meet at $\bigl(\tfrac32,\pm\tfrac{i\sqrt5}{2}\bigr)$. Working over $\mathbb{C}$ repairs these rows, which is one reason the preface fixed an algebraically closed field.
2. **Points can coincide.** The circles centred $2$ apart touch at $(1,0)$. Substituting their radical axis $x=1$ into $x^2+y^2=1$ gives $y^2=0$, a double root. So this point should count twice, as the tangent points of Chapter 1 did.
3. **Points can vanish altogether.** Parallel lines, concentric circles, and a hyperbola with a line parallel to its asymptote lose points even over $\mathbb{C}$. Here the polynomial we solve has dropped in degree: substituting $y=1$ into $xy=1$ leaves $x=1$, of degree one instead of two.

The third failure is the interesting one, and an experiment shows where the points go. Keep the circle $x^2+y^2=1$ fixed, and slide the centre of the circle $(x-a)^2+y^2=4$ towards the origin. Subtracting the equations gives the radical axis
$$x=\frac{a^2-3}{2a}.$$
As $a\to0$, this line rushes off to infinity, carrying the two intersection points with it. On the circle $y^2=1-x^2$, so $(y/x)^2=1/x^2-1\to-1$. The points do not disappear. They run away in two definite directions, those of the vectors $(1,i)$ and $(1,-i)$.

So we need a geometry in which "infinitely far away in the direction $(1,i)$" is an honest point, and in which points that arrive there can be counted. That geometry is the projective plane.

## The Ideas We Need

### The projective plane {-}

**Definition 3.1.** The **projective plane** $\mathbb{P}^2$ over $k$ is the set of lines through the origin in $k^3$. A point of $\mathbb{P}^2$ is written $[x:y:z]$, where $(x,y,z)\neq(0,0,0)$ is any vector on the line. So $[x:y:z]=[\lambda x:\lambda y:\lambda z]$ for every $\lambda\neq0$. These are **homogeneous coordinates**.

A line through the origin either meets the plane $z=1$ in exactly one point or lies in the plane $z=0$. This splits $\mathbb{P}^2$ into two pieces.

- The points with $z\neq0$ form a copy of the affine plane: $[x:y:z]=[x/z:y/z:1]$ corresponds to $(x/z,\,y/z)$, and $(x,y)\in\mathbb{A}^2$ corresponds to $[x:y:1]$.
- The points with $z=0$ form the **line at infinity**. A point $[u:v:0]$ is a direction $(u,v)$ up to scale, so the line at infinity is a copy of the projective line $\mathbb{P}^1$ of Chapter 1, the set of directions.

Nothing makes $z$ special. The points with $x\neq0$, and those with $y\neq0$, also form copies of $\mathbb{A}^2$, and these three **affine charts** cover $\mathbb{P}^2$. An invertible $3\times3$ matrix acts on $\mathbb{P}^2$. These **projective transformations** can carry any line to any other, including the line at infinity. In $\mathbb{P}^2$, "infinity" is just one line among many.

> **Look up.** Projective space and its affine charts: [F, §4.1–4.2]; [H, I.2].

### Projective curves and their points at infinity {-}

A polynomial $F(x,y,z)$ is a **form** of degree $d$ if all its terms have degree $d$. Then $F(\lambda x,\lambda y,\lambda z)=\lambda^dF(x,y,z)$, so whether $F$ vanishes at $[x:y:z]$ does not depend on the chosen coordinates. A **projective plane curve** of degree $d$ is the zero set of a nonconstant form of degree $d$.

**Definition 3.2.** Let $f(x,y)$ have degree $d$. Its **homogenization** is the form
$$F(x,y,z)=z^d\,f(x/z,\,y/z),$$
obtained by multiplying each term of $f$ by the power of $z$ that brings it up to degree $d$. The curve $F=0$ is the **projective closure** of the affine curve $f=0$.

Setting $z=1$ recovers $f$, so the projective closure contains the affine curve as its points with $z\neq0$. Its remaining points lie on the line at infinity. Setting $z=0$ kills every term except those of top degree, so these **points at infinity** are the zeros of the top-degree part $f_d(x,y)$. They are the directions in which the curve runs off to infinity.

| Affine curve | Projective closure | Points at infinity |
|---|---|---|
| line $ax+by=c$ | $ax+by=cz$ | $[b:-a:0]$, its direction |
| circle $x^2+y^2=1$ | $x^2+y^2=z^2$ | $[1:i:0]$ and $[1:-i:0]$ |
| hyperbola $xy=1$ | $xy=z^2$ | $[1:0:0]$ and $[0:1:0]$ |
| parabola $y=x^2$ | $yz=x^2$ | $[0:1:0]$, as a double root |
| Fermat cubic $x^3+y^3=1$ | $x^3+y^3=z^3$ | $[1:-1:0]$, $[1:-\omega:0]$ and $[1:-\omega^2:0]$ |

Parallel lines have the same direction, so their closures meet at a point at infinity. The hyperbola's points at infinity are the directions of its asymptotes. The parabola touches the line at infinity: setting $z=0$ in $yz=x^2$ leaves $x^2=0$, a double root.

The two points at infinity of the circle are the directions $(1,\pm i)$ that the escaping points were heading for. They have names: $I=[1:i:0]$ and $J=[1:-i:0]$ are the **circular points**.

> **Look up.** Homogenization and projective closure: [F, §4.3]; [H, Exercise I.2.9].

### Lines meet curves in exactly $d$ points {-}

Here is the promise made in Chapter 1.

**Lemma 3.3.** Over an algebraically closed field, every nonzero form $G(s,t)$ of degree $d$ in two variables is a product of $d$ linear forms.

*Proof.* Write $g(s)=G(s,1)$, a polynomial of some degree $e\leq d$. Over an algebraically closed field it factors as $g(s)=c\prod_{j=1}^e(s-\alpha_j)$. Then $G(s,t)=c\,t^{d-e}\prod_{j=1}^e(s-\alpha_jt)$, since a form of degree $d$ is determined by its values at $t=1$. $\square$

The factor $t^{d-e}$ is where Chapter 1's degree drops went. The missing roots sit at the point $[1:0]$ of the parameter line, which is at infinity.

**Proposition 3.4.** Let $F$ be a projective plane curve of degree $d$ over an algebraically closed field, and $L$ a line that is not a component of $F$. Then $L$ meets $F$ in exactly $d$ points, counted with multiplicity.

*Proof.* Choose two points $A,B$ that span $L$, so that the points of $L$ are $sA+tB$ for $[s:t]\in\mathbb{P}^1$. Then $G(s,t)=F(sA+tB)$ is a form of degree $d$, and it is not identically zero because $L$ is not a component of $F$. Its linear factors, from Lemma 3.3, correspond to the intersection points. The **multiplicity** of an intersection point is the number of times its factor occurs, and there are $d$ factors in all. $\square$

### Intersection multiplicity {-}

For two curves we need a multiplicity that still works when neither curve is a line. The definition is local and algebraic.

**Definition 3.5.** Let $F$ and $G$ be projective plane curves with no common component through a point $P$. Choose an affine chart containing $P$, let $f$ and $g$ be the equations of $F$ and $G$ in that chart, and let $\mathcal O_P$ be the ring of rational functions $a/b$ with $b(P)\neq0$. The **intersection multiplicity** of $F$ and $G$ at $P$ is
$$I_P(F,G)=\dim_k\ \mathcal O_P/(f,g).$$

The number measures how many independent conditions it takes, near $P$, to vanish on both curves. In practice we rarely compute it from the definition. Fulton shows that seven simple properties determine it completely, and these are the ones we need:

- (a) $I_P(F,G)=0$ exactly when $P$ is not on both curves.
- (b) $I_P(F,G)=I_P(G,F)$, and $I_P$ is unchanged by projective transformations.
- (c) $I_P(F,G)=I_P(F,\,G+AF)$ for any form $A$ that makes $G+AF$ homogeneous.
- (d) $I_P(F,GH)=I_P(F,G)+I_P(F,H)$.
- (e) If $L$ is a line, $I_P(F,L)$ is the multiplicity from Proposition 3.4.
- (f) If both curves are smooth at $P$ with different tangent lines there, then $I_P(F,G)=1$.

**Example.** Take the concentric circles $x^2+y^2=z^2$ and $x^2+y^2=4z^2$ at the point $I=[1:i:0]$. In the chart $x=1$, the point $I$ has coordinates $(y,z)=(i,0)$, and the equations become $f=1+y^2-z^2$ and $g=1+y^2-4z^2$. The ideal $(f,g)$ also contains $f-g=3z^2$. It therefore contains $z^2$, and with it $f+z^2=(y-i)(y+i)$. Since $y+i$ does not vanish at $I$, it is a unit in $\mathcal O_I$, so $y-i$ lies in the ideal as well. Hence $(f,g)=(y-i,\,z^2)$ in $\mathcal O_I$, and the quotient has basis $1,z$. So $I_I=2$.

In fact both circles have the tangent line $x+iy=0$ at $I$: they are tangent there. By symmetry $I_J=2$ as well, so the total is $4$. In the experiment of Section 3.2, one escaping point landed on $I$, which was already an intersection point, and the other on $J$.

> **Look up.** Local rings: [F, §2.4]. Intersection numbers, the seven properties, and how to compute with them: [F, §3.3]. A more general treatment: [H, I.7].

### Bézout's theorem {-}

**Theorem 3.6 (Bézout).** Let $F$ and $G$ be projective plane curves of degrees $m$ and $n$ over an algebraically closed field, with no common component. Then
$$\sum_{P}I_P(F,G)=mn.$$

Fulton's proof is a short dimension count. Take forms of a large degree $N$ and divide out by those of the form $AF+BG$. Forms of degree $N$ in three variables make up a space of dimension $\binom{N+2}{2}$. Since $F$ and $G$ have no common factor, an inclusion–exclusion count gives the quotient dimension
$$\binom{N+2}{2}-\binom{N-m+2}{2}-\binom{N-n+2}{2}+\binom{N-m-n+2}{2}=mn.$$
A second step shows that this quotient has the same dimension as the sum of the local intersection numbers.

Versions of the count go back to Newton and Maclaurin, and Étienne Bézout's treatise of 1779 attached his name to it. Defining multiplicities so that the count is always exact took much longer.

> **Look up.** Bézout's theorem: [F, §5.3]; [H, I.7, Corollary 7.8], where it is a special case of a theorem about hypersurfaces in $\mathbb{P}^n$.

## The Solution

### Every circle passes through $I$ and $J$ {-}

**Proposition 3.7.** The projective closure of every circle $(x-a)^2+(y-b)^2=r^2$ with $r\neq0$ passes through the circular points $I$ and $J$. It meets the line at infinity only there, with multiplicity 1 at each. Conversely, suppose the closure of a curve
$$\alpha x^2+\beta xy+\gamma y^2+(\text{terms of degree}\leq1)=0$$
passes through $I$ and $J$. Then $\beta=0$ and $\alpha=\gamma$, so the curve is a circle, possibly a degenerate one.

*Proof.* The closure is $(x-az)^2+(y-bz)^2=r^2z^2$. Setting $z=0$ leaves $x^2+y^2=(x+iy)(x-iy)$, whose two distinct linear factors give $I$ and $J$, each with multiplicity 1. For the converse, setting $z=0$ leaves $\alpha x^2+\beta xy+\gamma y^2$. It vanishes at $(1,\pm i)$ exactly when $\alpha\pm\beta i-\gamma=0$, that is, when $\beta=0$ and $\alpha=\gamma$. $\square$

So the circular points lie on every circle. Poncelet noticed this in his *Traité des propriétés projectives des figures* of 1822. He had worked out much of projective geometry as a prisoner of war in Russia in 1813–14. The circular points are the answer to the problem.

### Two circles meet four times {-}

**Theorem 3.8.** Let $C_1$ and $C_2$ be distinct circles with real centres and nonzero radii. Over $\mathbb{C}$, their projective closures meet in exactly four points, counted with multiplicity:

- the circular points $I$ and $J$, each with multiplicity 1 if the centres differ and 2 if the centres coincide;
- if the centres differ, the two points where $C_1$ meets the radical axis, counted with multiplicity. Both are affine.

*Proof.* Write the closures as $F_j=x^2+y^2-2a_jxz-2b_jyz+c_jz^2$, where $c_j=a_j^2+b_j^2-r_j^2$. Subtracting,
$$F_2-F_1=z\cdot\ell,\qquad \ell=2(a_1-a_2)\,x+2(b_1-b_2)\,y+(c_2-c_1)\,z.$$
If the centres differ, $\ell=0$ is the radical axis. If they coincide, $\ell=(c_2-c_1)\,z$ is a nonzero multiple of $z$, because the circles are distinct.

By properties (c) and (d), at every point $P$,
$$I_P(F_1,F_2)=I_P(F_1,\,z\ell)=I_P(F_1,z)+I_P(F_1,\ell).$$
The conic $F_1$ is irreducible, so neither $z$ nor $\ell$ is a component of it. By Proposition 3.4, each of the two terms sums to $2$ over all $P$, and the total is $4$.

The line at infinity $z=0$ contributes $I$ and $J$ once each, by Proposition 3.7. If the centres coincide, $\ell$ contributes them once more. Otherwise $\ell$ meets the line at infinity at $[b_1-b_2:\,a_2-a_1:\,0]$. That is a real point, so it is not on the circle, and both intersections of $\ell$ with $C_1$ are affine. $\square$

Here is the theorem in our four examples.

| Circles | On the radical axis | At $I$ and $J$ | Total |
|---|---|---|---|
| $x^2+y^2=1$, $(x-1)^2+y^2=1$ | $\bigl(\tfrac12,\pm\tfrac{\sqrt3}2\bigr)$, once each | once each | 4 |
| $x^2+y^2=1$, $(x-2)^2+y^2=1$ | $(1,0)$, twice | once each | 4 |
| $x^2+y^2=1$, $(x-3)^2+y^2=1$ | $\bigl(\tfrac32,\pm\tfrac{i\sqrt5}2\bigr)$, once each | once each | 4 |
| $x^2+y^2=1$, $x^2+y^2=4$ | none | twice each | 4 |

The other two intersection points of two circles are always $I$ and $J$. They are invisible in the real picture because they are neither real nor finite. When the centres merge, the radical axis becomes the line at infinity itself, and the two remaining intersections pile onto $I$ and $J$. That is what the experiment in Section 3.2 showed.

### Back to Chapter 1 {-}

The points that went missing in Chapter 1 now turn up where they should.

- **The circle and the lines of slope $\pm i$.** The line $y=i(x+1)$ has closure $y=i(x+z)$. On the circle $x^2+y^2=z^2$ this gives $x^2-(x+z)^2-z^2=-2z(x+z)$. The roots are $P_0=[-1:0:1]$ and, from $z=0$, the circular point $I$. The second intersection point that escaped in Chapter 1 is $I$.
- **The Fermat cubic and the line $x+y=1$.** The closure of the line is $z=x+y$. Substituting into $x^3+y^3=z^3$ gives
$$x^3+y^3-(x+y)^3=-3xy(x+y),$$
with three simple roots: $(0,1)$, $(1,0)$ and the point at infinity $[1:-1:0]$. The missing third point is rational. It is also a flex: its tangent line $x+y=0$ meets the cubic only there, three times. So the Fermat cubic's three rational points are collinear flexes, and chords and tangents through them really do produce nothing new. This also settles Variation 4 of Chapter 1: the point $(12,-36)$ of $Y^2=X^3-432$ corresponds to $[1:-1:0]$.
- **Conics.** Chapter 1's bijection between rational slopes and rational points of a conic allowed up to two exceptions: slopes whose second point lay at infinity. On the projective closure there are no exceptions. Projection from a rational point is a bijection between $\mathbb{P}^1(\mathbb{Q})$ and *all* the rational points of the projective conic.
- **Cubics.** By Proposition 3.4, every line meets a projective cubic in exactly three points. So the chord-and-tangent construction is now always defined: the third point always exists, even when it lies at infinity. The cubic $E:\ y^2=x^3-x$ has a single point at infinity, $[0:1:0]$, where the line at infinity meets it three times. That point will be the zero of the group law in Chapter 16.

### Three views of one conic {-}

Over $\mathbb{R}$, write $x^2+y^2-z^2=x^2-(z-y)(z+y)$. In the new coordinates $X=x$, $Y=z-y$ and $Z=z+y$, the closed-up circle becomes $X^2=YZ$. That is also the closure of the parabola $yz=x^2$, and after renaming the coordinates it is the closure of the hyperbola $xy=z^2$. So over $\mathbb{R}$, the circle, the parabola and the hyperbola have the *same* projective closure. The three affine curves differ only in which line of $\mathbb{P}^2$ plays the role of infinity:

- a line meeting the conic in two complex-conjugate points leaves an **ellipse**, such as the circle;
- a tangent line leaves a **parabola**;
- a line crossing the conic in two real points leaves a **hyperbola**.

This is the geometry behind Chapter 2's Proposition 2.7. The affine circle and the affine hyperbola are not isomorphic over $\mathbb{R}$, because one is this conic with a conjugate pair of points removed and the other is the same conic with two real points removed.

## What Just Happened

- **Three repairs make counting exact.** Intersection points can be complex, they can coincide, and they can lie at infinity. Working over $\mathbb{C}$, counting with multiplicity and passing to the projective plane deal with all three. Then a line meets a curve of degree $d$ exactly $d$ times, and two curves of degrees $m$ and $n$ meet exactly $mn$ times.
- **The missing points of two circles are the circular points.** Every circle passes through $I=[1:i:0]$ and $J=[1:-i:0]$. Two circles meet there, and in at most two further points on their radical axis.
- **Infinity is ordinary.** In $\mathbb{P}^2$ the line at infinity is just a line, and projective transformations can move it. Ellipses, parabolas and hyperbolas are three views of one projective conic.
- **Why it works.** Over $\mathbb{C}$ the projective plane is compact, so intersection points cannot escape. They can only collide, and multiplicities count the collisions.

## Threads

**What is a curve?** Projective curves are complete: nothing can escape from them. But a projective curve has no single coordinate ring of functions. It is covered by affine charts, each with its own ring, glued together where the charts overlap. Chapter 7 builds abstract curves in exactly this way, and Chapter 13 makes gluing the foundation of schemes. Chapter 7 will also show that the only regular functions on a whole projective curve are the constants.

**When are two curves the same?** We now have a new relation, projective equivalence, and it changes the picture from Chapter 2. The affine circle and hyperbola are different over $\mathbb{R}$, yet they are the same projective conic with different points removed. Questions like this disappear for complete curves. That is why, from Chapter 7 on, smooth projective curves become the main objects of study.

**Which curves can be parametrized?** Chapter 1's parametrization of the circle is now exact: projection from a point identifies the whole projective circle with $\mathbb{P}^1$, with no exceptions.

**Why do a cubic's points form a group?** Bézout's theorem makes the chord-and-tangent construction always defined on a projective cubic, so we have a binary operation. Chapter 8 introduces divisors, the language in which it becomes a group law, and Chapter 16 proves the group law.

**Tangents and multiplicities.** We used intersection multiplicity as a black box with good properties. Chapter 4 opens the box, relating multiplicities to tangent lines and tangent cones, and uses them to tell the node from the cusp.

## Variations

These are optional. A hint follows each one.

**Variation 1.** Find the points at infinity of $E:\ y^2=x^3-x$ and of $G:\ y^2=x^5-x$. Show that $E$ has a smooth flex there, whose tangent is the line at infinity, but that the closure of $G$ is singular at its point at infinity.
*Hint:* Both closures have the single point $[0:1:0]$ at infinity. Work in the chart $y=1$. For $E$ the equation becomes $z=x^3-xz^2$, which has a nonzero linear term. For $G$ it becomes $z^3=x^5-xz^4$, whose lowest-degree term has degree 3. Chapter 7 starts from this singularity.

**Variation 2.** Find a circle and a parabola that meet in four real points. Then explain, using the circular points, why two circles never can.
*Hint:* Try $y=x^2$ and $x^2+(y-2)^2=2$. Where is the parabola's point at infinity, and is it on the circle?

**Variation 3.** Where do the parabolas $y=x^2$ and $y=x^2+1$ meet?
*Hint:* The difference of their closures is $z^2$. Use properties (c) and (d), and the double root of the parabola at infinity, to show that all four intersections are at $[0:1:0]$.

**Variation 4.** (a) Show that an irreducible cubic has at most one singular point. (b) Show that an irreducible quartic has at most three.
*Hint:* A point $P$ is singular when the equation and all its partial derivatives vanish there. Then every line through $P$ meets the curve there with multiplicity at least 2, and more generally $I_P(F,G)\geq2$ for every curve $G$ through $P$ [F, §3.3]. (a) Apply Proposition 3.4 to the line through two singular points. (b) Through any five points there is a conic. Pass one through four singular points and one further point of the quartic, and apply Bézout's theorem. In general, an irreducible curve of degree $d$ has at most $\tfrac{(d-1)(d-2)}{2}$ singular points: Chapter 1's genus formula is lurking.

**Variation 5.** Find a real projective transformation that carries the closed-up circle $x^2+y^2=z^2$ to the closed-up hyperbola $xy=z^2$. Which line does it carry to the line at infinity?
*Hint:* Section 3.4 turned the circle into $X^2=YZ$; now rename the coordinates. The line sent to infinity must meet the circle in two real points.

## Reading Map

- **[F, §2.4 and §3.3]:** local rings, and intersection numbers with their seven properties, including a practical algorithm for computing them.
- **[F, Chapter 4 and §5.1–5.3]:** projective space, projective closure, projective plane curves and a complete proof of Bézout's theorem.
- **[H, I.2 and I.7]:** projective varieties, and intersections in $\mathbb{P}^n$, of which Bézout's theorem for plane curves is a special case.
- **F. Kirwan, *Complex Algebraic Curves*,** Chapters 2–3: the complex projective plane, Bézout's theorem, flexes and cubic curves, at a gentle pace.
- **D. Cox, J. Little and D. O'Shea, *Ideals, Varieties, and Algorithms*,** Chapter 8: the projective plane and projective closure, with computations. The fourth edition adds a section on Bézout's theorem.
- **J. Richter-Gebert, *Perspectives on Projective Geometry*:** a beautifully illustrated tour that gives the circular points $I$ and $J$ the attention they deserve.
- **E. Brieskorn and H. Knörrer, *Plane Algebraic Curves*:** the history of the subject, from conic sections through Bézout and Poncelet, with many pictures.
- **J.-V. Poncelet, *Traité des propriétés projectives des figures* (1822), and É. Bézout, *Théorie générale des équations algébriques* (1779):** the original sources.
