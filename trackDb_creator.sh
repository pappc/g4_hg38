#!/bin/bash
wd=/bigBedFiles
output=/home/csaba/shared/OneDrive\ -\ SUNY\ Upstate\ Medical\ University/Projects/UCSC/hg38/bigBedFiles/trackDb1.txt
for i in $wd/*.bb; do
	echo "Working on " $i
	track=`ls $i | cut -d"." -f1 | cut -d"/" -f8`
	url=`ls $i | cut -d"/" -f8`
	shortLabel=`ls $i | cut -d"." -f1 | cut -d"_" -f1,2,3,4 | cut -d"/" -f8`
	longLabel=`ls $i | cut -d"." -f1 | cut -d"/" -f8`
	echo -e "track" $track '\n'"bigDataUrl" $url '\n'"shortLabel" $shortLabel '\n'"longLabel" $longLabel '\n'"type bigBed 6" '\n'"colorByStrand 255,0,0 0,0,255" '\n' >> $output
	echo "Done"
done
