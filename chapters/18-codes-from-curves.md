# Codes from Curves

## The Problem

Every message sent through a noisy channel, from a spacecraft or a phone or a scratched disc, arrives with some symbols changed. The cure is redundancy. Send more symbols than the message needs, arranged so that a few errors can be found and undone. This chapter is an optional second application of Riemann–Roch, and it shows that the spaces $L(D)$ of Chapter 8, built over a finite field, are excellent ways to arrange that redundancy.

> **Problem 18.** A **linear code** of length $n$ over $\mathbb{F}_q$ is a subspace $C\subseteq\mathbb{F}_q^n$. If every nonzero word of $C$ has at least $d$ nonzero entries, then $C$ can correct any $\lfloor\frac{d-1}{2}\rfloor$ errors in a transmitted word.
> (a) A Reed–Solomon code evaluates polynomials at distinct points of the line $\mathbb{P}^1(\mathbb{F}_q)$, so over $\mathbb{F}_4$ its length is at most 5. Use the 9 points of $y^2+y=x^3$ over $\mathbb{F}_4$ to build longer codes, and use Riemann–Roch to find their dimension and to guarantee their minimum distance.
> (b) One of these codes has length 8 and dimension 4. Show that it corrects any single error, and correct one.
> (c) Could some other curve of genus 1 over $\mathbb{F}_4$ give longer codes in the same way?

Chapter 11 met $y^2+y=x^3$ in characteristic 2, where it has genus 1 although the map $x$ is ramified at only one point (Theorem 11.8). Here $\mathbb{F}_4=\{0,1,\omega,\omega^2\}$, with $\omega^2=\omega+1$, so that $\omega^3=1$ and $\omega+\omega^2=1$. Signs do not matter in characteristic 2.

## First Attempts

**Repetition.** Sending each symbol three times and taking a majority vote corrects one error in each block of three. But the message gets three times longer. We want codes with many words, so that $k=\dim C$ is large, whose nonzero words still have many nonzero entries.

**Reed–Solomon codes.** Evaluate the polynomials of degree less than $k$ at $n$ distinct points of the line. A nonzero polynomial of degree less than $k$ has fewer than $k$ roots, so every nonzero word has at least $n-k+1$ nonzero entries. That turns out to be as good as possible (Proposition 18.2). The catch is the length. There are only $q+1$ points on $\mathbb{P}^1(\mathbb{F}_q)$, so over $\mathbb{F}_4$ the length is at most 5. Longer Reed–Solomon codes need a larger field, which means longer symbols.

**More points.** A curve of genus $g$ over $\mathbb{F}_q$ can have many more than $q+1$ rational points. Goppa proposed in 1981 to evaluate functions from $L(G)$ at them, in place of polynomials of bounded degree. The genus is the price, and Riemann–Roch measures it.

## The Ideas We Need

### Codes {-}

**Definition 18.1.** The **weight** of a word $v\in\mathbb{F}_q^n$ is the number of its nonzero entries. A linear code $C\subseteq\mathbb{F}_q^n$ of dimension $k$ whose nonzero words have weight at least $d$, with equality for some word, is an $[n,k,d]$ code over $\mathbb{F}_q$, and $d$ is its **minimum distance**.

Two codewords differ in at least $d$ places. So if at most $t=\lfloor\frac{d-1}{2}\rfloor$ entries of a codeword are changed, it is still the unique codeword nearest to what arrives.

**Proposition 18.2 (Singleton bound).** Every $[n,k,d]$ code satisfies $k+d\leq n+1$.

*Proof.* Delete the last $d-1$ coordinates. Two codewords that agree on the remaining $n-d+1$ coordinates differ in at most $d-1$ places, so they are equal. The deletion is therefore injective, and $q^k\leq q^{n-d+1}$. $\square$

Codes with $k+d=n+1$ are called **MDS** codes. Reed–Solomon codes are MDS, and on the $q+1$ points of $\mathbb{P}^1(\mathbb{F}_q)$ they have parameters $[q+1,\,k,\,q+2-k]$. But MDS codes cannot be long: one of dimension $k\geq2$ has length at most $q+k-1$ (Variation 1).

