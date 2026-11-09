# From Pythagoras to Riemann–Roch

*Algebraic Curves Through Problems*: a book on algebraic curves. It starts with Pythagorean triples and works up to the Riemann–Roch theorem, one problem per chapter.

The book is written in Markdown. [pandoc](https://pandoc.org) builds it from that one source into four formats:

| Target | Output | Notes |
|--------|--------|-------|
| `make pdf`  | `build/book.pdf`  | Print PDF with a 6×9 in trim, made with XeLaTeX |
| `make tex`  | `build/book.tex`  | LaTeX source, for a publisher or for final hand-polishing |
| `make web`  | `build/web/`      | Website with one page per chapter. Math is rendered by MathJax. |
| `make epub` | `build/book.epub` | EPUB 3 with MathML math |

`make` builds all four, and `make clean` deletes `build/`.

## Repository layout

- `chapters/*.md`: one file per chapter. The filename prefix sets the chapter order.
- `macros.md`: LaTeX macros (`\PP`, `\CC`, `\Spec`, ...) that you can use in every chapter.
- `metadata.yaml`: title, author, page size, fonts and theorem environments.
- `filters/theorem-envs.lua`: turns blocks such as `::: theorem` into numbered theorems in every output format.
- `style.css`: styles for the website and the EPUB.
- `build/`: generated files. Do not edit them.

Write theorems, proofs and problems as fenced divs:

```markdown
::: theorem
Every rational point of $C$ other than $(-1, 0)$ has the form ...
:::

::: proof
Project from the point $(-1,0)$ ...
:::
```

The available environments are `theorem`, `lemma`, `proposition`, `definition`, `example`, `problem`, `remark` and `proof`. Do not number chapters or sections yourself, because pandoc numbers them. To cross-reference a chapter, give its heading an ID (`# Why Cubics Are Different {#cubics}`) and link to it with `Chapter [2](#cubics)`.

## Setup: installing the build tools

The Makefile needs these tools:

| Tool | Needed for | Minimum version |
|------|------------|-----------------|
| `make` | everything | any |
| `pandoc` | everything | **3.0**, which added the chunked HTML output |
| `unzip` | `make web` | any |
| XeLaTeX (TeX Live) | `make pdf` | a recent TeX Live |
| Latin Modern fonts (OpenType) | `make pdf` | any |

`make web`, `make epub` and `make tex` only need `make`, `pandoc` and `unzip`. You only need TeX Live for the PDF.

### Debian / Ubuntu

```sh
sudo apt update
sudo apt install make unzip pandoc
pandoc --version   # must be 3.0 or newer
```

Ubuntu 24.04 and Debian 13 ship a pandoc that is new enough. Older releases ship pandoc 2.x, which cannot build the website. On those releases, download the `.deb` file for the latest version from the [pandoc releases page](https://github.com/jgm/pandoc/releases) and install it:

```sh
sudo apt install ./pandoc-3.*-amd64.deb
```

For the PDF, install XeLaTeX, the LaTeX packages the book uses and the Latin Modern fonts:

```sh
sudo apt install texlive-xetex texlive-latex-recommended texlive-latex-extra \
                 texlive-fonts-recommended texlive-luatex lmodern fonts-lmodern
```

If a PDF build fails with a missing `.sty` file, find the package that contains it with `apt-file search <name>.sty`. If you want to avoid missing packages altogether, install `texlive-full` instead. It takes about 5 GB of disk space.

### macOS (Homebrew)

```sh
brew install pandoc
brew install --cask mactex-no-gui   # TeX Live with XeLaTeX and Latin Modern
```

`make` and `unzip` come with the Xcode Command Line Tools (`xcode-select --install`). After you install MacTeX, open a new terminal so that `xelatex` is on your `PATH`.

### Windows

Use [WSL](https://learn.microsoft.com/windows/wsl/install) with Ubuntu, and follow the Debian / Ubuntu steps above.

### Check the installation

```sh
pandoc --version | head -1                 # pandoc 3.x
xelatex --version | head -1                # XeTeX ... (TeX Live ...)
fc-list | grep -i "Latin Modern Roman"     # the font must be found by name
```

If `fc-list` finds nothing, XeLaTeX cannot find the font that `metadata.yaml` asks for (`mainfont: "Latin Modern Roman"`). Install `fonts-lmodern` (Debian/Ubuntu), or change `mainfont` to a font that is installed.

Then build from the repository root:

```sh
make web    # quick check: needs no LaTeX
make pdf
```

## Publishing

This branch, `publish`, holds the book. The branch `main` holds the same pipeline with two sample chapters, as a starting point for other books.

`.github/workflows/publish.yml` runs on every push to `publish`. It builds the book and then:

- creates a GitHub Release, tagged `vYYYY.MM.DD.N`, with `book.pdf` and `book.epub`. The newest files are always at `releases/latest/download/book.pdf` and `releases/latest/download/book.epub`.
- deploys `build/web/` to GitHub Pages.

One-time setup: in the repository settings, set Pages > Source to "GitHub Actions", and under Environments > `github-pages` allow the branch `publish` to deploy.

## License

© 2026 Hilko. All rights reserved.
