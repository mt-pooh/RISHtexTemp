#!/usr/bin/env perl
$latex      = 'platex -halt-on-error';
$dvipdf     = 'dvipdfmx %O -o %D %S';
$max_repeat = 5;
$pdf_mode = 3;
