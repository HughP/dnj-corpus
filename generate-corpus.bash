#!/bin/bash

#Copyright: 2018 Hugh Paterson III
#Licenses: MIT as indicated in paterson-license.md
#This script assumes GNU based utilities like join, sed, and awk.
#This script assumes UnicodeCCount.pl, textconv, perl, and git.

####################################
## Delete older copies of corpus when generating new ones ##
####################################

#By running these delete commands we are able to start clean with new files each running of the script.

rm -r Corpus-Counts
rm -r Corpustables
rm tabel-*.txt
rm corpustable*.txt
rm Table-for-Readme-File.txt
rm Remove-French.txt
rm proof-of-concept-text.txt
rm proof-of-concept-text2.txt
rm Set-of-all-words-to-filter-french-from.txt
rm proof-of-concept-text-count-*.txt
rm initial-starting-corpus.txt
git rm -f proof-of-concept-text.txt
git rm proof-of-concept-text-count*.txt
rm phonemic-corpus.txt

########################
## Gather raw files and conbine them ##
########################

#Get all the gweta / Pamebhame files and concatenate them to a single file.
cp $( find ./*Pam*/*weta*/*weta*.pdf ) . &&  for f in *weta*.pdf; do pdftotext $f mass-text_$f.txt; done && rm *.pdf && cat mass-text*.txt >> combined-gweta-text.txt && rm mass-text_*.txt

#Get all the While waiting for a medical doctor files and concatenate them to a single file.
cp $( find ./While-waiting-for-a-medical-doctor/*moyan-*/*moyan-*.old.txt ) . && cat moyan-sanni*.old.txt >> combined-moyan-sanni_ko_dhotroo.old.txt && cat moyan-yii*.old.txt >> combined-moyan-yii_gu.old.txt && cat moyan-waa*.old.txt >> combined-moyan-waa_won.old.txt && rm moyan-*.old.txt

#Join Both sets of composits to a single composit.
cat combined-*.txt >> proof-of-concept-text.txt && rm combined-*.txt

cp proof-of-concept-text.txt initial-starting-corpus.txt

##Get a base set of numbers to work with so that we can compart changes numerically
UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-1-original.txt

##############################
## Large level changes - Character Maintenance ##
##############################


#1. As far as I know txtconv does not do in place editing.
txtconv -i proof-of-concept-text.txt -o proof-no-PUA.txt -t sil-pua/SILPUA.tec -if utf8 -of utf8 -u 2

rm proof-of-concept-text.txt
mv proof-no-PUA.txt proof-of-concept-text.txt

#2. No-BOM
#Use perl to remove BOM markers
cat proof-of-concept-text.txt | perl -CS -pe 's/\N{U+FEFF}//g' > proof-of-concept-text2.txt
rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

#3. Make sure everything is NFC
cat proof-of-concept-text.txt | uconv -x -nfd > proof-of-concept-text-nfd.txt

cat proof-of-concept-text-nfd.txt | uconv -x -nfc > proof-of-concept-text-nfc.txt

rm proof-of-concept-text.txt
rm proof-of-concept-text-nfd.txt
mv proof-of-concept-text-nfc.txt proof-of-concept-text.txt

#4. No headding tags
#Via manaual count this removes 81 <h>and 79 </h> this means 160 less <,>,h and 79 less / characters in the corpus.
sed -e 's/<h[^>]*>//g' -i proof-of-concept-text.txt

sed -e 's#</h[^>]*>##g' -i proof-of-concept-text.txt

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-2-noHTML.txt

#Table 1
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 1.1,1.2,1.3,2.3,1.4 proof-of-concept-text*1*.txt proof-of-concept-text*2*.txt > corpustable.txt

## ############## #################
## Character changes - Typographical Encoding Errors##
#################################

##1. Equal sign U+003D --> U+A78A##
#Replace normal equal sign U+003D with letter equal sign U+A78A.
cat proof-of-concept-text.txt | perl -CS -pe 's/\N{U+003D}/\N{U+A78A}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-3-goodequals.txt