> **Look up.** F. J. MacWilliams and N. J. A. Sloane, *The Theory of Error-Correcting Codes*, for linear codes, Reed–Solomon codes and the classical bounds; [S, Chapter 2].

### Goppa codes {-}

Let $X$ be a smooth projective curve over $\mathbb{F}_q$, let $P_1,\dots,P_n$ be distinct rational points, and put $D=P_1+\dots+P_n$. Let $G$ be a divisor defined over $\mathbb{F}_q$ (Chapter 16) whose support contains none of the $P_i$, so that every $f\in L(G)$ can be evaluated at each of them.

**Definition 18.3.** The **Goppa code** of $D$ and $G$ is
$$C_L(D,G)=\bigl\{(f(P_1),\dots,f(P_n)) : f\in L(G)\bigr\}\subseteq\mathbb{F}_q^n,$$
where $L(G)$ means the functions defined over $\mathbb{F}_q$.

On $\mathbb{P}^1$, with $G=(k-1)\infty$ and $D$ the sum of the $q$ points of $\mathbb{A}^1(\mathbb{F}_q)$, this is the Reed–Solomon code of polynomials of degree less than $k$.

**Theorem 18.4.** Let $X$ have genus $g$, and suppose $\deg G<n$. Then $C_L(D,G)$ has dimension
$$k=\ell(G)\geq\deg G+1-g,$$
with equality when $\deg G>2g-2$, and minimum distance
$$d\geq n-\deg G.$$
In particular $k+d\geq n+1-g$.

*Proof.* Evaluation is a linear map $L(G)\to\mathbb{F}_q^n$. Suppose $f\neq0$ vanishes at the points $P_i$ with $i$ in a set $S$. Then $f\in L\bigl(G-\sum_{i\in S}P_i\bigr)$, and a nonzero function lies only in spaces $L(E)$ with $\deg E\geq0$ (Proposition 8.8). So $\vert S\vert\leq\deg G$. Since $\deg G<n$, no nonzero $f$ vanishes at all $n$ points, the map is injective, and $k=\ell(G)$. Corollary 15.2 gives the dimension. A codeword from $f\neq0$ has at most $\deg G$ zero entries, so its weight is at least $n-\deg G$. $\square$

So a code from a curve of genus $g$ misses the Singleton bound by at most $g$. For $\mathbb{P}^1$ it misses by nothing, and for a curve of genus 1 by at most 1.

### Duality by residues {-}

The **dual** of a code $C\subseteq\mathbb{F}_q^n$ is $C^\perp=\{u : u\cdot v=0\text{ for all }v\in C\}$, with $u\cdot v=\sum u_iv_i$. It has dimension $n-\dim C$. The dual of a Goppa code is again a Goppa code, and the reason is Chapter 14's residue theorem.

**Proposition 18.5.** Suppose $\eta$ is a differential with simple poles at $P_1,\dots,P_n$, each with residue 1, and let $K=\operatorname{div}(\eta)$. If $2g-2<\deg G<n$, then
$$C_L(D,G)^\perp=C_L(D,\,D-G+K).$$

*Proof.* Let $f\in L(G)$ and $h\in L(D-G+K)$. Then $\operatorname{div}(fh\eta)\geq-G-(D-G+K)+K=-D$, so the differential $fh\eta$ is regular except for simple poles at the $P_i$, where its residue is $f(P_i)h(P_i)$. By the residue theorem (Theorem 14.7), $\sum_if(P_i)h(P_i)=0$. So the two codes are orthogonal. By Riemann–Roch their dimensions are $\deg G+1-g$ and $n-\deg G+g-1$, which add up to $n$. $\square$

> **Look up.** [S, Chapter 2], where the dual code is defined directly by residues of differentials; A. Couvreur and H. Randriambololona, "Algebraic geometry codes and some applications" (2020), §3, a modern survey.

### Counting points {-}

The length of a Goppa code is limited by the number of rational points, and for that number there is a sharp bound.

