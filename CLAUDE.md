# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

A template for writing a mathematics book in Markdown. Pandoc builds it into a print PDF, LaTeX source, a chunked HTML website and an EPUB. The `chapters/` folder holds a short sample book (`00-introduction.md`, `01-pythagoras.md`, `02-cubics.md`) that demonstrates every formatting feature. People who start a book from this repository replace those chapters.

## Build commands

Run from the repository root:

```
make          # all four outputs
make pdf      # build/book.pdf   (XeLaTeX, 6x9in trim)
make tex      # build/book.tex
make web      # build/web/       (one HTML page per chapter, MathJax from CDN)
make epub     # build/book.epub  (MathML)
make backup   # copy the outputs to BACKUPDIR, set in local.mk (see local.mk.example)
make clean
```

Requirements: pandoc >= 3.0 (for `chunkedhtml`), `unzip`, and XeLaTeX with the Latin Modern fonts for the PDF. There are no tests or linters; a successful build is the check.

`build/` and `local.mk` are not in git. Edit only `chapters/*.md`, `macros.md`, `metadata.yaml` (plus `filters/` and `style.css` for pipeline changes).

## Pipeline architecture

- Source order is `macros.md` first, then `chapters/*.md` sorted by filename. The numeric filename prefix sets the chapter order.
- `macros.md` holds LaTeX `\newcommand`s (`\PP`, `\Aff`, `\CC`, `\ZZ`, `\Spec`, `\Pic`). Pandoc applies them in every output format, so chapters can use them freely. Add new macros there.
- Pandoc runs with `--number-sections --top-level-division=chapter`. Each `#` heading is one chapter, each `##` a section, and pandoc does the numbering. Do not write numbers in headings. Give chapters an ID (`# Title {#cubics}`) and cross-reference with `Chapter [2](#cubics)`.
- `# Title {-}` makes an unnumbered chapter (introduction, preface). The filter does not advance the chapter number for it.
- The web page names come from the chapter heading IDs (`--chunk-template=%i.html`), for example `cubics.html`.
- Theorem-like blocks are pandoc fenced divs: `::: theorem`, `lemma`, `proposition`, `definition`, `example`, `problem`, `remark`, `proof`, closed by `:::`.
- `filters/theorem-envs.lua` converts these divs:
  - LaTeX/PDF: into amsthm `\begin{env}...\end{env}`. The environments are declared in `metadata.yaml` `header-includes`, numbered per chapter with one shared counter.
  - HTML/EPUB: the filter adds a bold label "Theorem c.n." and keeps its own counter, which mirrors the LaTeX numbering (reset on each numbered level-1 heading, one counter for all environment types, `proof` unnumbered).
  - It also drops raw TeX blocks (the macros) from non-LaTeX outputs, so chunked HTML gets no empty first page.
  - A new environment must go in three places: the `envs` table in the filter, a `\newtheorem` in `metadata.yaml`, and a CSS rule in `style.css`.
- `metadata.yaml` sets title, author, PDF page geometry and fonts. The LaTeX settings have no effect on HTML/EPUB.
- `style.css` is used by the web and EPUB outputs only.

## CI

`.github/workflows/build.yml` runs `make` on push and pull request to `main` (Ubuntu 24.04, apt pandoc and TeX Live) and uploads the outputs as the artifact `book`. It does not deploy anything.