#Table 2
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,2.3,1.5  corpustable.txt proof-of-concept-text-count-3-goodequals.txt > corpustable3.txt

##2. Fix non-breaking space U+00A0 -->U+0020 ##
echo "Fixing non-breaking spaces..."
cat proof-of-concept-text.txt | perl -CS -pe 's/\N{U+00A0}/\N{U+0020}/g' >  proof-of-concept-text2.txt

cp proof-of-concept-text2.txt proof-of-concept-text-nbsp.txt
rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-4-nbsp.txt

#Table 3
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,2.3,1.6  corpustable3.txt proof-of-concept-text-count-4-nbsp.txt > corpustable4.txt

##3. Non-Breaking Hyphen U+001E --> U+02D7##

 #Corrected bad non-breaking hyphen.
#MS Word saved the non-breaking hyphen as x1E. This was then interpreed as \00 \1E. So was a non breaking Hypehn, but should actually be U+02D7.

cat proof-of-concept-text.txt | perl -CS -pe 's/\N{U+001E}/\N{U+02D7}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

##4. Character Order coorection ##
echo "Typing in the correct order can be a problem."
grep -n -P "\x{2C}\x{0308}" proof-of-concept-text.txt
#Lets take care of these backward Letters
sed -e 's/ʋ,̈/ʋ̈,/g' -i proof-of-concept-text.txt

grep -n -P "\x{2C}\x{0308}" proof-of-concept-text.txt |wc -l
echo "We fixed that: See they are gone!"

##5. Now lets get rid of those upsilons
sed -e 's/ϋ/ʋ̈/g' -i proof-of-concept-text.txt
echo "   Just corrected all UPSILONS to LATIN HOOKED V with DIAERESIS."

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-5-noupsilon.txt

#Table 4
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,1.6,2.3,1.7  corpustable4.txt proof-of-concept-text-count-5-noupsilon.txt > corpustable5.txt

#--Needs inserted into corpus description--
#Get rid of U+0304 COMBINING MACRON
# Combining macron is on the b in ˗b̄ha here:
# ʼmɛ ʼö ˗a ga ˗yö ʼko ˮdhiʋ̈ ˗dhɛ ˗nu ꞊wa ʼto ˗nɛɛsü, ꞊ya nëng kë ˗a ˮyi mü ˗sü ˗b̄ha, ˗yö ˗kë ˮklʋ̈ʋ̈klʋ̈.

sed -e 's/b̄h/bh/g' -i proof-of-concept-text.txt

# cat proof-of-concept-text.txt  | perl -CS -pe 's/\N{U+0304}//g' > proof-of-concept-text2.txt
#
# rm proof-of-concept-text.txt
# mv proof-of-concept-text2.txt proof-of-concept-text.txt

#Get rid of wayward U+00A8 Diaeresis and replace it with SPACE

# Diaeresis U+00A8 is on second a in waa¨ here:
# waa¨ʼwëë˗ ˮgblü ˮsɔɔdo

cat proof-of-concept-text.txt  | perl -CS -pe 's/\N{U+00A8}/ /g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

# Remove  17 instances of INTERLINEAR ANNOTATION ANCHOR
cat proof-of-concept-text.txt  | perl -CS -pe 's/\N{U+FFF9}//g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-6-annotation.txt

#Table 5
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,1.6,1.7,2.3,1.8  corpustable5.txt proof-of-concept-text-count-6-annotation.txt > corpustable6.txt

##Bad single quote like characters
##6a. Correct non-letter apostrophe U+0027 to letter apostrophe U+02BC

cat proof-of-concept-text.txt | perl -CS -pe 's/\N{U+0027}/\N{U+02BC}/g' >  proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

##6b. Corrected non-letter single quote U+2019 to letter apostrophe  U+02BC

