# Pisani diplomski rad

Repozitorij sadrži sve datoteke potrebne za generiranje `.pdf` oblika
diplomskog rada. `.pdf` je prisutan u [`releases`](https://github.com/vjeranc/dr-pisani/releases) odjeljku.

Glavna datoteka je `diplomski.tex`.

Za generiranje moguće je koristiti `pdflatex`.

Koraci:
`pdflatex diplomski.tex; bibtex diplomski.aux; pdflatex diplomski.tex; pdflatex diplomski.tex`

`preamble.tex` sadrži popis svih potrebnih paketa.

Moja preporuka je sve datoteke staviti na
[sharelatex](https://www.sharelatex.com/). U tom slučaju dovoljno je izabrati
`diplomski.tex` kao glavnu datoteku i kliknuti na gumb `Compile`.

Diplomski napisan za vrijeme pohađanja Fakulteta elektrotehnike i računarstva Sveučilišta u Zagrebu.

Izvorni kod nije javno dostupan (moguće ga je naći na CD-u priloženom u radu).

# Typed form of thesis

Repository contains all files needed for generating `.pdf` of master's thesis. `.pdf` can be find by clicking [`releases`](https://github.com/vjeranc/dr-pisani/releases).

Main file is `diplomski.tex`.

`pdflatex` can be used for generation.

Steps:
`pdflatex diplomski.tex; bibtex diplomski.aux; pdflatex diplomski.tex; pdflatex diplomski.tex`



`preamble.tex` contains the list of all necessary packages.

My recommendation is to upload all of the files to
[sharelatex](https://www.sharelatex.com/).
In that case it's enough to select `diplomski.tex` as main file and click the
`Compile` button.

Thesis written while attending Faculty of Electrical Engineering and Computing, University of Zagreb.

Source code isn't publicly available (it can be found on the CD at the back of the thesis).
