# Makefile per la compilazione del progetto LaTeX
# Creato date

.PHONY: pdf dvi ps compile clean download all
compile: pdf
	make clean

all: pdf dvi ps
	make clean

ps: dvi
	dvips EserciziRaccoltiAlgebra.dvi
	dvips FattiDiAlgebra.dvi
	dvips TeoriaAnelli.dvi
	dvips TeoriaModuli.dvi
	dvips TeoriaPolinomi.dvi

dvi: download
	latex --shell-escape EserciziRaccoltiAlgebra.tex
	latex --shell-escape FattiDiAlgebra.tex
	latex --shell-escape TeoriaAnelli.tex
	latex --shell-escape TeoriaModuli.tex
	latex --shell-escape TeoriaPolinomi.tex

pdf: download
	pdflatex --shell-escape EserciziRaccoltiAlgebra.tex
	pdflatex --shell-escape FattiDiAlgebra.tex
	pdflatex --shell-escape TeoriaAnelli.tex
	pdflatex --shell-escape TeoriaModuli.tex
	pdflatex --shell-escape TeoriaPolinomi.tex

# Dovremmo controllare che sia la versione più recente
download:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls

clean:
	rm -f *.aux *.log *.out

# Fine del Makefile
