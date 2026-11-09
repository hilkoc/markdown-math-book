# Which Right Triangles Have Integer Sides? {#pythagoras}

Pandoc numbers chapters and sections. Do not write numbers in headings.
Theorem-like blocks share one counter per chapter, so the blocks below are
numbered 1.1, 1.2, 1.3 and so on, whatever their type.

## The Problem {#pythagoras-problem}

::: problem
Find all integer solutions of $x^2 + y^2 = z^2$.
:::

::: definition
A *Pythagorean triple* is a triple $(x, y, z)$ of positive integers with
$x^2 + y^2 = z^2$. It is *primitive* if $\gcd(x, y, z) = 1$.
:::

::: example
$(3, 4, 5)$ and $(5, 12, 13)$ are primitive triples. $(6, 8, 10)$ is a
triple, but it is not primitive.
:::

## Rational Points on the Circle {#rational-points}

Dividing by $z^2$ turns the problem into a question about rational points on
the unit circle $C\colon u^2 + v^2 = 1$ in $\Aff^2$ over $\mathbb{Q}$.^[The
macros `\Aff`, `\PP`, `\CC`, `\ZZ`, `\Spec` and `\Pic` are defined in
`macros.md`. They work in every output format.]

::: lemma
A line through $(-1, 0)$ with rational slope $t$ meets $C$ in exactly one
other point, and that point is rational.
:::

::: proof
Substitute $v = t(u + 1)$ into $u^2 + v^2 = 1$. The resulting quadratic in $u$
has rational coefficients and the rational root $u = -1$, so its other root
is rational too.
:::

::: theorem
Every rational point of $C$ other than $(-1, 0)$ has the form
$$
(u, v) = \left(\frac{1 - t^2}{1 + t^2},\ \frac{2t}{1 + t^2}\right),
\qquad t \in \mathbb{Q}.
$$
:::

::: proof
Project from the point $(-1, 0)$ and solve the quadratic of the lemma above.
:::

::: proposition
Every primitive triple with $y$ even has the form
$$
(x, y, z) = (m^2 - n^2,\ 2mn,\ m^2 + n^2)
$$
with coprime integers $m > n > 0$ of opposite parity.
:::

::: remark
This is the first example of a *rational parametrisation*; see
Chapter [2](#cubics) for what goes wrong in degree three. Compare
$\PP^1$ and $\Pic(\PP^1) \cong \ZZ$.
:::
