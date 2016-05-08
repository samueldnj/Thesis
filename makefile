export PATH := /Library/TeX/texbin:$(PATH)    # add LaTeX path
export PATH := /usr/local/bin:$(PATH) 				# add Rscript path

# Cluster targets
all: pdf doc
pdf:  prop.pdf fig.pdf
doc:  prop.docx fig.pdf

# Variables for pandoc calls
PANDOC = pandoc
LATEX = pdflatex
BIB  = --filter pandoc-citeproc --bibliography ~/Work/Library/library.bib
CSL  = --csl ~/Work/write/templates/csl/apa.csl 
PTMP = --template ~/Work/write/templates/tex/basic.latex
BIBPRE = --filter pandoc-citeproc-preamble -M citeproc-preamble=/Users/sdnjohnson/Work/write/templates/tex/citeproc-preamble.latex
# ABV  = --citation-abbreviations ./pandoc/abbrev.json
# STMP = --template ./pandoc/sup.latex
# FTMP = --template ./pandoc/fig.latex
# FONT = --variable fontsize=12pt
# TIMS = --variable mainfont=Times
WTMP = --reference-docx ~/Work/write/templates/docx/basic.docx

## pdf
prop.pdf: prop.tex makefile
	$(LATEX) $<

## tex
prop.tex: prop.md makefile
	$(PANDOC) -s $(PTMP) $(BIB) $(BIBPRE) $(CSL) -o $@ $<

## docx
prop.docx: prop.tex makefile
	$(PANDOC) -s -S $(WTMP) -o $@ $<

## fig
fig.pdf: fig.tex makefile
	$(LATEX) $<

fig.tex: fig.md makefile
	$(PANDOC) -s -S $(PTMP) -o $@ $<	

## cleanup
clean:
	rm -f *.{pdf,doc,docx,tex,aux,log,out,toc}
