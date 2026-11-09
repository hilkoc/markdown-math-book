# Markdown Math Book

A starting point for writing a mathematics book in Markdown. [pandoc](https://pandoc.org) builds one source into four formats:

| Target | Output | Notes |
|--------|--------|-------|
| `make pdf`  | `build/book.pdf`  | Print PDF with a 6×9 in trim, made with XeLaTeX |
| `make tex`  | `build/book.tex`  | LaTeX source, for a publisher or for final hand-polishing |
| `make web`  | `build/web/`      | Website with one page per chapter. Math is rendered by MathJax. |
| `make epub` | `build/book.epub` | EPUB 3 with MathML math |

`make` builds all four, and `make clean` deletes `build/`.

The repository contains two short sample chapters and an unnumbered introduction. Together they show every feature: chapter and section numbering, numbered theorems, lemmas, propositions, definitions, examples, problems and remarks, proofs, LaTeX macros, cross-references, footnotes and tables.

## Start your own book

1. Use this repository as a template, or fork or clone it.
2. Set the title, subtitle, author and rights in `metadata.yaml`.
3. Replace the files in `chapters/` with your own chapters.
4. Run `make web` for a quick check, and `make` for all formats.

## Repository layout

- `chapters/*.md`: one file per chapter. The filename prefix sets the chapter order.
- `macros.md`: LaTeX macros (`\PP`, `\Aff`, `\CC`, `\ZZ`, `\Spec`, `\Pic`) that you can use in every chapter. Add your own here.
- `metadata.yaml`: title, author, page size, fonts and theorem environments.
- `filters/theorem-envs.lua`: turns blocks such as `::: theorem` into numbered theorems in every output format.
- `style.css`: styles for the website and the EPUB.
- `local.mk.example`: personal Makefile settings. Copy it to `local.mk` (ignored by git) to use `make backup`.
- `.github/workflows/build.yml`: builds all formats on GitHub for every push to `main`.
- `build/`: generated files. Do not edit them.

## Writing

Each `#` heading starts a chapter, and each `##` heading a section. Pandoc numbers them, so do not write numbers in headings. Add `{-}` to a heading for an unnumbered chapter, such as a preface:

```markdown
# Preface {-}
```

Write theorems, proofs and problems as fenced divs:

```markdown
::: theorem
Every rational point of $C$ other than $(-1, 0)$ has the form ...
:::

::: proof
Project from the point $(-1,0)$ ...
:::
```

The available environments are `theorem`, `lemma`, `proposition`, `definition`, `example`, `problem`, `remark` and `proof`. All except `proof` share one counter, which restarts in each chapter: Lemma 1.4 is followed by Theorem 1.5.

To cross-reference a chapter, give its heading an ID (`# Why Cubics Are Different {#cubics}`) and link to it with `Chapter [2](#cubics)`.

To add an environment, change three files: the `envs` table in `filters/theorem-envs.lua`, a `\newtheorem` line in `metadata.yaml`, and a CSS rule in `style.css`.

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

Then build from this directory:

```sh
make web    # quick check: needs no LaTeX
make pdf
```

## Building on GitHub

`.github/workflows/build.yml` runs `make` on every push and pull request to `main`. The PDF, EPUB, LaTeX source and website are attached to the workflow run as the artifact `book`.

To publish the website, add a job that uploads `build/web` with `actions/upload-pages-artifact` and deploys it with `actions/deploy-pages`. Then open the repository settings, go to Pages, and set Source to "GitHub Actions".

## License

MIT. See [LICENSE](LICENSE). The license covers the pipeline and the sample chapters. It does not cover books that you write with it.
