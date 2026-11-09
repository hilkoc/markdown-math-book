# The Circle and the Cubic

> *It is impossible to divide a cube into two cubes, or a fourth power into two fourth powers, or in general any power beyond the square into two powers of the same kind. I have found a truly marvellous proof of this, which this margin is too narrow to hold.*
>
> — Pierre de Fermat, in the margin of his copy of Diophantus's *Arithmetica*, beside Book II, Problem 8 (c. 1637)

## The Problem

> **Problem 1.** Find every rational point $(x,y)\in\mathbb{Q}^2$ on the circle
> $$x^2+y^2=1,$$
> or equivalently, every Pythagorean triple: every solution of $a^2+b^2=c^2$ in integers. Then try the same method on the cubic curve
> $$x^3+y^3=1.$$
> Why does it break?

The two forms of the first question are the same question. If $a^2+b^2=c^2$ with $c\neq 0$, then $(a/c,\,b/c)$ is a rational point on the circle. Conversely, any rational point can be written over a common denominator as $(a/c,\,b/c)$, and then $a^2+b^2=c^2$. In the same way, a rational point on $x^3+y^3=1$ is a solution of $a^3+b^3=c^3$. That is exactly the equation Fermat's note declares impossible, and he wrote the note beside the very problem of Diophantus that this chapter is about.

The first half of the problem has a complete and elementary answer, known in essence for two thousand years. The second half is what this book is about. By the end of the chapter we will know *how* the method breaks. Saying *why* takes the rest of the book.

## First Attempts

Start by experimenting. A short search turns up the triples
$$(3,4,5),\ \ (5,12,13),\ \ (8,15,17),\ \ (7,24,25),\ \ (20,21,29),\ \ (9,40,41),\ \dots$$

There are patterns. In $(3,4,5)$, $(5,12,13)$, $(7,24,25)$ and $(9,40,41)$ the hypotenuse exceeds the longer leg by one. In fact, for every odd $a$ the numbers $a$, $\tfrac{a^2-1}{2}$ and $\tfrac{a^2+1}{2}$ form a triple. In $(8,15,17)$ the difference is two, and that starts a second family: $(12,35,37)$, $(16,63,65)$, and so on. But $(20,21,29)$ belongs to neither family, and nothing in the list suggests a single rule that produces everything.

People found such rules very early.

- The Babylonian tablet known as Plimpton 322, written around 1800 BCE, lists fifteen right triangles with whole-number sides. Some are as large as $(12709,\,13500,\,18541)$, far too large to find by trial and error.
- Euclid's *Elements* gives a recipe for making triples, in a lemma in Book X.
- Diophantus of Alexandria, probably writing in the third century CE, gives a *method* in Problem 8 of Book II of his *Arithmetica*. To split $16$ into two squares, he calls the first square $x^2$ and the second $(2x-4)^2$. This leads to $16=\bigl(\tfrac{16}{5}\bigr)^2+\bigl(\tfrac{12}{5}\bigr)^2$.

Diophantus's choice looks like a trick, but it is really geometry. Setting $y=2x-4$ means intersecting the circle $x^2+y^2=16$ with a line through its point $(0,-4)$.

A purely algebraic attack goes nowhere. We want rational numbers $x$ for which $1-x^2$ is the square of a rational number, and trying values of $x$ one at a time is just the original problem again. We need a way to produce solutions systematically, and Diophantus's substitution points to one.

Suppose we know one rational point on the circle; $P_0=(-1,0)$ will do. Any other rational point $P$ determines the line $P_0P$, and that line has rational slope. Conversely, a line through $P_0$ with rational slope meets the circle in one other point. If that point is always rational, we have a dictionary between rational points and rational slopes. And rational slopes are just rational numbers.

## The Ideas We Need

The solution uses nothing beyond school algebra. Still, it is worth isolating the ideas, because each one returns later in a more powerful form.

### Curves and their points {-}

