INPUT=menge-repetitorium.xml
OUTPUT_DIR=output
OUTPUT_FILE=menge-digital

html:
	mkdir -p $(OUTPUT_DIR)/html
	xsltproc \
		--output $(OUTPUT_DIR)/html/$(OUTPUT_FILE).html \
		--xinclude \
		stylesheet-html.xsl \
		$(INPUT)
pdf:
	mkdir -p $(OUTPUT_DIR)/pdf
	xsltproc \
		--output $(OUTPUT_DIR)/pdf/$(OUTPUT_FILE).fo \
		--xinclude \
		stylesheet-fo.xsl \
		$(INPUT)
	fop -c fop.conf $(OUTPUT_DIR)/pdf/$(OUTPUT_FILE).fo $(OUTPUT_DIR)/pdf/$(OUTPUT_FILE).pdf

dblatex:
	mkdir -p $(OUTPUT_DIR)/latex
	dblatex \
		-o $(OUTPUT_DIR)/latex/$(OUTPUT_FILE).pdf \
		-p stylesheet-dblatex.xsl \
		-b xetex \
		$(INPUT)

clean:
	rm \
		-R \
		$(OUTPUT_DIR)/
