all: build/DoktorArbeit.pdf


TeXOptions = -xelatex \
	     -interaction=nonstopmode \
	     -halt-on-error \
	     -output-directory=build
                                                                                
build/DoktorArbeit.pdf: header.tex DoktorArbeit.tex Inhalt/*.tex references.bib Plots/* | build
	texfot latexmk $(TeXOptions) DoktorArbeit.tex

build:
	mkdir -p build/

clean:
	rm -rf build