**Theorem 18.6 (Hasse–Weil, stated without proof).** A smooth projective curve of genus $g$ over $\mathbb{F}_q$ has $N$ rational points with
$$\vert N-(q+1)\vert\leq2g\sqrt q.$$

Hasse proved this for genus 1 in the 1930s, and Weil proved it for every genus in 1948. It is the analogue for curves of the Riemann hypothesis, and the Afterword describes how the Weil conjectures extend it to higher dimensions.

> **Look up.** [S, Chapter 5], with Bombieri's proof of the Hasse–Weil theorem; [Si, V.1] for genus 1.

## The Solution

### (a) Codes of length 8 {-}

**The points.** For each $x\in\mathbb{F}_4$, the value $x^3$ is 0 or 1. The equation $y^2+y=0$ has the roots $0$ and $1$, and $y^2+y=1$ has the roots $\omega$ and $\omega^2$. So every $x$ gives two points, and with the point at infinity there are 9:

| | $P_1$ | $P_2$ | $P_3$ | $P_4$ | $P_5$ | $P_6$ | $P_7$ | $P_8$ | $\infty$ |
|---|---|---|---|---|---|---|---|---|---|
| $x$ | $0$ | $0$ | $1$ | $1$ | $\omega$ | $\omega$ | $\omega^2$ | $\omega^2$ | |
| $y$ | $0$ | $1$ | $\omega$ | $\omega^2$ | $\omega$ | $\omega^2$ | $\omega$ | $\omega^2$ | |

**The spaces.** By Theorem 11.8, $x$ and $y$ have poles of orders 2 and 3 at $\infty$ and are regular elsewhere. A function regular away from $\infty$ is a polynomial in $x$ and $y$ (Chapter 2), and using $y^2=y+x^3$ it can be written as $a(x)+b(x)\,y$. Its pole order at $\infty$ is the larger of $2\deg a$ and $2\deg b+3$, which have different parities and cannot cancel. So $L(m\infty)$ is spanned by the monomials
$$1,\quad x,\quad y,\quad x^2,\quad xy,\quad x^3,\quad x^2y,\ \dots$$
with pole orders $0,2,3,4,5,6,7,\dots$ up to $m$, and $\ell(m\infty)=m$ for $m\geq1$, as Riemann–Roch predicts for $g=1$.

**The codes.** Let $D=P_1+\dots+P_8$ and $C_m=C_L(D,m\infty)$. For $1\leq m\leq7$, Theorem 18.4 makes $C_m$ an $[8,m,d_m]$ code with $d_m\geq8-m$. Counting the nonzero entries of all $4^m-1$ nonzero words gives the exact values:

| $m$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|---|---|---|---|---|---|---|---|
| bound $8-m$ | 7 | 6 | 5 | 4 | 3 | 2 | 1 |
| actual $d_m$ | 8 | 6 | 5 | 4 | 3 | 2 | 2 |

**This answers (a).** The codes $C_m$ have length 8, against at most 5 for Reed–Solomon codes over $\mathbb{F}_4$, and $k+d\geq8$, at most one short of the Singleton bound $k+d\leq9$.

The table shows when the bound is exact, and the group law of Chapter 16 explains it. A nonzero $f\in L(m\infty)$ has at most $m$ zeros, so a word of weight $8-m$ needs a function vanishing at exactly $m$ of the points, with $\operatorname{div}(f)=P_{i_1}+\dots+P_{i_m}-m\infty$. By Theorem 16.4, which works over any field, that happens exactly when those $m$ points add up to zero in the group with $\infty$ as its zero. Here every one of the nine points is a flex (Variation 3), so every point has order 3, and the group is $\mathbb{Z}/3\times\mathbb{Z}/3$. Some $m$ of its eight nonzero elements add up to zero exactly when $2\leq m\leq6$. For $m=7$ the seven points add up to minus the eighth, and for $m=1$ a single point is never linearly equivalent to $\infty$, so the bound improves by 1 in those cases.

### (b) An $[8,4,4]$ code that corrects one error {-}