Let $k$ be a field and $f\in k[x,y]$ a nonconstant polynomial. For any field $K$ containing $k$, the **$K$-points** of the curve $f=0$ are
$$C_f(K)=\{(a,b)\in K^2 : f(a,b)=0\}.$$
When $K=\mathbb{Q}$ we call them **rational points**. The **degree** of the curve is the total degree of $f$.

One equation can give very different sets of points over different fields:

- Over $\mathbb{R}$, $x^2+y^2=1$ is the familiar circle.
- Over $\mathbb{C}$ its points form an unbounded surface of real dimension two.
- Over a finite field $\mathbb{F}_p$ it is a finite set, which we count below.
- Over $\mathbb{Q}$ it is a dense subset of the real circle.

Its neighbour $x^2+y^2=-1$ has no real points at all. Yet it is plainly not "nothing", because over $\mathbb{C}$ it looks exactly like the circle.

So a curve should not be identified with any one of its sets of points. What a curve really is gets refined chapter by chapter, and Chapter 13 gives the final answer.

> **Look up.** Affine space, algebraic sets and plane curves: [F, §1.2 and §1.6].

### Lines meet curves in few points {-}

Let $C$ be the curve $f=0$, of degree $d$, and let $L$ be the line through $P_0=(x_0,y_0)$ with direction $(u,v)$. The one-variable polynomial
$$g(s)=f(x_0+su,\;y_0+sv)$$
has degree at most $d$, and its roots correspond to the points of $L\cap C$.

**Lemma 1.1.** Suppose $g$ is not the zero polynomial, that is, $L$ is not part of $C$.

1. $L$ meets $C$ in at most $d$ points.
2. Suppose $f$, $P_0$ and $(u,v)$ are defined over a field $K$. Count the $m=\deg g$ roots of $g$ with multiplicity, in an algebraic closure of $K$. If $m-1$ of them lie in $K$, so does the last.

*Proof.* (1) A nonzero polynomial of degree at most $d$ has at most $d$ roots. (2) Write $g(s)=a_ms^m+a_{m-1}s^{m-1}+\dots+a_0$ with all $a_i\in K$ and $a_m\neq0$. By Vieta's formula, the roots satisfy $s_1+\dots+s_m=-a_{m-1}/a_m$. If $s_1,\dots,s_{m-1}\in K$, then $s_m=-a_{m-1}/a_m-(s_1+\dots+s_{m-1})\in K$. $\square$

Two features of this lemma will keep turning up. First, roots can repeat: a tangent line meets a curve "twice" at the point of tangency. Second, $\deg g$ can be smaller than $d$, and then some intersection points seem to be missing. Chapter 3 finds the missing points at infinity and counts repeated roots properly. That upgrades "at most $d$" to "exactly $d$", which is Bézout's theorem.

> **Look up.** Lines meeting plane curves: [F, §1.6]. Intersection multiplicities and Bézout's theorem come in Chapter 3.

### Rational parametrizations {-}

**Definition 1.2.** A **rational parametrization** of the curve $f=0$ over a field $K$ is a pair of rational functions $x(t),y(t)\in K(t)$, not both constant, such that $f\bigl(x(t),y(t)\bigr)=0$ in $K(t)$.

For example, $(t,\,t^2)$ parametrizes the parabola $y=x^2$, and $(t^2,\,t^3)$ parametrizes the cusp $y^2=x^3$.

A parametrization produces points. Whenever $t\in K$ is not a pole of $x(t)$ or $y(t)$, the pair $\bigl(x(t),y(t)\bigr)$ is a $K$-point of the curve. Only finitely many $t$ are poles, and a nonconstant rational function takes each value only finitely often. So over an infinite field, a curve with a rational parametrization has infinitely many points.

In good cases the parameter can be recovered from the point, as a rational function $t=r(x,y)$. Then the parametrization matches almost all points of the curve with almost all values of $t$. Chapter 5 turns this into the notion of a *birational map* to the line.