cat proof-of-concept-text.txt | perl -CS -pe 's/\N{U+2019}/\N{U+02BC}/g' >  proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

##6c. Let's move instances of U+2018 to letter apostrophe  U+02BC
cat proof-of-concept-text.txt | perl -CS -pe 's/\N{U+2018}/\N{U+02BC}/g' >  proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-7-apostrophe.txt

#Table 6
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,1.6,1.7,1.8,2.3,1.9  corpustable6.txt proof-of-concept-text-count-7-apostrophe.txt > corpustable7.txt

##Bad double quote like characters
##7a. Let's move instances of <U+201D	”	> to <U+02EE	ˮ	>
sed -e 's/”/ˮ/g' -i proof-of-concept-text.txt

##7b. Let's move instances of <U+201C	“	> to <U+02EE	ˮ	>
sed -e 's/“/ˮ/g' -i proof-of-concept-text.txt

##7c. Let's move instances of <U+0022	"	> to <U+02EE	ˮ	>
sed -e 's/"/ˮ/g' -i proof-of-concept-text.txt

##8. Lets fix the typos of double single quotes.
#Let's move double instances of <ʼ U+02BC > to <ˮ U+02EE>
sed -e 's/ʼʼ/ˮ/g' -i proof-of-concept-text.txt

##9a. Fix the french quotes
echo "Fixing French Quote marks"
#old#sed -e 's/<</«/g' -i proof-of-concept-text.txt
#old#sed -e 's/>>/»/g' -i proof-of-concept-text.txt
sed -e 's/</‹/g' -i proof-of-concept-text.txt
sed -e 's/>/›/g' -i proof-of-concept-text.txt

##This was needed or interesting when using 9.a the old version.
#Note 2: this might have eavened out after the html tags were removed.
#echo "Funny thing is that there are still" "$(grep -n -P ">" proof-of-concept-text.txt| wc -l)" " '>' left and" "$(grep -n -P "<" proof-of-concept-text.txt| wc -l)" " '<' left."

##9b. Fix cases of double single french quotes, looking like double quotes.
sed -e 's/‹‹/«/g' -i proof-of-concept-text.txt
sed -e 's/››/»/g' -i proof-of-concept-text.txt

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-8-quotes.txt

#Table 7
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.3,1.10  corpustable7.txt proof-of-concept-text-count-8-quotes.txt > corpustable8.txt


#10a.Correct "minus" signs
# Fix the dashes U+2013 --> U+02D7
echo "LA-SHA"
grep -n -P "–" proof-of-concept-text.txt | tail -1
echo ""
echo "See DASHES are everywhere:" "$(grep -n -P "\s–\s" proof-of-concept-text.txt | wc -l)" of "$(grep -n -P "–" proof-of-concept-text.txt | wc -l)" "are ambiguous."
#Some dashes have space on both sides of them it is ambiousous as to if they are real dashes or miss typed minus signs. since in all cases they could, according to the orthography go to the right or left we are going to attach them to the right because there is no other tone marks on the words to the right. This is only 7 cases though.
echo "We are going to move them so that they associated to the right... connecting to words to the right."

sed -e 's/ – / –/g' -i proof-of-concept-text.txt

#Now there are a few cases where the hyphen-minus needs to move left to the end of the word.
grep -n -P "\s-\s" proof-of-concept-text.txt
sed -e 's/ - -/- -/g' -i proof-of-concept-text.txt
#Now the pattern changes a bit but the solution is the same
sed -e 's/ - ʼ/- ʼ/g' -i proof-of-concept-text.txt
#Then there is one final case and that will get dropped.
sed -e 's/- - ˮ/- ˮ/g' -i proof-of-concept-text.txt

sed -e 's/–/˗/g' -i proof-of-concept-text.txt
echo "   Just moved all DASHES to LETTER MINUS."

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-9-dashes.txt

#Table 8
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,1.10,2.3,1.11  corpustable8.txt proof-of-concept-text-count-9-dashes.txt > corpustable9.txt

