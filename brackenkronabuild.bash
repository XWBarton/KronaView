#!/bin/bash

echo "Bracken report (add file type):"

	read -e OUTPUT
	eval OUTPUT=$OUTPUT

echo "Krona file name (don't add file type):"

	read -e SAMPLE

# generate krona file

#ktImportTaxonomy -o ~/KronaView/$SAMPLE.html -t 5 -s 1 $REPORT

#ktImportTaxomoy -q 2 -t 3 $OUTPUT -o ~/KronaView/$SAMPLE.html

ktImportTaxonomy -m 2 -t 5 $OUTPUT -o ~/KronaView/$SAMPLE.html

#00.00  390894  0       R       1       root
#99.89   390481  0       R1      131567    cellular organisms
#87.60   342410  0       D       2759        Eukaryota
#86.88   339603  0       D1      33154         Opisthokonta
#86.88   339603  0       K       33208           Metazoa
#   taxonomy    Tab-delimited file with taxonomy IDs and (optionally) query IDs, magnitudes and scores. By default, query IDs, taxonomy IDs and scores will be taken from columns 1, 2 and 3, respectively (see
 #              -q, -t, -s, and -m). Lines beginning with # will be ignored. By default, separate datasets will be created for each input (see [-c]).

  # magnitudes  Optional file listing query IDs with magnitudes, separated by tabs. This can be used to account for read length or contig depth to obtain a more accurate representation of abundance. By
   #            default, query sequences without specified magnitudes will be assigned a magnitude of 1. Magnitude files for assemblies in ACE format can be created with ktGetContigMagnitudes.

   #name        A name to show in the list of datasets in the Krona chart (if multiple input files are present and [-c] is not specified). By default, the basename of the file will be used.
#                                                                                                                                                                                                    _________
#__

#   [-o <string>]    Output file name. [Default: 'taxonomy.krona.html']
#
 #  [-n <string>]    Name of the highest level. [Default: 'Root']
#
 #  [-i]             Include a wedge for queries with no hits.

  # [-c]             Combine data from each file, rather than creating separate datasets within the chart.

   #[-q <integer>]   Column of input files to use as query ID. Required if magnitude files are specified. [Default: '1']

   #[-t <integer>]   Column of input files to use as taxonomy ID. [Default: '2']

   #[-s <integer>]   Column of input files to use as score. [Default: '3']

   #[-m <integer>]   Column of input files to use as magnitude. If magnitude files are specified, their magnitudes will override those in this column.

   #[-d <integer>]   Maximum depth of wedges to include in the chart.

   #[-k]             Show the "cellular organisms" taxon (collapsed by default).

   #[-K]             Collapse assignments to taxa with ranks labeled "no rank" by moving up to parent.

   #[-x <integer>]   Hue (0-360) for "bad" scores. [Default: '0']

   #[-y <integer>]   Hue (0-360) for "good" scores. [Default: '120']

   #[-u <string>]    URL of Krona resources to use instead of bundling them with the chart (e.g. "http://krona.sourceforge.net"). Reduces size of charts and allows updates, though charts will not work without
                    access to this URL.

   #[-qp <string>]   Url to send query IDs to (instead of listing them) for each wedge. The query IDs will be sent as a comma separated list in the POST variable "queries", with the current dataset index
    #                (from 0) in the POST variable "dataset". The url can include additional variables encoded via GET.

   #[-tax <string>]  Path to directory containing a taxonomy database to use. [Default: '/home/xbarton/miniconda3/opt/krona/taxonomy']