### Slopes form a projective line {-}

The lines through a point $P_0\in K^2$ are labelled by their slopes $t\in K$, except for the vertical line, which we label $\infty$. The set of labels
$$\mathbb{P}^1(K)=K\cup\{\infty\}$$
is the **projective line** over $K$. More symmetrically, a line through $P_0$ is determined by its direction $(u,v)\neq(0,0)$ up to scaling. So $\mathbb{P}^1(K)$ is the set of ratios $(u:v)$: slope $t$ corresponds to $(1:t)$, and the vertical line to $(0:1)$. Chapter 3 develops projective space properly. For now it is simply the set of directions.

> **Look up.** The projective line and projective space: [F, §4.1].

## The Solution

### The circle {-}

**Theorem 1.3.** Let $C$ be the circle $x^2+y^2=1$ and $P_0=(-1,0)$. The map $\varphi:\mathbb{P}^1(\mathbb{Q})\to C(\mathbb{Q})$ given by
$$\varphi(t)=\left(\frac{1-t^2}{1+t^2},\ \frac{2t}{1+t^2}\right)\quad(t\in\mathbb{Q}),\qquad \varphi(\infty)=P_0,$$
is a bijection. Its inverse sends a point $(x,y)\neq P_0$ to $t=y/(x+1)$, and sends $P_0$ to $\infty$.

*Proof.* For $t\in\mathbb{Q}$, let $L_t$ be the line $y=t(x+1)$ through $P_0$. Substituting into the equation of the circle gives $x^2+t^2(x+1)^2-1=0$. The left side vanishes at $x=-1$, so it is divisible by $x+1$:
$$x^2-1+t^2(x+1)^2=(x+1)\bigl((1+t^2)\,x-(1-t^2)\bigr).$$
Since $1+t^2\neq0$ for rational $t$, the second factor has exactly one root, $x=\frac{1-t^2}{1+t^2}$, and then $y=t(x+1)=\frac{2t}{1+t^2}$. So $L_t$ meets $C$ in $P_0$ and $\varphi(t)$. Moreover $\varphi(t)\neq P_0$, because $\frac{1-t^2}{1+t^2}=-1$ would force $1=-1$. The vertical line $x=-1$ meets $C$ only at $P_0$, where $y^2=0$ has a double root, so it is the tangent line at $P_0$.

Now let $Q=(x,y)\neq P_0$ be a rational point of $C$. The only point of $C$ with $x=-1$ is $P_0$, so $x\neq-1$. Then $Q$ lies on the line through $P_0$ with rational slope $t=y/(x+1)$, and by the computation above $Q=\varphi(t)$. So $\varphi$ is surjective. It is injective because two distinct lines through $P_0$ meet only at $P_0$, which is not $\varphi(t)$ for any finite $t$. $\square$

**What the formula means.** The line $L_t$ crosses the $y$-axis at $(0,t)$. So $\varphi^{-1}$ is *stereographic projection* from $P_0$ onto the $y$-axis, and $\varphi$ wraps the axis back around the circle. Write a point of the circle as $(\cos\theta,\sin\theta)$. By the inscribed angle theorem, the line from $P_0$ to it makes angle $\theta/2$ with the $x$-axis, so $t=\tan(\theta/2)$. Theorem 1.3 then becomes the half-angle formulas
$$\cos\theta=\frac{1-t^2}{1+t^2},\qquad \sin\theta=\frac{2t}{1+t^2}.$$
In calculus this is the "Weierstrass substitution", which turns integrals of rational functions of $\sin\theta$ and $\cos\theta$ into integrals of rational functions of $t$. That is no coincidence: the substitution works *because* the circle has a rational parametrization. Chapter 9 turns this observation into a weapon.