##10b. Fix undeerscore
sed -e 's/_/˗/g' -i proof-of-concept-text.txt
echo "   Just moved all UNDERSCORES to LETTER MINUS."
# echo ""
# echo ""
# echo "In which cases are DASHES occuring with spaces on both sides?"
# grep -n -P "\s–\s" proof-of-concept-text.txt | wc -l
# grep -n -P "\s–\s" proof-of-concept-text.txt
#
# grep -n -P "\s-\s" proof-of-concept-text.txt | wc -l
# grep -n -P "\s-\s" proof-of-concept-text.txt
##
# echo "If there is something between this line and 'Yep.' then FAIL."
# grep -n -P "\s–\s" proof-of-concept-text.txt
# grep -n -P "\s–\s" proof-of-concept-text.txt | wc -l
# echo "Yep. We really did that."

#get rid of serial spaces
sed -i 's/ \+/ /g' proof-of-concept-text.txt

#A couple of commas had an inversion with spaces
sed -e 's/ ,/, /g' -i proof-of-concept-text.txt

#fixing some new lines
sed -e 's/,\n/, /g' -i proof-of-concept-text.txt


##10c. There are still some real minus signs we need to take care of.
#We can avoid minus used btween digits and target word beginings like this:
#sed -e 's/[^\d\S]-/˗/g' -i proof-of-concept-text.txt
echo "Lets look for cases puntuation or LM followed by letter minus"
grep -n -P "\s(\p{P}|\p{Lm})(˗)" proof-of-concept-text.txt
echo "Just looked for puntuation or LM followed by letter minus. This will tell us if we are missing spaces."

#Change all the hyphen-minus preceeding non-digits to minus letter.
cat proof-of-concept-text.txt | perl -CS -pe 's/-(?=[^\d])/\N{U+02D7}/g' >  proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-10-minus.txt

#Table 9
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,1.10,1.11,2.3,1.12  corpustable9.txt proof-of-concept-text-count-10-minus.txt > corpustable10.txt

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-11-nondigit.txt

#Table 10
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,1.10,1.11,1.12,2.3,1.13  corpustable10.txt proof-of-concept-text-count-11-nondigit.txt > corpustable11.txt

#Somehow there are still space minus space patterns this moves the minus signs to attach to the word on the right.
sed -e 's/\s˗\s/ ˗/g' -i proof-of-concept-text.txt

# The problems that happen as a result of this first reGex do not appear in the second RegEx indicating that they are induced problems.
#grep -n -P -- "\p{L}˗\p{L}" initial-starting-corpus.txt
#grep -n -P -- "\p{L}-\p{L}" initial-starting-corpus.txt

#It seems that sometimes people are fogetting spaces after sentence brakes or commas and one instance each of ? and !..
sed -e 's/\([.]\)\(˗\)/\1 \2/g' -i proof-of-concept-text.txt
sed -e 's/\([,]\)\(˗\)/\1 \2/g' -i proof-of-concept-text.txt
sed -e 's/\([!]\)\(˗\)/\1 \2/g' -i proof-of-concept-text.txt
sed -e 's/\([?]\)\(˗\)/\1 \2/g' -i proof-of-concept-text.txt
sed -e 's/ ?/?/g' -i proof-of-concept-text.txt

#There was a remove more spaces or punctuation here....
#fixing some new lines
sed -e 's/,\n/, /g' -i proof-of-concept-text.txt

#Hardcoded this becasuse it was faster.
#This should be: Between Uppercase make that a real hypehn-minus
sed -e 's/ANARIZ˗CI/ANARIZ-CI/g' -i proof-of-concept-text.txt

#There are several instances of letter modifier equals that needs to have a space inserted.
sed -e 's/\([^ ]\)\([꞊]\)/\1 \2/g' -i proof-of-concept-text.txt

#Choping words... seems like we need some more spaces inserted.
sed -e 's/‘wo-/‘wo- /g' -i proof-of-concept-text.txt
# I think that wo- -doe is being reduced to wo-doe

