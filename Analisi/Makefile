# Makefile per la compilazione del progetto LaTeX
# Creato lun  4 lug 2016, 17.14.03, CEST

.PHONY: alldocuments AnalisiSempreverde FattiDiAnalisi FunzioniOmogeneeEDifferenziabilita 

alldocuments: 
	wget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls
	pdflatex --shell-escape AnalisiSempreverde.tex
	pdflatex --shell-escape FattiDiAnalisi.tex
	pdflatex --shell-escape FunzioniOmogeneeEDifferenziabilita.tex
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