**Other fields.** The proof works over any field $K$ of characteristic $\neq2$, with one change. If $-1=i^2$ is a square in $K$, the slopes $t=\pm i$ must be left out. For those slopes the factor $(1+t^2)x-(1-t^2)$ is the nonzero constant $-2$, so the line $y=\pm i(x+1)$ meets the circle only at $P_0$. Its second intersection point has escaped to infinity, and Chapter 3 will find it.

This gives a free point count over finite fields. For an odd prime $p$, the projective line $\mathbb{P}^1(\mathbb{F}_p)$ has $p+1$ elements, and $-1$ is a square mod $p$ exactly when $p\equiv1\pmod4$. Hence
$$\#C(\mathbb{F}_p)=\begin{cases}p-1, & p\equiv1\pmod4,\\ p+1, & p\equiv3\pmod4.\end{cases}$$

Characteristic 2 is stranger. There $x^2+y^2-1=(x+y+1)^2$, so the "circle" is a line counted twice. Chapter 13 explains what that means.

### Pythagorean triples {-}

**Corollary 1.4.** Let $(a,b,c)$ be a primitive Pythagorean triple with $a,b,c>0$, where primitive means $\gcd(a,b,c)=1$. After swapping $a$ and $b$ if necessary, so that $b$ is even,
$$a=m^2-n^2,\qquad b=2mn,\qquad c=m^2+n^2$$
for unique coprime integers $m>n>0$ of opposite parity. Conversely, every such pair $(m,n)$ gives a primitive triple.

*Proof.* Exactly one of $a$ and $b$ is even. They can't both be even, because the triple is primitive. They can't both be odd, because then $c^2=a^2+b^2\equiv2\pmod4$, and no square is $\equiv2\pmod4$. So we may assume $b$ is even.

Under Theorem 1.3 the point $(a/c,\,b/c)$ corresponds to $t=\frac{b/c}{a/c+1}=\frac{b}{a+c}$, and $0<t<1$. Write $t=n/m$ in lowest terms, so that $m>n>0$ and $\gcd(m,n)=1$. Theorem 1.3 gives
$$\frac{a}{c}=\frac{m^2-n^2}{m^2+n^2},\qquad\frac{b}{c}=\frac{2mn}{m^2+n^2},$$
so $(a,b,c)$ is proportional to $(m^2-n^2,\,2mn,\,m^2+n^2)$.

*Case 1: $m$ and $n$ have opposite parity.* Then $m^2+n^2$ is odd. An odd prime dividing both $2mn$ and $m^2+n^2$ would divide $m$ or $n$, and hence the other as well, which is impossible. So $(m^2-n^2,\,2mn,\,m^2+n^2)$ is primitive. Two proportional primitive triples of positive integers are equal, which gives the formulas.

*Case 2: $m$ and $n$ are both odd.* Then $(m^2-n^2,\,2mn,\,m^2+n^2)$ is twice the triple $\bigl(\tfrac{m^2-n^2}{2},\,mn,\,\tfrac{m^2+n^2}{2}\bigr)$, which is primitive by the same argument. It would have to equal $(a,b,c)$, which makes $b=mn$ odd. That contradicts $b$ being even, so this case cannot occur.

Uniqueness holds because $t=b/(a+c)$ is determined by the triple. The converse follows from the identity $(m^2-n^2)^2+(2mn)^2=(m^2+n^2)^2$ and the primitivity argument of Case 1. $\square$

Here are a few values of the parameter:

| $t=n/m$ | $(a,b,c)$ |
|:---:|:---:|
| $1/2$ | $(3,4,5)$ |
| $2/3$ | $(5,12,13)$ |
| $1/4$ | $(15,8,17)$ |
| $3/4$ | $(7,24,25)$ |
| $2/5$ | $(21,20,29)$ |
| $5/12$ | $(119,120,169)$ |

