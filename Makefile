.DELETE_ON_ERROR:
.PHONY: clean all upload
LECTURES:=intro bigo comparch practicum x86 candc io kernelspace userspace \
	compilers algorithms networking future
LECTOUT:=$(addsuffix .pdf,$(LECTURES))
IMAGES:=$(wildcard images/*) $(wildcard code/*)

all: $(addsuffix .info,$(LECTOUT)) uws.pdf

LOPS:=-halt-on-error 

uws.pdf: $(LECTOUT)
	pdftk $^ output $@

%.pdf.info: %.pdf
	makebeamerinfo $<

.PRECIOUS: $(addsuffix .pdf,$(LECTURES))

%.pdf: %.tex $(IMAGES)
	pdflatex $(LOPS) $(basename $<)
	pdflatex $(LOPS) $(basename $<)

upload: all
	scp *html *pdf qemfd.net:/var/www

clean:
	rm -f $(LECTOUT) doc_data.txt $(wildcard *.log) $(wildcard *.info) \
		$(addsuffix .toc,$(LECTURES)) $(addsuffix .log,$(LECTURES)) \
		$(addsuffix .out,$(LECTURES)) $(addsuffix .snm,$(LECTURES)) \
		$(addsuffix .log,$(LECTURES)) $(addsuffix .nav,$(LECTURES)) \
		$(addsuffix .pdf,$(LECTURES)) $(addsuffix .aux,$(LECTURES)) \
		$(addsuffix .dsc,$(LECTURES))
