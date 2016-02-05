# Makefile per la compilazione del progetto LaTeX
# Creato mar 19 gen 2016, 18.27.01, CET

.PHONY: alldocuments CoomologiaGruppi EserciziRaccoltiAlgebra FattiDiAlgebra TeoriaAnelli TeoriaModuli TeoriaPolinomi TrucchiAlgebra1 

alldocuments: 
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape CoomologiaGruppi.tex
	pdflatex --shell-escape EserciziRaccoltiAlgebra.tex
	pdflatex --shell-escape FattiDiAlgebra.tex
	pdflatex --shell-escape TeoriaAnelli.tex
	pdflatex --shell-escape TeoriaModuli.tex
	pdflatex --shell-escape TeoriaPolinomi.tex
	pdflatex --shell-escape TrucchiAlgebra1.tex
	rm -f *.aux *.log *.out

CoomologiaGruppi:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape CoomologiaGruppi.tex
	rm -f *.aux *.log *.out

EserciziRaccoltiAlgebra:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape EserciziRaccoltiAlgebra.tex
	rm -f *.aux *.log *.out

FattiDiAlgebra:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape FattiDiAlgebra.tex
	rm -f *.aux *.log *.out

TeoriaAnelli:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape TeoriaAnelli.tex
	rm -f *.aux *.log *.out

TeoriaModuli:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape TeoriaModuli.tex
	rm -f *.aux *.log *.out

TeoriaPolinomi:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape TeoriaPolinomi.tex
	rm -f *.aux *.log *.out

TrucchiAlgebra1:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape TrucchiAlgebra1.tex
	rm -f *.aux *.log *.out

# Fine del Makefile
