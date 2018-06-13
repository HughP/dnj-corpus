#!/bin/bash

#Copyright: 2018 Hugh Paterson III
#Licenses: MIT as indicated in paterson-license.md

####################################
## Delete older copies of corpus when generating new ones ##
####################################

rm proof-of-concept-text.txt
rm initial-starting-corpus.txt
git rm -f proof-of-concept-text.txt
git rm proof-of-concept-text-count.txt

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
# #Commit to git so that we can track and report changes as the file is modified.
# git add proof-of-concept-text.txt
#
# git commit proof-of-concept-text.txt -m "base of corpus before character changes"

##Get a base set of numbers to work with so that we can compart changes numerically
# UnicodeCCount.pl proof-of-concept-text.txt > proof-of-concept-text-count.txt
#
# git add proof-of-concept-text-count.txt
#
# git commit proof-of-concept-text-count.txt -m "base numbers of corpus before character changes"


##############################
## Large level changes - Character Maintenance ##
##############################


#1. As far as I know txtconv does not do in place editing.
txtconv -i proof-of-concept-text.txt -o proof-no-PUA.txt -t sil-pua/SILPUA.tec -if utf8 -of utf8 -u 2

rm proof-of-concept-text.txt
mv proof-no-PUA.txt proof-of-concept-text.txt

# git commit proof-of-concept-text.txt -m "Corpus after PUA character changes"
#
# UnicodeCCount.pl proof-of-concept-text.txt > proof-of-concept-text-count.txt
#
# git commit proof-of-concept-text-count.txt -m "Corpus Numbers after PUA character changes"

#2. No-BOM

cat proof-of-concept-text.txt | perl -CS -pe 's/\N{U+FEFF}//g' > proof-of-concept-text2.txt
rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt
#sed -i 's//"/1' file
# git commit proof-of-concept-text.txt -m "Corpus after BOM character changes"
#
# UnicodeCCount.pl proof-of-concept-text.txt > proof-of-concept-text-count.txt
#
# git commit proof-of-concept-text-count.txt -m "Corpus Numbers after BOM character changes"

#3. No headding tags
sed -e 's/<[^>]*>//g' -i proof-of-concept-text.txt

# git commit proof-of-concept-text.txt -m "Corpus after removing heading tags character changes"
#
# UnicodeCCount.pl proof-of-concept-text.txt > proof-of-concept-text-count.txt
#
# git commit proof-of-concept-text-count.txt -m "Corpus Numbers after removing heading tags"
#
# #No French
# #perl -i -CS -pe 's/\N{U+FEFF}//g' proof-of-concept-text.txt

## ############## #################
## Character changes - Typographical Encoding Errors##
#################################

##1. Equal sign U+003D --> U+A78A##
#Replace normal equal sign U+003D with letter equal sign U+A78A.
cat proof-of-concept-text.txt | perl -CS -pe 's/\N{U+003D}/\N{U+A78A}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt
#
#  git commit proof-of-concept-text.txt -m "Corpus after correcting equals sign characters changes"
#
#  UnicodeCCount.pl proof-of-concept-text.txt > proof-of-concept-text-count.txt
# #
#  git commit proof-of-concept-text-count.txt -m "Corpus Numbers after correcting equals sign characters changes"
# #

##2. Fix non-breaking space U+00A0 -->U+0020 ##
echo "Fixing non-breaking spaces..."
cat proof-of-concept-text.txt | perl -CS -pe 's/\N{U+00A0}/\N{U+0020}/g' >  proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

#  git commit proof-of-concept-text.txt -m "Corpus after correcting non breaking space"

#  UnicodeCCount.pl proof-of-concept-text.txt > proof-of-concept-text-count.txt

#  git commit proof-of-concept-text-count.txt -m "Corpus Numbers after moving non-breaking space"

##3. Non-Breaking Hyphen U+001E --> U+02D7##

 #Corrected bad non-breaking hyphen.
#MS Word saved the non-breaking hyphen as x1E. This was then interpreed as \00 \1E. So was a non breaking Hypehn, but should actually be U+02D7.

cat proof-of-concept-text.txt | perl -CS -pe 's/\N{U+001E}/\N{U+02D7}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

# git commit proof-of-concept-text.txt -m "Corpus after correcting bad non-breaking hyphen"

# UnicodeCCount.pl proof-of-concept-text.txt > proof-of-concept-text-count.txt

# git commit proof-of-concept-text-count.txt -m "Corpus Numbers after correcting bad non-breaking hyphen"

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

##10.d This blelongs with minus, but if we change all the quotes to letter quotes the \p{L} does not work any more...
cat proof-of-concept-text.txt | perl -CS -pe 's/\s-\s(?=\p{L})/\s-/g' >  proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

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
sed -e 's/<</«/g' -i proof-of-concept-text.txt
sed -e 's/>>/»/g' -i proof-of-concept-text.txt

