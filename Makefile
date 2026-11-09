# One source (Markdown), many outputs.  Usage:  make   |  make pdf  |  make web  |  make epub  |  make tex  |  make clean | make backup
# Edit only: chapters/*.md, macros.md, metadata.yaml.  Everything in build/ is generated.

CHAPTERS := $(sort $(wildcard chapters/*.md))
SOURCES  := macros.md $(CHAPTERS)
COMMON   := --metadata-file=metadata.yaml --lua-filter=filters/theorem-envs.lua \
            --number-sections --toc --toc-depth=2 --top-level-division=chapter

# Personal settings such as BACKUPDIR. local.mk is not in git; copy local.mk.example to start.
-include local.mk

all: pdf web epub tex

# Print PDF (6x9in trim for KDP / IngramSpark) via XeLaTeX
pdf: build/book.pdf
build/book.pdf: $(SOURCES) metadata.yaml filters/theorem-envs.lua
	@mkdir -p build
	pandoc $(SOURCES) $(COMMON) --pdf-engine=xelatex -o $@

# LaTeX source (for a publisher, or to hand-polish a final print version)
tex: build/book.tex
build/book.tex: $(SOURCES) metadata.yaml filters/theorem-envs.lua
	@mkdir -p build
	pandoc $(SOURCES) $(COMMON) --standalone -o $@

# Website: one HTML page per chapter, math rendered by MathJax from a CDN
web: build/web/index.html
build/web/index.html: $(SOURCES) metadata.yaml filters/theorem-envs.lua style.css
	@mkdir -p build
	rm -rf build/web build/web.zip
	pandoc $(SOURCES) $(COMMON) --to=chunkedhtml --split-level=1 --chunk-template=%i.html --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js \
	  --css=style.css -o build/web.zip
	unzip -q build/web.zip -d build/web
	cp style.css build/web/style.css

# EPUB 3 with MathML equations (works in Apple Books, Kobo, Thorium; Kindle is weak at math)
epub: build/book.epub
build/book.epub: $(SOURCES) metadata.yaml filters/theorem-envs.lua style.css
	@mkdir -p build
	pandoc $(SOURCES) $(COMMON) --to=epub3 --mathml --css=style.css -o $@

# Copy the build outputs to $(BACKUPDIR), which is set in local.mk or on the command line
backup: build/book.pdf build/book.epub build/book.tex build/web/index.html
	$(if $(BACKUPDIR),,$(error BACKUPDIR is not set. Put it in local.mk or run: make backup BACKUPDIR=/path))
	cp -v build/book.pdf $(BACKUPDIR)/
	cp -v build/book.epub $(BACKUPDIR)/
	cp -v build/book.tex $(BACKUPDIR)/
	rsync -a --delete build/web/ $(BACKUPDIR)/web/

clean:
	rm -rf build

.PHONY: all pdf tex web epub clean backup
