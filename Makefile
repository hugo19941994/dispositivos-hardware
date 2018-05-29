.PHONY: DispositivosHw all clean

all: DispositivosHw clean

DispositivosHw: DispositivosHw.tex
	pdflatex --shell-escape DispositivosHw.tex
	biber DispositivosHw
	pdflatex --shell-escape DispositivosHw.tex
	pdflatex --shell-escape DispositivosHw.tex

clean:
	latexmk -c
	rm -f *~ *.dvi *.log *.bak *.aux *.toc *.ps *.eps *.blg *.bbl
	rm -f *.glg *.glo *.gls *.idx *.ild *.ind *.ist *.ilg *.iso *.out
	rm -f *.acn *.acr *.alg *.xdy *.vrb *.pstex *.pstex_t *.run.xml
	rm -f *.bbl *.nav *.snm *.glsdefs *.bcf *.lof *.lot
	rm -rf _minted-*