##13 Full stop de-encapselation by spaces
cat proof-of-concept-text.txt | perl -CS -pe 's/\s[.](?=\s)/\N{U+002E}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

##14 comma de-encapselation by spaces
cat proof-of-concept-text.txt | perl -CS -pe 's/\s[,](?=\s)/\N{U+002C}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

##15 semicolon de-encapselation by spaces
cat proof-of-concept-text.txt | perl -CS -pe 's/\s[;](?=\s)/\N{U+003B}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

##15 colon de-encapselation by spaces
cat proof-of-concept-text.txt | perl -CS -pe 's/\s[:](?=\s)/\N{U+003A}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

##11. Remove U+2022	•	BULLET
#There are only 13 instances. It is unlikely that this character is best accessed through a keyboard. So we will drop it from the corpus.
echo "BULLETS 〈•〉〈•〉〈•〉"
grep -P "•" proof-of-concept-text.txt | sed -r 's/(.{8}).*/\1/g'
sed -e 's/•//g' -i proof-of-concept-text.txt
echo "NO MORE BULLETS 〈•〉〈•〉〈•〉"
#12. Fix wrong comma (low quote mark)

echo "LOW QUOTE MARKS"
grep -P "‚" proof-of-concept-text.txt
echo "None none of the" "$(grep -P "‚" proof-of-concept-text.txt | wc -l )" " cases seem to be actual quote useages."
echo ""
echo "END OF LOW QUOTE MARKS"
echo ""
cat proof-of-concept-text.txt  | perl -CS -pe 's/\N{U+201A}/\N{U+002C}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-12-lowquote.txt

#Table 11
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,1.10,1.11,1.12,1.13,2.3,1.14  corpustable11.txt proof-of-concept-text-count-12-lowquote.txt > corpustable12.txt

#Hardcoded this becasuse it was faster.
sed -e 's/gun. ˗ /gun˗. /g' -i proof-of-concept-text.txt
sed -e 's/˗ ˗ ꞊/˗ ꞊/g' -i proof-of-concept-text.txt
sed -e 's/sü ˗ ꞊/sü˗ ꞊/g' -i proof-of-concept-text.txt


UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-13-double-space.txt

#Table 12
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,1.10,1.11,1.12,1.13,1.14,2.3,1.15  corpustable12.txt proof-of-concept-text-count-13-double-space.txt > corpustable13.txt

# This breaks apart "words" I don't know if it is really breaking apart real words or not but it is breaking them.
cat proof-of-concept-text.txt | perl -Mutf8 -C -pe 's/(\w)(˗\w)/$1 $2/ug' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

sed -e 's/˗a˗/˗a ˗/g' -i proof-of-concept-text.txt

grep -P -- "\p{L}\p{Lm}\p{L}" proof-of-concept-text.txt | tr " " "\n" | tr "[:upper:]" "[:lower:]" | sort | uniq -c | grep -P "\p{L}\p{Lm}\p{L}"

sed -e 's/( /(/g' -i proof-of-concept-text.txt

echo "Number of instances of conjoined words needing seperated"
grep -P -- "[\p{L}|\p{Lm}]˗\p{L}" proof-of-concept-text.txt | tr " " "\n" | tr "[:upper:]" "[:lower:]" | sort | uniq -c | grep -P "\p{L}˗\p{L}" | wc -l

cat proof-of-concept-text.txt | perl -Mutf8 -C -pe  "s/(\w)(\p{Lm}\w)/\1 \2/ug" > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt


#awk -F $'\t' '{OFS = FS} {gsub("NULL","",$12)}1' corpustable9.txt > outtable.txt

