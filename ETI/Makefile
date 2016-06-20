# Makefile per la compilazione del progetto LaTeX
# Creato lun 20 giu 2016, 23.38.00, CEST

.PHONY: alldocuments FattiDiETI 

alldocuments: 
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape FattiDiETI.tex
	rm -f *.aux *.log *.out

FattiDiETI:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape FattiDiETI.tex
	rm -f *.aux *.log *.out

# Fine del Makefile
