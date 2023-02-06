#!/bin/bash

input=$1/*

for i in $input; do
	echo "working on " $i
	bedtools sort -i $i > tmp.narrowPeak
	./bedToBigBed -type=bed4+6 -as=bigNarrowPeak.as tmp.narrowPeak hg38.chrom.sizes $i.bb
	rm tmp.narrowPeak
done