##9b. Fix cases of double single french quotes, looking like double quotes.
sed -e 's/‹‹/«/g' -i proof-of-concept-text.txt
sed -e 's/››/»/g' -i proof-of-concept-text.txt

##10a.Correct "minus" signs
## Fix the dashes U+2013 --> U+02D7
echo "LA-SHA"
grep -n -P "–" proof-of-concept-text.txt | tail -1
echo ""
echo "See DASHES are everywhere:" "$(grep -n -P "\s–\s" proof-of-concept-text.txt| wc -l)" of "$(grep -n -P "–" proof-of-concept-text.txt| wc -l)" "are ambiguous."
echo ""
echo ""
echo "In which cases are DASHES occuring with spaces on both sides?"
grep -n -P "\s–\s" proof-of-concept-text.txt | wc -l
grep -n -P "\s–\s" proof-of-concept-text.txt

echo ""
echo "We are going to move them so that they associated to the right... connecting to words to the right."

sed -e 's/ – /\ –/g' -i proof-of-concept-text.txt

echo "If there is something between this line and 'Yep.' then FAIL."
grep -n -P "\s–\s" proof-of-concept-text.txt
grep -n -P "\s–\s" proof-of-concept-text.txt | wc -l
echo "Yep. We really did that."

sed -e 's/–/˗/g' -i proof-of-concept-text.txt
echo "   Just moved all DASHES to LETTER MINUS."

##10b. Fix undeerscore
sed -e 's/_/˗/g' -i proof-of-concept-text.txt
echo "   Just moved all UNDERSCORES to LETTER MINUS."

##10c. There are still some real minus signs we need to take care of.
#We can avoid minus used btween digits and target word beginings like this:
#sed -e 's/[^\d\S]-/˗/g' -i proof-of-concept-text.txt
echo "Lets look for cases puntuation or LM followed by letter minus"
grep -n -P "\s(\p{P}|\p{Lm})(˗)" proof-of-concept-text.txt
echo "Just looked for puntuation or LM followed by letter minus"
#sed -e 's/\s-\s/\s˗/g' -i proof-of-concept-text.txt

##
cat proof-of-concept-text.txt | perl -CS -pe 's/\s-(?=\s)/\N{U+002D}/g' >  proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

#This fixes two instances of comma space minus space  Maybe -- needs tested again.
#sed -e 's/,\s-[^\S]/-,/g' -i proof-of-concept-text.txt
#grep -n -P -- "(\p{L})-(?=\p{L})" proof-of-concept-text.txt


##13 Full stop de-encapselation by spaces
cat proof-of-concept-text.txt | perl -CS -pe 's/\s[.](?=\s)/\s\N{U+002E}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

##14 comma de-encapselation by spaces
cat proof-of-concept-text.txt | perl -CS -pe 's/\s[.](?=\s)/\s\N{U+002E}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt

#One comma had an inversion with spaces
sed -e 's/,/, /g' -i proof-of-concept-text.txt

##15 redusin double spaces to single spaces too agressive
# cat proof-of-concept-text.txt | perl -CS -pe 's/\s{1,}/\s/g' > proof-of-concept-text2.txt
#
# rm proof-of-concept-text.txt
# mv proof-of-concept-text2.txt proof-of-concept-text.txt

exit 1
# I might need some look ahead or look behind help https://www.perlmonks.org/?node_id=518444 here is where I can use javascript help https://regexper.com/documentation.html perl regexhelps http://support.sas.com/documentation/cdl/en/lrdict/64316/HTML/default/viewer.htm#a003288497.htm regex perl case conversion: https://www.regular-expressions.info/replacecase.html

#sed delete 5 lines following a pattern (I was looking for lines between two terms and 5 lines before) https://stackoverflow.com/questions/4396974/sed-or-awk-delete-n-lines-following-a-pattern

#remove lines with french words: https://askubuntu.com/questions/354993/how-to-remove-lines-from-the-text-file-containing-specific-words-through-termina

# use sed to replace multiline string: https://unix.stackexchange.com/questions/26284/how-can-i-use-sed-to-replace-a-multi-line-string
#sed multi-line delete https://stackoverflow.com/questions/37680636/sed-multiline-delete-with-pattern

# perl regular expressions https://www.tutorialspoint.com/perl/perl_regular_expressions.htm

# print only lines which match regular expression (emulates "grep") (use this to create french content) https://gist.github.com/un33k/1162378
#sed -n '/regexp/p'           # method 1
#sed '/regexp/!d' # method 2

#find https://alvinalexander.com/unix/edu/examples/find.shtml

grep -n -P "\s-[^-]\s" proof-of-concept-text.txt
grep -n -P "\s-\s" proof-of-concept-text.txt

##11. Remove U+2022	•	BULLET
#There are only 13 instances. It is unlikely that this character is best accessed through a keyboard. So we will drop it from the corpus.

