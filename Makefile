.PHONY: all clean

all: cv_en_jean-marie_comets.pdf cv_fr_jean-marie_comets.pdf

cv_%_jean-marie_comets.pdf: cv-%.pdf
	cp $< $@

cv-%.pdf: cv-%.tex
	pdflatex $<

clean:
	rm -f *.log *.out *.aux

# vim: ft=make noet ts=4 sw=4
