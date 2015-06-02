# Makefile per la compilazione del progetto LaTeX
# Creato date

.PHONY: pdf dvi ps compile clean
compile: pdf dvi ps
	make clean

ps: dvi
	dvips FattiGeneraliAnalisi1.dvi

dvi: stdmdoc.cls
	latex --shell-escape FattiGeneraliAnalisi1.tex

pdf: stdmdoc.cls
	pdflatex --shell-escape FattiGeneraliAnalisi1.tex

stdmdoc.cls:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls

clean:
	rm -f *.aux *.log *.out

# Fine del Makefile
