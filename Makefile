all: rapport.pdf slides.pdf

# ce qui suit peut être modifié si vous n'utiisez pas latexmk
rapport.pdf: rapport.tex
	latexmk -pdf $<

slides.pdf: slides.tex
	latexmk -pdf $<

clean:
	latexmk -pdf -C slides
	latexmk -pdf -C rapport

.PHONY: clean
