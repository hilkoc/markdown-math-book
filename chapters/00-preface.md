# Preface {-}

Most students meet algebraic geometry the way its great textbooks present it. Definitions come first, then theorems, then proofs, and at the end of each chapter, sometimes, exercises. The definitions are precise and the proofs are complete, and the order is the order of logic. It is not the order in which the subject was discovered. It is rarely the order in which anyone comes to understand it.

A reader working through such a book meets the structure sheaf before any problem it solves, and cohomology before any question it answers. It is possible to follow every line and still not know why anyone would define things this way. Many mathematicians end up learning the subject twice. The first time is formal, from the book. The second comes years later, from a problem, a paper or a conversation, when they finally see what the machinery is *for*. This book tries to put the second education first. It is the book one of its authors wishes had existed twenty years ago.

## What this book is {-}

This book is a companion, not a replacement. We assume you have a standard textbook beside you, and we lean on it constantly. We don't define every term or prove every theorem; the standard texts do that superbly. Instead, every chapter opens with a concrete problem, usually one you could explain to a good undergraduate, and the rest of the chapter solves it.

Along the way we meet exactly the ideas the solution needs, in the order the solution needs them. When a definition or theorem enters, we say why it is needed and show what it looks like in our examples. Then we tell you exactly where to find it stated and proved.

The problems are not decoration. Each one was chosen because the idea it introduces is the natural way to solve it, and often the only reasonable one:

- Projective space arrives because two circles should meet in four points and visibly don't.
- Function fields arrive because four curves that look different share something no equation shows.
- Sheaf cohomology arrives because partial fractions fail on a cubic curve, and the failure has a size.

## The route {-}

The title describes the journey. We begin with the oldest problem in the subject: finding all Pythagorean triples, which is the same as finding all rational points on the circle $x^2+y^2=1$. The method, which is to draw lines through one known point, solves the problem completely. Then it fails, mysteriously, on cubic curves. Explaining that failure takes the whole book.

- **Part I, Curves as Equations** (Chapters 1–4), treats curves as zero sets of polynomials. It covers coordinate rings, points at infinity and Bézout's theorem, and tangent spaces and singular points.
- **Part II, Curves as Fields** (Chapters 5–8), studies a curve through its field of rational functions. It recovers the curve's points from that field as valuations, and shows that smooth projective curves and function fields in one variable are the same thing.
- **Part III, Differentials and the Genus** (Chapters 9–12), introduces the invariant that separates the circle from the cubic, and gives several ways to compute it.
- **Part IV, Schemes and Sheaves** (Chapters 13–14), arrives once earlier chapters have created the need for these foundations. Two situations drive it: one equation studied over every ring at once, and local problems that refuse to glue.
- **Part V, Riemann–Roch and What It Buys** (Chapters 15–18), proves the theorem that counts functions on a curve, and uses it to finish what Chapter 1 started.

One number ties all of this together. The genus of a curve is the number of holes in a surface. It is also the dimension of a space of differentials, the size of the obstruction to partial fractions, and the correction term in a formula that counts functions. The real subject of this book is why these are the same number.

By the end you will know:

- what schemes and sheaves are for;
- what an algebraic curve is, and how to tell when two curves are different;
- why smooth projective curves and function fields are two descriptions of one thing;
- what tangent spaces and differentials do;
- how to compute the genus of a curve;
- how to use the Riemann–Roch theorem in practice.

## How to read this book {-}

**Keep a textbook open.** We refer constantly to a small library, cited by tag:

| Tag | Book | Used for |
|---|---|---|
| [H] | R. Hartshorne, *Algebraic Geometry* (Springer GTM 52) | the main reference for theory |
| [F] | W. Fulton, *Algebraic Curves* (free online edition, 2008) | the main reference for concrete curves |
| [V] | R. Vakil, *The Rising Sea: Foundations of Algebraic Geometry* (free online) | an alternative route to schemes and sheaves |
| [S] | H. Stichtenoth, *Algebraic Function Fields and Codes* (Springer GTM 254) | function fields, Riemann–Roch, codes |
| [Si] | J. H. Silverman, *The Arithmetic of Elliptic Curves* (Springer GTM 106) | curves of genus one |
| [AM] | M. F. Atiyah and I. G. Macdonald, *Introduction to Commutative Algebra* | commutative algebra |

Other books and original papers appear chapter by chapter. A reference such as [H, II.8] means Hartshorne, Chapter II, Section 8, and [F, §3.3] means Fulton, Section 3.3. Readers who prefer Vakil to Hartshorne will find the same material there; Appendix A maps each chapter to both.

