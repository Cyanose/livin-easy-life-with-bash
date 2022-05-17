#!/bin/bash
NUMSITES=$(pdfinfo $1 | awk '/^Pages:/ {print $2}')
for(( i=1 ; i <= $NUMSITES ; i+=2 )); do
	lp -o media=a4 -o fit-to-page -P $i $1
	sleep 20
done
