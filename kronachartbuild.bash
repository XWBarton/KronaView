#!/bin/bash

echo "Kraken output [NOT REPORT] (add file type):"

	read -e OUTPUT
	eval OUTPUT=$OUTPUT

echo "Krona file name (don't add file type):"

	read -e SAMPLE

# generate krona file

#ktImportTaxonomy -o ~/KronaView/$SAMPLE.html -t 5 -s 1 $REPORT

ktImportTaxomoy -q 2 -t 3 $OUTPUT -o ~/KronaView/$SAMPLE.html
