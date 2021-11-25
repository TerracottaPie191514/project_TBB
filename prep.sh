#!/bin/bash
# This script prepares newick (1) and fasta (2) files for usage of MCMCTree, while utilizing the seqs (3) of the trees.
set -ex
echo "Converting tree"
cat $1 | sed "s/NoName//g" | sed -E "s/OG[[:digit:]]{1,3}\.[[:digit:]]{1,3}//g" | sed -E "s/(U[[:digit:]]{1,3}\.[[:digit:]]{1,3})//g" | sed "s/\[&&NHX:LECA=RegExPlaceholder\]/'>19.58<23.86'/g" > x && mv x $1
echo "Subsetting Fasta file"
while read line; do
	echo ">$line" && grep -w "$line" $2 -A999 | sed -ne '1,/>/ {/>/ !{p}}'
done < $3 > out.fa
echo "Aligning sequences"
mafft --maxiterate 1000 --localpair out.fa > out1.fa
echo "Trimming sequences"
trimal -in out1.fa -out new.fa -gt 0.1
rm out1.fa out.fa
echo "Adding sequence data to appropriate places"
{ cat new.fa | grep -c "^>"; cat new.fa | grep -m1 -oP "\s\K\d+(?=\sbp)"; } | tr "\n" "\t" > seq_info.txt
cat new.fa | sed "s/\s[[:digit:]]\+\sbp//g" > x
mv x new.fa
sed -i -e '$a\' seq_info.txt
cat seq_info.txt | cat - $1 > temp && mv temp $1
cp $1 new.nw
