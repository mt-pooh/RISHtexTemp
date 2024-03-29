#!/usr/bin/env perl

# Change "。" and "、" to ". " and ", "
$latex = "find . -type f -name '*.tex' | xargs sed -i '' -e 's/、/，/g' -e 's/。/．/g'; platex -synctex=1 -halt-on-error %O %S";
$out_dir          = '.tmp';
$bibtex           = 'pbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'pmendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode     = 3; # generates pdf via dvipdfmx

# Prevent latexmk from removing PDF after typeset.
# This enables Skim to chase the update in PDF automatically.
$pvc_view_file_via_temporary = 0;

# Use Skim as a previewer
# $pdf_previewer    = "evince";
$pdf_previewer    = "ls";       # beacause we use latexmk in a docker container

