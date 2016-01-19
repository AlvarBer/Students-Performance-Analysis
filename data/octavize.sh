#!/bin/sh

INPUTFILE=student-mat.csv
OUTPUTFILE=student-mat-oct.csv

echo Current directory is 
pwd

sed 's|"GP"|0|g' $INPUTFILE > $OUTPUTFILE
sed -i 's|"MS"|1|g' $OUTPUTFILE
sed -i 's|"M"|0|g' $OUTPUTFILE
sed -i 's|"F"|1|g' $OUTPUTFILE
sed -i 's|"U"|0|g' $OUTPUTFILE
sed -i 's|"R"|1|g' $OUTPUTFILE
sed -i 's|"LE3"|0|g' $OUTPUTFILE
sed -i 's|"GT3"|1|g' $OUTPUTFILE
sed -i 's|"T"|0|g' $OUTPUTFILE
sed -i 's|"A"|1|g' $OUTPUTFILE
sed -i 's|"teacher"|0|g' $OUTPUTFILE
sed -i 's|"health"|1|g' $OUTPUTFILE
sed -i 's|"services"|2|g' $OUTPUTFILE
sed -i 's|"at_home"|3|g' $OUTPUTFILE
sed -i 's|"home"|0|g' $OUTPUTFILE
sed -i 's|"reputation"|1|g' $OUTPUTFILE
sed -i 's|"other"|2|g' $OUTPUTFILE
sed -i 's|"course"|3|g' $OUTPUTFILE
sed -i 's|"mother"|0|g' $OUTPUTFILE
sed -i 's|"father"|1|g' $OUTPUTFILE
sed -i 's|"other"|2|g' $OUTPUTFILE # Unnecessary
sed -i 's|"no"|0|g' $OUTPUTFILE
sed -i 's|"yes"|1|g' $OUTPUTFILE
sed -i 's|"||g' $OUTPUTFILE
sed -i '1d' $OUTPUTFILE
sed -i 's|;|,|g' $OUTPUTFILE
echo done!