sed -e 's/•//g' -i proof-of-concept-text.txt

#12. Fix wrong comma

cat proof-of-concept-text.txt  |
perl -CS -pe 's/\N{U+201A}/\N{U+002C}/g' > proof-of-concept-text2.txt

rm proof-of-concept-text.txt
mv proof-of-concept-text2.txt proof-of-concept-text.txt


##Generate French text
# For the first 9 times copy from Lʼorthographe|Voici DAN to ˮNimlʋʋ but don't include ˮNimlʋʋ. dump that in file clean the file with this:

#grep -P "^\S+" french-content-sections.txt |tr "ˮ" " ˮ"| tr " " "\n" | sort | grep  -P "^[^-|ʼ|꞊|w|y|:|)|+|(|ɔ|K|k|ü|ϋ]"| grep -v "[öɛɔüë21ʋɩ]"| uniq > bad-french.txt
#note that this has an upsilon in it and that should go away. we can add all the unique characters from Dan orthgrphy to thie excluding lines. There is still one or two cases of something french without a space in front of it.
# "klangʼyënngsavon
# ꞊gööscorpion


##Practice on French
sed -e '/Voici/,/Traduction/d' -i proof-of-concept-text.txt
sed -e 's/Lʼorthographe DAN//g' -i proof-of-concept-text.txt


#araignée
#
# git commit proof-of-concept-text.txt -m "Corpus after correcting bad comma"
#
# UnicodeCCount.pl proof-of-concept-text.txt > proof-of-concept-text-count.txt
#
# git commit proof-of-concept-text-count.txt -m "Corpus Numbers after correcting bad comma"
#

# #Now is a great time to get rid of all those extra spaces.
#
# cat proof-of-concept-text.txt | perl -CS -pe 's/\s\s/\s/g' >  proof-of-concept-text2.txt
# echo "space zap"
# rm proof-of-concept-text.txt
# mv proof-of-concept-text2.txt proof-of-concept-text.txt




# # #git diff -t=kdiff3
#
# Lʼorthographe DAN
# Voici ce que nous pouvons utiliser pour
# savoir lire et écrire en langue dan.
# Les consonnes et les voyelles que vous ne
# voyez pas ici sont les mêmes quʼ en français.
# Attention:
# 1. c, h, j, qu et x nʼexistent pas en dan.
# 2. r ne se trouve jamais au début dʼun mot.
# Voici le reste de lʼ alphabet :
# Lettres Exemple
# Traduction
# Aa
# "kaa
# gale
# An
# "gan
# tirer
# Aan
# saan
# cadeau
# aɔ
# kaɔ
# perdrix
# aɔn
# ‘daɔnaraignée
# bh
# -bho
# cabris
# dh
# dhe
# mère
# ee
# ꞊wee
# sel
# ɛ
# "pɛ
# déchirer
# ɛɛ
# ꞊wɛɛ
# moquerie
# ɛn
# -gɛn
# pied
# ɛɛn
# ꞊gblɛɛn
# long
# ë
# pë
# chose
#
# ëë
# ën
# ëën
# ɛa
# ɛan
# gw
# in
# iin
# ɩ
# ɩɩ
# kw
# ng1
# oo
# ɔ
# ɔn
# ɔɔn
# ö
# öö
# u
# un
# uun
#
# "këë
# ʼkën
# ꞊klëën
# "kpɛa
# gɛan"
# -gwë
# "bin
# "iin
# "wɩ
# "gbɩɩ꞊kwaa
# gbeng
# -zoo
# ʼpɔ
# "yɔn
# ꞊yɔɔn
# pö
# töö
# "su
# bun
# ꞊yuun
#
# daba
# rassasier
# entourer
# sec
# scorpion
# caillou
# fleur
# ou
# parler
# fort
# main gauche
# nuit
# chenille
# credit
# huile
# sang
# dire
# panier
# lune
# tombeau
# asticot
#
# ü
# üü
# ün
# üün
# ϋ
# ϋϋ
# ʋ
# ʋʋ
#
# ʼgü
# "güü
# ꞊blün
# glüün
# "gϋ
# "bhϋϋ
# "tʋ
# "tʋʋ
#
# intérieur
# amère
# miette
# rouler
# brûler
# tarir
# oreille
# sauce
#
# -Wo ʼdho -kɔ ( Les tons )
# très haut
# haut
# moyen
# bas
# très bas
# très haut + très bas
# haut + très bas
# moyen + très bas saabas + très bas
# moyen + très haut gɛan"
# moyen + haut
#
# "dhü
# ʼkɔ
# dë
# ꞊zɛ
# -dhɔ
# "klangʼyënngsavon
# ꞊gööscorpion
# kpuuʼ
#
# arbre
# maison
# père
# termite
# amour
# singe
# soleil
# iroko
# souche
echo
echo "Try the corpus now"
echo
