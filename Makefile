.PHONY: all
all: notes.pdf slides.pdf

SRC+=		preamble.tex ecis-surveillance.bib
SRC+=		abstract.tex contents.tex

DEPENDS+= 	bibsp.sty anon.bib ac.bib ppes.bib meta.bib

notes.pdf: notes.tex
notes.pdf: ${SRC} ${DEPENDS}

slides.pdf: slides.tex
slides.pdf: ${SRC} ${DEPENDS}


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf


INCLUDE_MAKEFILES=./makefiles
include ${INCLUDE_MAKEFILES}/tex.mk

INCLUDE_BIBSP=./bibsp
include ${INCLUDE_BIBSP}/bibsp.mk
