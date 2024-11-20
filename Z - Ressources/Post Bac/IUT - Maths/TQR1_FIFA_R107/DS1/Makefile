TARGET=ds1

all: clean $(TARGET).tex
	cp $(TARGET).tex tmp.tex
	pdflatex tmp
	pdflatex tmp
	#bibtex tmp
	#pdflatex tmp
	#pdflatex tmp
	mv tmp.pdf $(TARGET).pdf
	acroread $(TARGET).pdf &

##	rm -rf tmp.*
##	xdvi tmp.dvi
##	dvipdfm -o article.pdf tmp.dvi

spellcheck: $(TARGET).pdf
	pdftotext $(TARGET).pdf
	aspell --lang=fr_FR -c $(TARGET).txt

clean:
	rm -f *~ tmp.*


## End Of File