#Let's disentagle some of the French-Dan words
sed -e 's/scorpion/ scorpion/g' -i proof-of-concept-text.txt scorpion
sed -e 's/ʼyënngsavon/ʼyënng savon/g' -i proof-of-concept-text.txt
sed -e 's/ʼyënngmoyen/ʼyënng moyen/g' -i proof-of-concept-text.txt
sed -e 's/ʼdaɔnaraignée/ʼdaɔn araignée/g' -i proof-of-concept-text.txt
sed -e 's/kaatie/kaa tie/g' -i proof-of-concept-text.txt
sed -e 's/saabas/saa bas/g' -i proof-of-concept-text.txt
sed -e 's/saasavon/saa savon/g' -i proof-of-concept-text.txt
sed -e 's/klanghaut/klang haut/g' -i proof-of-concept-text.txt
UnicodeCCount.pl -n proof-of-concept-text.txt > proof-of-concept-text-count-14-fixfrench.txt

#Fix French: Visual inspection has shown that French words with apostrophes often have unnecessary spaces after them. This is a manual hack to fix that.

sed -e "s/L ʼ/Lʼ/g" -i proof-of-concept-text.txt
sed -e "s/l ʼ/lʼ/g" -i proof-of-concept-text.txt
sed -e "s/lʼ /lʼ/g" -i proof-of-concept-text.txt
sed -e "s/n ʼexistent/nʼexistent/g" -i proof-of-concept-text.txt
sed -e "s/quʼ en/quʼen/g" -i proof-of-concept-text.txt
sed -e "s/Lʼ /Lʼ/g" -i proof-of-concept-text.txt
sed -e "s/dʼ un /dʼun/g" -i proof-of-concept-text.txt
sed -e "s/Dʼ /Dʼ/g" -i proof-of-concept-text.txt
sed -e "s/d ʼun /dʼun/g" -i proof-of-concept-text.txt
sed -e "s/dʼunmot/dʼun mot/g" -i proof-of-concept-text.txt
echo "any dunmot?"
grep -P "dʼunmot" proof-of-concept-text.txt
echo "any dunmot?"


#The toal here is to capture the french section, then filter out all the Dan words. This is done with four awk scripts. 1) tartgeting dan orthography clusters whch don't occur in French, then 2) targeting country names. 3) Then targeting specific dan words. 4) then targeting single letter character.

echo "These are the French words in the corpus which are being removed."
awk '/Lʼorthographe/{flag=1} /ˮNimlʋʋ/{flag=0} flag' proof-of-concept-text.txt | tr "[:punct:]|[:digit:]" " " | tr " " "\n" | sort -u > Set-of-all-words-to-filter-french-from.txt
awk '/Lʼorthographe/{flag=1} /ˮNimlʋʋ/{flag=0} flag' proof-of-concept-text.txt | tr "[:punct:]|[:digit:]" " " | tr " " "\n" | sort -u | grep -v "[˗꞊ˮöɛɔüʋɩë]" | awk '!/bh/ && !/aa/ && !/Aa/ && !/kw/ && !/dh/ && !/gw/ && !/Dh/ && !/uu/ && !/gb/ && !/iin/ && !/ee/ && !/oo/ && !/An/' | awk '!/Bukina/ && !/Faso/ && !/Gana/ && !/Togo/' | awk '!/do/ && !/^de/ && !/^in$/ && !/^ng$/ && !/^un$/ && !/^nu$/ && !/^so$/ && !/^to$/ && !/^ga$/ && !/^ta$/ && !/^tie$/ && !/ONU/ && !/ONI/ && !/bun/ && !/kun/ && !/gun/ && !/^pa$/' | grep -v "^[ʼzwy]" | awk 'length>1' | tee >(wc -l)