Take $m=4$. Evaluating $1$, $x$, $y$ and $x^2$ at $P_1,\dots,P_8$ gives a generator matrix of $C_4$:
$$\mathbf{G}=\begin{pmatrix}1&1&1&1&1&1&1&1\\0&0&1&1&\omega&\omega&\omega^2&\omega^2\\0&1&\omega&\omega^2&\omega&\omega^2&\omega&\omega^2\\0&0&1&1&\omega^2&\omega^2&\omega&\omega\end{pmatrix}.$$
Its minimum distance is 4: Theorem 18.4 gives at least 4, and $x^2+x$, which vanishes at the four points with $x\in\{0,1\}$, gives a word of weight 4. So $C_4$ corrects one error and detects up to three. The group law describes all the words of weight 4. Four points add up to zero exactly when they form two pairs $\{P,-P\}$, and since $-(a,b)=(a,b+1)$, those pairs are the fibres of $x$. So the 18 words of weight 4 are the nonzero multiples of $(x-a)(x-b)$, for the 6 pairs $a\neq b$ in $\mathbb{F}_4$. A count of all 255 nonzero words gives 18, 96, 24, 96 and 21 words of weights 4, 5, 6, 7 and 8.

**The code is its own dual.** Take $\eta=dx/(x^4-x)$. Theorem 11.8 says that $dx$ has no zeros or poles. The function $x^4-x=\prod_{a\in\mathbb{F}_4}(x-a)$ vanishes simply at the eight points and has a pole of order 8 at $\infty$. So $\operatorname{div}(\eta)=8\infty-D$. At $P_i$ the function $x-x(P_i)$ is a uniformizer, and the residue of $\eta$ is $1/(4x^3-1)=1$, because $4=0$ and $-1=1$ in characteristic 2. Proposition 18.5 then gives
$$C_m^\perp=C_L(D,\,D-m\infty+8\infty-D)=C_{8-m}.$$
In particular $C_4^\perp=C_4$, so $\mathbf G$ is also a **parity-check matrix**: a word $r$ lies in $C_4$ exactly when $\mathbf G r^{\mathsf T}=0$.

**Decoding.** Suppose the codeword $c$ is sent and $r=c+\varepsilon e_j$ arrives, with one error of size $\varepsilon\neq0$ in position $j$. The **syndrome** is
$$s=\mathbf G r^{\mathsf T}=\varepsilon\,\mathbf G e_j^{\mathsf T}=\varepsilon\,\bigl(1,\ x(P_j),\ y(P_j),\ x(P_j)^2\bigr)^{\mathsf T}.$$
So $\varepsilon=s_1$, and the error sits at the point $P_j=(s_2/s_1,\ s_3/s_1)$ of the curve. The syndrome is a point of the curve, scaled by the error.

**An example.** The message $f=\omega+x+y+x^2$ gives the codeword
$$c=(\omega,\ \omega^2,\ 0,\ 1,\ 1,\ 0,\ 1,\ 0).$$
Suppose the sixth entry arrives as $\omega^2$ instead of 0, so that $r=(\omega,\ \omega^2,\ 0,\ 1,\ 1,\ \omega^2,\ 1,\ 0)$. The syndrome is $s=(\omega^2,\ 1,\ \omega,\ \omega)$. Hence $\varepsilon=\omega^2$, and the error is at $(1/\omega^2,\ \omega/\omega^2)=(\omega,\ \omega^2)=P_6$. The last entry checks it: $s_4=\varepsilon\,\omega^2=\omega^4=\omega$. Subtracting $\omega^2$ in position 6 recovers $c$.

**This answers (b).** $C_4$ is an $[8,4,4]$ code over $\mathbb{F}_4$, it equals its own dual, and the syndrome of a single error reads off its position as a point of the curve. No linear code over $\mathbb{F}_4$ of length 8 and dimension 4 does better. An $[8,4,5]$ code would be MDS, and MDS codes of dimension 4 over $\mathbb{F}_4$ have length at most $q+k-1=7$ (Variation 1).

### (c) The longest codes from genus 1 {-}

