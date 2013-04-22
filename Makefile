LECTURES:=intro prelude
LECTOUT:=$(addsuffix .pdf,$(LECTURES))
IMAGES:=$(wildcard images/*)

all: $(LECTOUT)

%.pdf: %.tex $(IMAGES)
	pdflatex $(basename $<)

clean:
	rm -f $(LECTOUT) $(addsuffix .aux,$(LECTURES)) \
		$(addsuffix .toc,$(LECTURES)) $(addsuffix .log,$(LECTURES)) \
		$(addsuffix .out,$(LECTURES)) $(addsuffix .snm,$(LECTURES)) \
		$(addsuffix .log,$(LECTURES)) $(addsuffix .nav,$(LECTURES))
