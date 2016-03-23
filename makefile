export PATH := /Library/TeX/texbin:$(PATH)    # add LaTeX path
export PATH := /usr/local/bin:$(PATH) 				# add Rscript path

# Cluster targets
pdf:  prop.pdf fig.pdf
doc:  prop.docx fig.pdf

# Variables for pandoc calls
PANDOC = pandoc
LATEX = pdflatex
BIB  = --bibliography ~/Dropbox/Library/library.bib
CSL  = --csl ~/Work/write/templates/csl/apa.csl 
PTMP = --template ~/Work/write/templates/tex/basic.latex
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
	$(PANDOC) -s $(PTMP) $(BIB) $(CSL) -o $@ $<

## docx
prop.docx: prop.md makefile
	$(PANDOC) -s -S $(WTMP) $(BIB) $(CSL) -o $@ $<

## fig
fig.pdf: fig.tex makefile
	$(LATEX) $<

fig.tex: fig.md makefile
	$(PANDOC) -s -S $(PTMP) -o $@ $<	

## cleanup
clean:
	rm -f *.{pdf,doc,docx,tex,aux,log,out,toc}