By Theorem 18.6, a curve of genus 1 over $\mathbb{F}_4$ has at most $4+1+2\cdot1\cdot2=9$ rational points. Our curve has exactly 9, the most possible, as Chapter 11 promised. Curves that attain the bound are called **maximal**.

**This answers (c).** No curve of genus 1 over $\mathbb{F}_4$ has more points, so none gives longer codes of this kind. Longer codes over $\mathbb{F}_4$ need curves of higher genus, whose defect $g$ in Theorem 18.4 grows with them.

Over larger fields the counts follow the pattern that the Weil conjectures predict. Over $\mathbb{F}_{4^n}$ the curve has
$$N_n=4^n+1-2\,(-2)^n$$
points: 9 over $\mathbb{F}_4$, 9 over $\mathbb{F}_{16}$ and 81 over $\mathbb{F}_{64}$, which a direct count confirms. Over $\mathbb{F}_{16}$ it has no new points at all (Variation 4).

## What Just Happened

- **Codes from curves.** Evaluating the functions of $L(G)$ at $n$ rational points gives a linear code. Riemann–Roch gives its dimension, and the fact that a function in $L(G)$ has at most $\deg G$ zeros bounds its minimum distance.
- **The price of genus.** The parameters satisfy $k+d\geq n+1-g$. The line gives Reed–Solomon codes, which are optimal but short. A curve with more points gives longer codes at a cost of $g$.
- **Duality is the residue theorem.** A differential with simple poles of residue 1 at the evaluation points turns orthogonality of codes into the vanishing of a sum of residues.
- **The problem.** The 9 points of $y^2+y=x^3$ over $\mathbb{F}_4$ give codes of length 8. The $[8,4,4]$ code is self-dual and best possible, and its syndromes locate single errors as points of the curve.
- **The limit.** The Hasse–Weil bound caps the number of points, and this curve attains it.

## Threads

**Codes better than random.** Most long codes are about as good as a randomly chosen one, and the Gilbert–Varshamov bound of the 1950s measures what random codes achieve. For decades no explicit family did better. In 1982 Tsfasman, Vlăduţ and Zink used modular curves over $\mathbb{F}_q$, with $q$ a square, which have about $(\sqrt q-1)g$ points. For $q\geq49$ their Goppa codes beat the Gilbert–Varshamov bound. By the Drinfeld–Vlăduţ bound of 1983, no family of curves has asymptotically more points relative to the genus. Ihara had shown in 1981 that modular curves reach that limit.

**Hermitian curves.** The curve $y^2+y=x^3$ over $\mathbb{F}_4$ is the smallest of the Hermitian curves $y^q+y=x^{q+1}$ over $\mathbb{F}_{q^2}$, which have genus $q(q-1)/2$ and $q^3+1$ points, the most that Theorem 18.6 allows. Over $\mathbb{F}_{16}$ the curve $y^4+y=x^5$ has genus 6 and 65 points, and gives codes of length 64, against at most 17 for Reed–Solomon codes over $\mathbb{F}_{16}$ (Variation 5).

**Decoding.** Correcting errors needs more than a large minimum distance: it needs an efficient algorithm. For Goppa codes, algorithms based on linear algebra were found around 1990, and they use Riemann–Roch spaces again, to build an error-locating function.

**Cryptography.** Goppa's earlier codes, from the projective line, are the basis of the McEliece cryptosystem of 1978. Its security rests on the difficulty of decoding a code whose structure is hidden, and it is among the systems proposed to resist attack by quantum computers. Codes from curves of higher genus have also been proposed for it, and the attacks on them work by recovering the hidden curve.

**When are two curves the same?** Over $\mathbb{Q}$ the equation $y^2+y=x^3$ is $Y^2=X^3+16$, a twist of the Fermat cubic (Chapter 17). Over $\mathbb{F}_4$ it is wildly ramified over the $x$-line (Chapter 11), and all nine of its points are flexes. One equation looks very different over different fields, as Chapter 13 predicted.

## Variations

These are optional. A hint follows each one.

