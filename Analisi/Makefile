# Makefile per la compilazione del progetto LaTeX
# Creato mar  5 lug 2016, 00.03.56, CEST

.PHONY: alldocuments Analisi3 AnalisiSempreverde FattiDiAnalisi FunzioniOmogeneeEDifferenziabilita 

alldocuments: 
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape Analisi3.tex
	pdflatex --shell-escape AnalisiSempreverde.tex
	pdflatex --shell-escape FattiDiAnalisi.tex
	pdflatex --shell-escape FunzioniOmogeneeEDifferenziabilita.tex
	rm -f *.aux *.log *.out

Analisi3:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape Analisi3.tex
	rm -f *.aux *.log *.out

AnalisiSempreverde:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape AnalisiSempreverde.tex
	rm -f *.aux *.log *.out

FattiDiAnalisi:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape FattiDiAnalisi.tex
	rm -f *.aux *.log *.out

FunzioniOmogeneeEDifferenziabilita:
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape FunzioniOmogeneeEDifferenziabilita.tex
	rm -f *.aux *.log *.out

# Fine del Makefile
