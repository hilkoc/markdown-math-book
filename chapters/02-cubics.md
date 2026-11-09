# Why Cubics Are Different {#cubics}

The theorem counter starts again at 2.1 in a new chapter.

## A Curve Without a Parametrisation {#no-parametrisation}

::: example
The curve $y^2 = x^3 - x$ has genus $1$, so, unlike the circle of
Chapter [1](#pythagoras), it has no rational parametrisation.
:::

::: definition
The *genus* $g$ of a smooth projective curve $X$ over $\CC$ is the number of
holes of the Riemann surface $X(\CC)$.
:::

## The Genus Decides {#genus-decides}

The simplest statement connecting these ideas is the Riemann–Roch formula
for a divisor $D$ on $X$:
$$
\ell(D) - \ell(K - D) = \deg D + 1 - g.
$$

::: theorem
A smooth projective curve over $\CC$ has a parametrisation by $\PP^1$ if
and only if its genus is $0$.
:::

| Curve | Degree | Genus |
|-------|:------:|:-----:|
| Conic | 2 | 0 |
| Smooth cubic | 3 | 1 |
| Smooth quartic | 4 | 3 |

: Genus of smooth plane curves: $g = (d - 1)(d - 2)/2$.

::: remark
The affine curve $X$ is the set of points of the scheme $\Spec \CC[x, y]/(y^2 - x^3 + x)$.
:::
