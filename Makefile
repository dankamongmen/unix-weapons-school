LECTURES:=intro prelude
LECTOUT:=$(addsuffix .pdf,$(LECTURES))

all: $(LECTOUT)

%.pdf: %.tex
	pdflatex $(basename $<)

clean:
	rm -f $(LECTOUT) $(addsuffix .aux,$(LECTURES)) \
		$(addsuffix .toc,$(LECTURES)) $(addsuffix .log,$(LECTURES)) \
		$(addsuffix .out,$(LECTURES)) $(addsuffix .snm,$(LECTURES)) \
		$(addsuffix .log,$(LECTURES)) $(addsuffix .nav,$(LECTURES))

