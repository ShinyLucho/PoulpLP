TARGET=td_wordpress

all: clean
	cp $(TARGET).tex tmp.tex
	pdflatex tmp
	pdflatex tmp
	mv tmp.pdf $(TARGET).pdf
#	cp $(TARGET).pdf TD_TICFA3_`date +"%d%m%y"`.pdf
	acroread $(TARGET).pdf &
	rm -rf tmp.*
##	xdvi tmp.dvi
##	dvipdfm -o article.pdf tmp.dvi

edit:
	kile *.tex *.bib &

spellcheck: $(TARGET).pdf
	pdftotext $(TARGET).pdf
	aspell --lang=en_US -c $(TARGET).txt

zip:
	zip latex_FINAL_VERSION_`date +"%d%m%y"`.zip ./Makefile ./*.tex ./*.bib ./*.bst ./*.sty ./figs/*

clean:
	rm -f *~ tmp.*


## End Of File
