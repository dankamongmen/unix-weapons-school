LECTURES:=intro x86
LECTOUT:=$(addsuffix .pdf.info,$(LECTURES))
IMAGES:=$(wildcard images/*)

all: $(LECTOUT)

%.pdf.info: %.pdf
	makebeamerinfo $<

.PRECIOUS: $(addsuffix .pdf,$(LECTURES))

%.pdf: %.tex $(IMAGES)
	pdflatex $(basename $<)

clean:
	rm -f $(LECTOUT) \
		$(addsuffix .toc,$(LECTURES)) $(addsuffix .log,$(LECTURES)) \
		$(addsuffix .out,$(LECTURES)) $(addsuffix .snm,$(LECTURES)) \
		$(addsuffix .log,$(LECTURES)) $(addsuffix .nav,$(LECTURES)) \
		$(addsuffix .pdf,$(LECTURES)) $(addsuffix .aux,$(LECTURES)) 
		$(addsuffix .dsc,$(LECTURES))