The last entry is the first row of Plimpton 322, and the tablet's largest triple, $(12709,13500,18541)$, comes from $t=54/125$. On the standard reading, every parameter behind the tablet is built from the primes 2, 3 and 5 alone. Those are exactly the numbers with finite expansions in base 60, the Babylonians' number base. That is a strong hint about how the scribes found their triples (see Robson in the Reading Map).

### A conic with no starting point {-}

The method needs a seed, meaning one rational point to draw lines through. Not every conic has one.

**Proposition 1.5.** The curve $x^2+y^2=3$ has no rational points.

*Proof.* Suppose it had one. Clearing denominators gives integers $a,b,c$ with $c\neq0$, $\gcd(a,b,c)=1$ and $a^2+b^2=3c^2$. Squares are $\equiv0$ or $1\pmod3$, so $a^2+b^2\equiv0\pmod3$ forces $a\equiv b\equiv0\pmod3$. Then $9\mid 3c^2$, so $3\mid c$, contradicting $\gcd(a,b,c)=1$. $\square$

On the other hand, the argument of Theorem 1.3 works for any *nondegenerate* conic with a rational point $P_0$, meaning a conic that does not break into lines, even over $\mathbb{C}$. Every line through $P_0$ meets such a conic in at most one further point, and that point is rational by Lemma 1.1. So a nondegenerate conic over $\mathbb{Q}$ has either no rational points or infinitely many. In the second case they correspond to the rational slopes, apart from at most two slopes whose second points lie at infinity.

A theorem of Legendre decides which conics have a rational point; it is the first case of the Hasse–Minkowski theorem (see Serre in the Reading Map). This is also our first sign that "can this curve be parametrized?" depends on the field. Over $\mathbb{Q}(\sqrt3)$ the conic $x^2+y^2=3$ has the point $(\sqrt3,0)$, and lines through it parametrize the curve. Over $\mathbb{Q}$ no parametrization is possible, since it would produce rational points.

### The cubic {-}

Now try the same idea on $x^3+y^3=1$. It has the obvious rational points $(1,0)$ and $(0,1)$. Take $P_0=(1,0)$ and the line $y=t(x-1)$. Substituting and dividing out the known root $x=1$ gives
$$x^3+t^3(x-1)^3-1=(x-1)\,q_t(x),\qquad q_t(x)=(1+t^3)\,x^2+(1-2t^3)\,x+(1+t^3).$$
This time a line through $P_0$ meets the curve in *two* further points, the roots of the quadratic $q_t$. Lemma 1.1 is no help, because knowing one root out of three is not enough. The roots of $q_t$ are rational exactly when its discriminant is the square of a rational number, and the discriminant is
$$(1-2t^3)^2-4(1+t^3)^2=-3\,(1+4t^3).$$
So to find a rational point by the line method, we must first find rational numbers $t$ and $s$ with
$$s^2=-3\,(1+4t^3).$$
That is another cubic equation in two unknowns. The method has turned one cubic curve into another.

It is worse than that: the new curve is the old one in disguise. If $Q=(x,y)$ is a rational point of the cubic with $x\neq1$, put
$$t=\frac{y}{x-1},\qquad s=2(1+t^3)\,x+(1-2t^3).$$
Then $s^2=-3(1+4t^3)$, because at a root of $ax^2+bx+c$ the quantity $2ax+b$ squares to the discriminant. Conversely, when $1+t^3\neq0$, the pair $(t,s)$ gives back
$$x=\frac{s-(1-2t^3)}{2(1+t^3)},\qquad y=t\,(x-1).$$
Away from finitely many exceptions, the rational points of the two curves correspond one to one. The substitution $X=-12t$, $Y=12s$ even tidies the new curve into
$$Y^2=X^3-432,$$
a curve we will meet again in Chapter 16. Whatever the line method does to the cubic, it does not solve it; it only rewrites it.

What about the lines through the two known points, or tangent to the curve there?

