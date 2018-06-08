#!/bin/bash

#Copyright: 2018 Hugh Paterson III
#Licenses: MIT as indicated in paterson-license.md

#Get all the gweta / Pamebhame files and concatenate them to a single file.
cp $( find ./*Pam*/*weta*/*weta*.pdf ) . &&  for f in *weta*.pdf; do pdftotext $f mass-text_$f.txt; done && rm *.pdf && cat mass-text*.txt >> combined-gweta-text.txt && rm mass-text_*.txt

#Get all the While waiting for a medical doctor files and concatenate them to a single file.
cp $( find ./While-waiting-for-a-medical-doctor/*moyan-*/*moyan-*.old.txt ) . && cat moyan-sanni*.old.txt >> combined-moyan-sanni_ko_dhotroo.old.txt && cat moyan-yii*.old.txt >> combined-moyan-yii_gu.old.txt && cat moyan-waa*.old.txt >> combined-moyan-waa_won.old.txt && rm moyan-*.old.txt

#Join Both sets of composits to a single composit.
cat combined-*.txt >> proof-of-concept-text.txt && rm combined-*.txt

#Commit to git so that we can track and report changes as the file is modified.
git add proof-of-concept-text.txt

git commit proof-of-concept-text.txt -m "base of corpus before character changes"

#Get a base set of numbers to work with so that we can compart changes numerically
UnicodeCCount.pl proof-of-concept-text.txt > proof-of-concept-text-count.txt

git add proof-of-concept-text-count.txt

git commit proof-of-concept-text-count.txt -m "base numbers of corpus before character changes"

txtconv -i proof-of-concept-text.txt -o proof-no-PUA.txt -t sil-pua/SILPUA.tec -if utf8 -of utf8 -u 2

rm proof-of-concept-text.txt
mv proof-no-PUA.txt proof-of-concept-text.txt

git commit proof-of-concept-text.txt -m "corpus after PUA character changes"

UnicodeCCount.pl proof-of-concept-text.txt > proof-of-concept-text-count.txt

git commit proof-of-concept-text-count.txt -m "Corpus numbers after PUA character changes"

#No-BOM
perl -i -CS -pe 's/\N{U+FEFF}//g' proof-of-concept-text.txt

git commit proof-of-concept-text.txt -m "corpus after BOM character changes"

UnicodeCCount.pl proof-of-concept-text.txt > proof-of-concept-text-count.txt

#git commit proof-of-concept-text-count.txt -m "Corpus numbers after PUA character changes"

git diff -t=kdiff3
