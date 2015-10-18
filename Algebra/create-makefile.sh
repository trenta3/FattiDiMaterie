#!/bin/bash
now=date
createmakefile=yes;

if [ -e "Makefile" ]; then
	echo "Il Makefile è già presente. Vuoi ricrearlo?";
	select yn in "Si" "No"; do
		case $yn in
			Si )
				createmakefile=yes; break;;
			No )
				createmakefile=no; break;;
		esac
	done
fi

if [ "$createmakefile" == "yes" ]; then
	echo "Sto cercando i file .tex"
	#Guardiamo i file .tex nella cartella e chiediamo quali aggiungere
	texfiles=(./*.tex)
	basetexfiles=()
	texfilestocompile=()

	echo ${#texfiles[@]} "file .tex trovati"

	for f in "${texfiles[@]}"; do
		filename=$(basename "$f")
		ext="${filename##*.}"
		fname="${filename%.*}"
		basetexfiles+=( $fname );
		echo "Vuoi compilare il file \"$fname.$ext\"?"
		select yn in "Si" "No"; do
			case $yn in
				Si ) texfilestocompile+=( $fname ); break;;
				No ) break;;
			esac
		done
	done

	echo "File .tex finiti. Creazione del Makefile"

	#Creazione del makefile
	echo "# Makefile per la compilazione del progetto LaTeX" > Makefile
	echo "# Creato $now" >> Makefile
	echo "" >> Makefile
	echo ".PHONY: pdf dvi ps compile clean download all" >> Makefile
	echo "compile: pdf" >> Makefile
	echo -e "\tmake clean" >> Makefile
	echo "" >> Makefile
	echo "all: pdf dvi ps" >> Makefile
	echo -e "\tmake clean" >> Makefile
	echo "" >> Makefile
	echo "ps: dvi" >> Makefile
	for f in "${texfilestocompile[@]}"; do
		echo -e "\tdvips $f.dvi" >> Makefile
	done
	echo "" >> Makefile
	echo "dvi: download" >> Makefile
	for f in "${texfilestocompile[@]}"; do
		echo -e "\tlatex --shell-escape $f.tex" >> Makefile
	done
	echo "" >> Makefile
	echo "pdf: download" >> Makefile
	for f in "${texfilestocompile[@]}"; do
		echo -e "\tpdflatex --shell-escape $f.tex" >> Makefile
	done
	echo "" >> Makefile
	echo "# Dovremmo controllare che sia la versione più recente" >> Makefile
	echo "download:" >> Makefile
	echo -e "\twget https://github.com/trenta3/stdmdoc/raw/master/stdmdoc.cls -O stdmdoc.cls" >> Makefile
	echo "" >> Makefile
	echo "clean:" >> Makefile
	echo -e "\trm -f *.aux *.log *.out" >> Makefile
	echo "" >> Makefile
	echo "# Fine del Makefile" >> Makefile

	echo "Makefile creato"
	echo -e "Ricordati, se hai aggiunto dei files nuovi, di dare il comando\tgit add NOMEFILE"

fi

exit;