**Variation 1.** Show that an MDS code of dimension $k\geq2$ over $\mathbb{F}_q$ has length at most $q+k-1$. In particular, MDS codes of dimension 2 over $\mathbb{F}_4$ have length at most 5.
*Hint:* The codewords that vanish in one chosen coordinate, with that coordinate deleted, form an MDS code of dimension $k-1$ and length $n-1$. Repeat until $k=2$. In an $[m,2,m-1]$ code, the words vanishing at a given coordinate form a line through the origin, and different coordinates give different lines, since no nonzero word has two zeros. A plane over $\mathbb{F}_q$ contains only $q+1$ such lines.

**Variation 2.** The functions in $L(3\infty)$ are $a+bx+cy$, so the words of $C_3$ record where lines meet the curve. Show that 12 lines contain three of the nine points, and that each point lies on four of them, as in the affine plane of order 3. Deduce that $C_3$ has exactly 24 words of weight 5.
*Hint:* The 4 vertical lines contain $\infty$. Each of the other 8 lines gives a weight-5 word for each of its 3 nonzero multiples.

**Variation 3.** Show that every point of $y^2+y=x^3$ over $\mathbb{F}_4$ is a flex, and deduce that every point has order 3 in the group with zero $\infty$.
*Hint:* At $(a,b)$ the tangent is $y=a^2x+b+a^3$. Substituting gives $x^3+a^4x^2+a^2x+\dots$, which is $(x+a)^3$ because $a^4=a$ for $a\in\mathbb{F}_4$. A flex $P$ has $3P\sim3\infty$, since the tangent at $P$ and the line at infinity meet the curve in $3P$ and $3\infty$.

**Variation 4.** In characteristic 2, the equation $y^2+y=c$ has two solutions in $\mathbb{F}_{2^r}$ when $\operatorname{Tr}(c)=c+c^2+c^4+\dots+c^{2^{r-1}}$ is 0, and none otherwise. Use this to show that $y^2+y=x^3$ has exactly 9 points over $\mathbb{F}_{16}$, and check the formula $N_n=4^n+1-2(-2)^n$ for $n=2$.
*Hint:* Over $\mathbb{F}_{16}$, exactly four values of $x$ have $\operatorname{Tr}(x^3)=0$, namely the four elements of $\mathbb{F}_4$. That gives $1+2\cdot4=9$ points.

**Variation 5.** The Hermitian curve $y^4+y=x^5$ over $\mathbb{F}_{16}$ has genus 6 and 65 rational points. Show that it attains the Hasse–Weil bound, and find the parameters that Theorem 18.4 guarantees for $C_L(D,m\infty)$, with $D$ the sum of the 64 affine points and $10<m<64$.
*Hint:* $16+1+2\cdot6\cdot4=65$. Since $m>2g-2=10$, the dimension is $m-5$, and the minimum distance is at least $64-m$.

## Reading Map

- **[S, Chapters 2, 5, 7 and 8]:** Goppa codes, their parameters and duals; function fields over finite fields, the zeta function and the Hasse–Weil theorem; asymptotic bounds; and more codes, including Hermitian codes.
- **[Si, V.1]:** the Hasse bound for elliptic curves over finite fields.
- **F. J. MacWilliams and N. J. A. Sloane, *The Theory of Error-Correcting Codes*:** the classical theory, including Reed–Solomon codes.
- **M. A. Tsfasman and S. G. Vlăduţ, *Algebraic-Geometric Codes*:** the theory of Goppa codes at full strength.
- **A. Couvreur and H. Randriambololona, "Algebraic geometry codes and some applications" (2020):** a survey, with decoding and applications to cryptography.
- **Sources.** I. S. Reed and G. Solomon, "Polynomial codes over certain finite fields", *Journal of the Society for Industrial and Applied Mathematics* 8 (1960). V. D. Goppa, "Codes on algebraic curves", *Doklady Akademii Nauk SSSR* 259 (1981). M. A. Tsfasman, S. G. Vlăduţ and Th. Zink, "Modular curves, Shimura curves, and Goppa codes, better than Varshamov–Gilbert bound", *Mathematische Nachrichten* 109 (1982).
