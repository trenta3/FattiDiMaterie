#!/bin/sh

# Compiliamo il file .tex del sottomodulo di auron
pdflatex AscariMigliorini/ETI.tex ETI.pdf
rm -f *.aux *.log *.out *.toc