- The line through $(1,0)$ and $(0,1)$ is $x+y=1$, the case $t=-1$. There $1+t^3=0$, so $q_t$ drops to the linear polynomial $3x$, and the line meets the curve only at $(1,0)$ and $(0,1)$. A third intersection point is missing; Chapter 3 finds it at infinity.
- The tangent line at $(1,0)$ is the vertical line $x=1$. Substituting gives $y^3=0$, a triple root, so the tangent meets the curve three times at $(1,0)$. A point like this is called a **flex**. By symmetry, the tangent line $y=1$ at $(0,1)$ behaves the same way.

So chords and tangents through the known points produce nothing new. In fact there is nothing new to produce. Fermat claimed, and Euler proved in 1770, that $a^3+b^3=c^3$ has no solutions in nonzero integers. So $(1,0)$ and $(0,1)$ are the only rational points of $x^3+y^3=1$ in the plane. The second half of Problem 1 therefore has a startling answer: on this cubic, the method breaks because there is almost nothing to find.

### Chords and tangents {-}

That is not the whole story, because some cubics have plenty of rational points. Lemma 1.1 still says something useful about cubics. If a line with rational coefficients meets a cubic in three points, counted with multiplicity, and two of them are rational, then the third is rational too. So lines through *two* known points, or tangent at one, manufacture new points.

In 1621 Claude-Gaspard Bachet de Méziriac published the edition of Diophantus in which Fermat later wrote his note. Bachet found a formula that turns one rational solution of $y^2=x^3+c$ into another, and geometrically his formula is the tangent construction. Take the curve $y^2=x^3-2$ and its point $P=(3,5)$. The tangent line at $P$ has slope $m=\frac{3x^2}{2y}=\frac{27}{10}$. Substituting $y=5+m(x-3)$ into $y^2=x^3-2$ gives a cubic equation in $x$ whose three roots add up to $m^2$. Two of those roots equal $3$, because the line is tangent at $P$. So the third root is
$$x=m^2-6=\frac{129}{100},\qquad y=5+m\Bigl(\frac{129}{100}-3\Bigr)=\frac{383}{1000},$$
and indeed $\bigl(\tfrac{383}{1000}\bigr)^2=\bigl(\tfrac{129}{100}\bigr)^3-2$. Repeating the construction, with tangents at new points and chords through pairs of known ones, gives infinitely many rational points.

Yet these points do not come from a parametrization. Each new point is built from earlier ones, and the numbers explode. Chapter 16's group law organizes the points as "multiples" $P,2P,3P,\dots$, and their $x$-coordinates begin
$$3,\qquad \frac{129}{100},\qquad \frac{164323}{29241},\qquad \frac{2340922881}{58675600},\ \dots$$
By $8P$ the numerator has 38 digits, and the number of digits grows roughly like the square of the multiplier. Compare the circle: there, the number of rational points with denominator at most $N$ grows in proportion to $N$. On a cubic like Bachet's it grows only like a power of $\log N$.

So the rational points of a cubic can be infinite in number, but they are never parametrized by a single rational number; Chapter 9 proves this. What they have instead is a composition law. Poincaré observed in 1901 that the chord-and-tangent construction, suitably arranged, makes the rational points of a cubic into a group. Why should a construction with lines obey the associative law? Answering that is one of the goals of this book (Chapter 16).

Our main example of a cubic, $E:\ y^2=x^3-x$, sits at the other extreme. Its only rational points in the plane are $(0,0)$ and $(\pm1,0)$. That fact is equivalent to Fermat's theorem that no right triangle with rational sides has area $1$, which he proved by his method of infinite descent.

### A cubic that can be parametrized {-}