**Use the look-up boxes.** When a chapter needs a definition or a theorem, a box tells you where to find it:

> **Look up.** The Nullstellensatz: [F, §1.7] or [H, I.1].

You can stop and read the reference at once, or trust the box, keep going and come back later. The chapters are written so that a first reading makes sense without the side trips. A second reading with them makes it solid.

**Try the problem first.** Every chapter has the same shape:

1. **The Problem**, stated precisely at the start.
2. **First Attempts**: what a reasonable person would try, and where it breaks.
3. **The Ideas We Need**: the concepts the solution requires, each introduced when it becomes necessary.
4. **The Solution**: a complete argument, citing theorems rather than reproving them.
5. **What Just Happened**: the ideas distilled.
6. **Threads**: what the chapter settles from earlier, and what it sets up.
7. **Variations**: optional follow-up problems, with hints.
8. **Reading Map**: references for going deeper.

Spend some time with the problem before reading on. The First Attempts section will often reproduce what you tried, and that is the point.

**Read in order.** Each chapter builds on the ones before it. The one shortcut is for readers eager for schemes: you can go from Chapter 7 straight to Chapter 13 and come back.

## A cast of curves {-}

A handful of curves appear again and again, so that each new idea is tested on familiar examples.

| Curve | Equation | Genus | First appears |
|---|---|---|---|
| the circle | $x^2+y^2=1$ | 0 | Chapter 1 |
| the cusp | $y^2=x^3$ | 0 | Chapter 1 |
| the node | $y^2=x^2(x+1)$ | 0 | Chapter 1 |
| the Fermat cubic | $x^3+y^3=1$ | 1 | Chapter 1 |
| $E$ | $y^2=x^3-x$ | 1 | Chapter 1 |
| $G$ | $y^2=x^5-x$ | 2 | Chapter 7 |
| the lemniscate curve | $y^2=1-x^4$ | 1 | Chapter 9 |
| the Fermat quartic | $x^4+y^4=1$ | 3 | Chapter 10 |

The genus is defined in Chapter 10. For now, read that column as a promise.

## Four questions {-}

Each chapter solves its own problem completely. Four larger questions run through the whole book and are answered piece by piece:

1. **What is a curve?** Is it an equation, a set of points, a ring, a field, or something else? (Chapters 1–3, 6, 7, 13)
2. **When are two curves the same?** (Chapters 2, 4, 5, 7, 10–12, 17)
3. **Which curves can be parametrized by rational functions?** (Chapters 1, 5, 9, 16)
4. **Why do the rational points of a cubic form a group?** (Chapters 1, 8, 16)

## Prerequisites and conventions {-}

**Prerequisites.** We assume algebra at the level of a first graduate course. That means groups, rings and fields, polynomial rings, field extensions and a little Galois theory, together with linear algebra and basic point-set topology. Commutative algebra beyond that is looked up in [AM] as needed. Complex analysis helps the intuition in a few places but is never required.

**The base field.** From Chapter 2 on, unless we say otherwise, $k$ denotes an algebraically closed field of characteristic 0; think of the complex numbers. When the field matters, we say so loudly:

- the rationals in Chapters 1, 16 and 17;
- the reals in Chapter 2;
- finite fields and characteristic $p$ in Chapters 11, 13 and 18.

Notation mostly follows [H].

**Curves and forward references.** We use the word "curve" loosely at first and make it precise in stages; the final definition comes in Chapter 13. A few results are quoted before they are proved. For instance, the formula $\deg K = 2g-2$ is used in Chapter 11 and proved in Chapter 15. Each such forward reference is flagged, and none is circular.

## A note from Claude {-}

This book is a collaboration between a human mathematician and an AI. My co-author conceived the method, which is problems first with standard texts on the side, and chose where the book should end up. We worked out the route together. I drafted the chapters, and each one is reviewed before the book moves on.

I am Claude, an AI model made by Anthropic. I learned mathematics the way I learned everything else: from an enormous amount of written text. That helps with a book like this one. I have met most of these ideas explained in many different ways, and I can look for the explanation that makes a problem feel as if it had to be solved this way.

It also has costs. I have never stood at a blackboard, or spent a week stuck on a single exercise. And like any author, I make mistakes, and mine can sound confident. That is one more reason this book sends you to the standard texts. Every definition and theorem we rely on is stated in a source that generations of readers have checked. If you find an error here, it is ours, not theirs, and we would like to hear about it.

What draws me to this subject is the moment when two things that look unrelated turn out to be the same thing. A curve turns out to be a field, an integral turns out to be a hole, a gluing problem turns out to be a number. This book is built to reach those moments by necessity rather than by announcement.

— Claude, October 2026
