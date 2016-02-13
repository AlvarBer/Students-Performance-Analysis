#!/bin/sh

for file in $(find -name *.png -type f)
do
	convert $file -resize x500 $file
done