Is the trouble simply that cubics have degree 3? No. Consider the cubic
$$y^2=x^2(x+1),$$
whose real picture crosses itself at the origin; a crossing point like this is called a **node**. Lines through the node, $y=tx$, give
$$t^2x^2=x^2(x+1)\quad\Longleftrightarrow\quad x^2\,(x+1-t^2)=0.$$
The root $x=0$ appears twice, because every line through the node meets the curve there with multiplicity at least 2. That leaves exactly one more intersection point,
$$x=t^2-1,\qquad y=t\,(t^2-1).$$
Every rational $t$ gives a rational point. Conversely, $t=y/x$ recovers $t$ from any point other than the node, because $t^2=y^2/x^2=x+1$. This is a rational parametrization of a cubic curve. The **cusp** $y^2=x^3$ works the same way: lines $y=tx$ give $x=t^2$ and $y=t^3$.

Notice how the singular points are reached. The node is the image of two parameter values, $t=1$ and $t=-1$, which are the slopes of the two branches crossing there. The cusp is the image of $t=0$ alone. Both observations will matter, the second in Chapter 2 and the first in Chapter 6.

So degree alone does not decide whether a curve can be parametrized. A smooth cubic resists, while a cubic with a node or a cusp behaves like a conic. We need an invariant that starts from the degree and corrects for singular points. It is called the **genus**, and for a plane curve of degree $d$ it starts out as
$$g=\frac{(d-1)(d-2)}{2}-\bigl(\text{a correction for each singular point}\bigr).$$
A smooth conic has $g=0$ and a smooth cubic has $g=1$. For a cubic with a node or a cusp the correction is $1$, so $g=1-1=0$. Chapters 9–12 make this precise and computable. Here is the statement all of that is heading towards.

> **Theorem 1.6** (proved in Chapters 9 and 16). Over $\mathbb{C}$, a curve has a rational parametrization if and only if its genus is $0$. Over $\mathbb{Q}$, a curve has one if and only if its genus is $0$ and its smooth projective model (Chapter 7) has a rational point.

Chapter 9 proves the "only if" direction, which settles the cubic once and for all. Chapter 16 proves the "if" direction, using the Riemann–Roch theorem.

## What Just Happened

The solution for the circle rested on three ingredients.

1. **A seed:** one rational point $P_0$.
2. **Control over intersections:** a line through $P_0$ meets the curve in exactly one further point, which is therefore rational (Lemma 1.1).
3. **A one-parameter family of lines:** the lines through $P_0$ are labelled by $\mathbb{P}^1(\mathbb{Q})$, and so the rational points are too.

For the smooth cubic the second ingredient fails, because each line through a known point meets the curve in two more points. Finding them means solving a new cubic equation, and that new cubic turned out to be the old curve in disguise. What survives is a *composition law*: two rational points, or one point with its tangent, produce a third. For singular cubics the singular point absorbs two of the three intersections, and the circle's method works again.

We also met three phenomena that the rest of the book must explain.

- **Points go missing.** Some lines meet a curve in fewer points than its degree promises. The missing points are at infinity (Chapter 3).
- **Points are counted more than once.** A tangent line meets a curve doubly, and at a flex triply (Chapters 3 and 4).
- **The field matters.** The same equation can be parametrizable over one field and not another: $x^2+y^2=3$ over $\mathbb{Q}(\sqrt3)$ and over $\mathbb{Q}$. It can have no points at all, like $x^2+y^2=-1$ over $\mathbb{R}$. It can even become a doubled line, as the circle does in characteristic 2 (Chapter 13).

## Threads

This chapter opens the four questions that run through the book.

**What is a curve?** Is "the circle" its equation, its real points, its rational points or its complex points? What about its points over $\mathbb{F}_p$, its points at infinity, or the doubled line it becomes over $\mathbb{F}_2$? Chapter 2 answers with rings, Chapter 3 with projective space, Chapters 6 and 7 with fields, and Chapter 13 with schemes.

**When are two curves the same?** Theorem 1.3 puts the circle's rational points in bijection with the projective line. Does that make the circle "the same" as a line? The map $t\mapsto(t^2,t^3)$ puts the points of a line in bijection with the points of the cusp. Is the cusp a line? Chapter 2 says no, and the question keeps sharpening all the way to Chapter 17.