awk '/Lʼorthographe/{flag=1} /ˮNimlʋʋ/{flag=0} flag' proof-of-concept-text.txt | tr "[:punct:]|[:digit:]" " " | tr " " "\n" | sort -u | grep -v "[˗꞊ˮöɛɔüʋɩë]" | awk '!/bh/ && !/aa/ && !/Aa/ && !/kw/ && !/dh/ && !/gw/ && !/Dh/ && !/uu/ && !/gb/ && !/iin/ && !/ee/ && !/oo/ && !/An/' | awk '!/Bukina/ && !/Faso/ && !/Gana/ && !/Togo/' | awk '!/do/ && !/^de/ && !/^in$/ && !/^ng$/ && !/^un$/ && !/^nu$/ && !/^so$/ && !/^to$/ && !/^ga$/ && !/^ta$/ && !/^tie$/ && !/ONU/ && !/ONI/ && !/bun/ && !/kun/ && !/gun/ && !/^pa$/' | grep -v "^[ʼzwy]" | awk 'length>1' > Remove-French.txt

#These should take care of the final French characters which show up.
echo "Benoît" >>Remove-French.txt
echo "Août" >>Remove-French.txt
echo "benoît" >>Remove-French.txt
echo "Duekoué" >>Remove-French.txt
echo "Bakué" >>Remove-French.txt

cat proof-of-concept-text.txt | perl -CS -pe 's/(\p{P}\s?.*)\N{U+000A}(.*)/\1 \2/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

#Also French has real apostrophes not letter apostrophes. But fixing these now creates some problems with the awk script and escaping the apostrophes.

sed -e "s/nʼexistent/n'existent/g" -i proof-of-concept-text.txt
sed -e "s/quʼen/qu'en/g" -i proof-of-concept-text.txt
sed -e "s/lʼ/l'/g" -i proof-of-concept-text.txt
sed -e "s/Lʼ/L'/g" -i proof-of-concept-text.txt
sed -e "s/dʼ un/d'un/g" -i proof-of-concept-text.txt
sed -e "s/Dʼ/D'/g" -i proof-of-concept-text.txt

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-15-pre-french.txt

#Table 13
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,1.10,1.11,1.12,1.13,1.14,1.15,2.3,1.16  corpustable13.txt proof-of-concept-text-count-15-pre-french.txt > corpustable14.txt

sed -e "s/nʼexistent/n'existent/g" -i Remove-French.txt
sed -e "s/quʼen/qu'en/g" -i Remove-French.txt
sed -e "s/lʼ/l'/g" -i Remove-French.txt
sed -e "s/Lʼ/L'/g" -i Remove-French.txt
sed -e "s/dʼun /d'un/g" -i Remove-French.txt
sed -e "s/Dʼ/D'/g" -i Remove-French.txt
sed -e "s/dʼun /d'un/g" -i Remove-French.txt

##Practice on French
#sed -n '/Voici/,/Traduction/{p; /Voici/q}' -i proof-of-concept-text.txt
#For some reasons this didn't work so well for me.
#sed -e '/Voici/,/Traduction/d' -i proof-of-concept-text.txt
#sed -e 's/Lʼorthographe DAN//g' -i proof-of-concept-text.txt

# Lʼorthographe DAN
# Voici ce que nous pouvons utiliser pour
# savoir lire et écrire en langue dan.
# Les consonnes et les voyelles que vous ne
# voyez pas ici sont les mêmes quʼen français.
# Attention:
# 1. c, h, j, qu et x nʼexistent pas en dan.
# 2. r ne se trouve jamais au début dʼun mot.
# Voici le reste de lʼalphabet :
# Lettres Exemple
# Traduction

#sed -e '/Voici/,/Traduction/d' -i proof-of-concept-text.txt
#Unfortuantly there is one place in the corpus that the above sed command grabs more than is necessary, so it is commented out. The impact is that there are a few characters left in. Mostly j,c,x,h and punctuation.

#Cycle through the Remove French Code and then remove those words from the corpus.
for i in $(cat Remove-French.txt); do
  sed -r -e "s/\b$i\b/ /g" -i proof-of-concept-text.txt;
done

sed -e "s/'   .  : 1. c, h, j,     x        . 2. r                .//g" -i proof-of-concept-text.txt
sed -e "s/L'orthographe DAN//g" -i proof-of-concept-text.txt
#sed 's/ \( *\)/\1/g' -i proof-of-concept-text.txt
#The above line takes out too many spaces.

