
diplomski.pdf: diplomski.bbl
	pdflatex diplomski.tex
	pdflatex diplomski.tex

diplomski.aux:
	pdflatex diplomski.tex

diplomski.bbl: diplomski.aux
	bibtex diplomski.aux
