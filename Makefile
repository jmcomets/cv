.PHONY: all clean mrproper

all: cv-en.pdf cv-fr.pdf

%.pdf: %.tex
	@pdflatex $<

clean:
	@rm -f *.log *.out *.aux

mrproper:
	@rm -f *.pdf

# vim: ft=make noet ts=4 sw=4