#The following change happens becasue it appears to be a miss spelling of së.
sed -e 's/ê/ë/g' -i proof-of-concept-text.txt
sed -e 's/꞊misié/꞊misië/g' -i proof-of-concept-text.txt

UnicodeCCount.pl -n proof-of-concept-text.txt | tail -n+2 > proof-of-concept-text-count-16-post-french.txt

#Table 14
join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,1.10,1.11,1.12,1.13,1.14,1.15,1.16,2.3,1.17 corpustable14.txt proof-of-concept-text-count-16-post-french.txt > corpustable15.txt

#Remove spaces from around the closing punctuation.
cat proof-of-concept-text.txt | perl -CS -pe 's/(\s)(\p{Pe})/\2/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

#Remove new lines from lines which do not also end with punctuation.
cat proof-of-concept-text.txt  | perl -CS -pe 's/([^\p{P}])(\N{U+000A})/\1 /g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

#Let's move those tab-newlines into just new lines.
cat proof-of-concept-text.txt  | perl -CS -pe 's/\N{U+0009}\N{U+000A}/\n/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt
sed '/^\s*$/d' -i proof-of-concept-text.txt
sed -i '/^$/d' proof-of-concept-text.txt

head -50 proof-of-concept-text.txt


#line without punctation at the end needs to delete the new line marker.
#cat proof-of-concept-text.txt  | perl -CS -pe 's/[^\p{P}]\N{U+000A}/ /g' > proof-of-concept-text2.txt

#15 fix mixed line feeds
#15.a Move enter/return to line feed.
cat proof-of-concept-text.txt  | perl -CS -pe 's/\N{U+000D}/\N{U+000A}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

#15.b Move form feed to line feed.

cat proof-of-concept-text.txt  | perl -CS -pe 's/\N{U+000C}/\N{U+000A}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

#Take care of three cases...
sed -e 's/˗˗/˗ ˗/g' -i proof-of-concept-text.txt
#cat proof-of-concept-text.txt  | perl -CS -pe 's/(\R)(?:\h*\R)+/$1$1/g' > proof-of-concept-text2.txt

#Take care of some some combining Diaeresis which are at the beinging of words, and should likely be tone marks, but we are just going to delete them. It is hihgly probable that they used to be at the begining of new lines.
cat proof-of-concept-text.txt  | perl -CS -pe 's/\N{U+0020}\N{U+0308}/\N{U+0020}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

cat proof-of-concept-text.txt  | perl -CS -pe 's/\N{U+00F6}\N{U+0308}/\N{U+00F6}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

UnicodeCCount.pl -n proof-of-concept-text.txt > proof-of-concept-text-count-17-end-of-text.txt

join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,2.3,1.4 proof-of-concept-text-count-1-original.txt proof-of-concept-text-count-15-pre-french.txt > tabel-1.txt

join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,2.3,1.5 tabel-1.txt proof-of-concept-text-count-16-post-french.txt > tabel-2.txt

join -a 1 -a 2 -e 'NULL' -1 1 -2 1 -t $'\t' -o 0,1.2,1.3,1.4,1.5,2.3,1.6 tabel-2.txt proof-of-concept-text-count-17-end-of-text.txt > Table-for-Readme-File.txt

mkdir Corpustables
touch corpustables.md

echo "# Corpus Tables

These counts are periodically generated throughout the script to track which characters have been modified along the way. The counts also serve as a before and after metric to show what in the corpus was changed." >> corpustables.md

mv corpustable*.* Corpustables
cp proof-of-concept-text.txt final-corpus.txt
mkdir Corpus-Counts
mv proof-of-concept-text-count*.* Corpus-Counts

git add final-corpus.txt
git commit final-corpus.txt

echo
echo "Try the corpus now"
echo
./generate-phonemic-corpus.bash
