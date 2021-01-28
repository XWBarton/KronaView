#!/bin/bash

echo "Kraken report (add file type):"

	read -e REPORT
	eval REPORT=$REPORT

echo "Krona file name (don't add file type):"

	read -e SAMPLE

# generate krona file

ktImportTaxonomy -o ~/KronaView/$SAMPLE.html -t 3 -s 4 $REPORT
