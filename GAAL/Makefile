# Makefile per la compilazione del progetto LaTeX
# Creato date

.PHONY: pdf dvi ps compile clean download all
compile: pdf
	make clean

all: pdf dvi ps
	make clean

ps: dvi
	dvips FattiDiGAAL.dvi

dvi: download
	latex --shell-escape FattiDiGAAL.tex

pdf: download
	pdflatex --shell-escape FattiDiGAAL.tex
	pdflatex --shell-escape Compito.tex
	pdflatex --shell-escape EsercizioDifficile.tex

# Dovremmo controllare che sia la versione più recente
download:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls

clean:
	rm -f *.aux *.log *.out

# Fine del Makefile