**Which curves can be parametrized?** The circle and the singular cubics can. The Fermat cubic apparently cannot. Chapter 5 recasts the question in terms of function fields, Chapter 9 proves that smooth cubics cannot be parametrized, and Chapter 16 gives the full answer.

**Why do a cubic's points form a group?** Chapter 8 introduces divisors, the language the answer needs, and Chapter 16 proves the group law.

## Variations

These are optional. A hint follows each one.

**Variation 1.** For which $n\in\{2,3,5,6,7\}$ does $x^2+y^2=n$ have a rational point? For each one that does, write down a rational parametrization.
*Hint:* For $n=3$ and $n=6$, reduce mod 3. For $n=7$, reduce mod 7, where $-1$ is not a square. For $n=2$ start from $(1,1)$, and for $n=5$ from $(1,2)$.

**Variation 2.** Prove the point count over $\mathbb{F}_p$ from Section 1.4.
*Hint:* Count the elements of $\mathbb{P}^1(\mathbb{F}_p)$ and remove the slopes with $1+t^2=0$. For which $p$ is $-1$ a square mod $p$?

**Variation 3.** The *folium of Descartes*, $x^3+y^3=3xy$, has a node at the origin. Parametrize it by lines through the node. Which parameter values land on the node, and what are the two tangent lines there?
*Hint:* With $y=tx$ you should find $x=\frac{3t}{1+t^3}$. Look at $t=0$, and at what happens as $t\to\infty$.

**Variation 4.** Section 1.4 gave a correspondence between the rational points of $x^3+y^3=1$ and those of $Y^2=X^3-432$. Where does the point $(0,1)$ go?
*Hint:* Its slope from $P_0$ is $t=-1$, and the formula gives $s=3$, so you should land on $(12,36)$. The point $(12,-36)$ also lies on $Y^2=X^3-432$. Which "missing" point of the cubic might it correspond to?

**Variation 5.** On Bachet's curve $y^2=x^3-2$, let $P=(3,5)$ and $P'=\bigl(\tfrac{129}{100},-\tfrac{383}{1000}\bigr)$, the reflection of the point found above. Find the third point where the line $PP'$ meets the curve.
*Hint:* If a line $y=mx+c$ meets $y^2=x^3-2$ in three points, their $x$-coordinates add up to $m^2$. You should find $x=\frac{164323}{29241}$.

## Reading Map

- **J. H. Silverman and J. Tate, *Rational Points on Elliptic Curves* (2nd ed.),** Chapter 1: rational points on conics and cubics, and the chord-and-tangent construction, at a gentle pace. Chapter 2 proves the Nagell–Lutz theorem, which shows that Bachet's point has infinite order.
- **M. Reid, *Undergraduate Algebraic Geometry*,** Part I: plane conics, then cubics and the group law, seen by a geometer.
- **[F, §1.1–1.6]:** the algebraic setting that Chapter 2 builds on, namely polynomial rings, algebraic sets and plane curves.
- **J.-P. Serre, *A Course in Arithmetic*,** Chapters III–IV: the Hasse–Minkowski theorem, which decides when a conic has a rational point.
- **G. H. Hardy and E. M. Wright, *An Introduction to the Theory of Numbers*,** Chapter XIII: proofs that $x^3+y^3=z^3$ and $x^4+y^4=z^4$ have no solutions in nonzero integers.
- **A. Weil, *Number Theory: An Approach Through History from Hammurapi to Legendre*:** Diophantus, Bachet, Fermat and Euler, read by a master.
- **E. Robson, "Words and pictures: new light on Plimpton 322",** *American Mathematical Monthly* 109 (2002), 105–120: what the tablet is, and how it was probably computed.
- **H. Poincaré, "Sur les propriétés arithmétiques des courbes algébriques",** *Journal de Mathématiques Pures et Appliquées* (5) 7 (1901): where the group of rational points first appears.
