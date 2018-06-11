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

grep -n -P "\x{2C}\x{0308}" proof-of-concept-text.txt
echo "We fixed that: See they are gone!"

##5. Now lets get rid of those upsilons
sed -e 's/ϋ/ʋ̈/g' -i proof-of-concept-text.txt

##6a. Corrected non-letter apostrophe U+0027 to letter apostrophe U+02BC

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

##7a. Let's move instances of <U+201D	”	> to <U+02BC ˮ>
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
echo "La-sha"
echo ""
grep -n -P "–" proof-of-concept-text.txt | tail -1
echo ""
echo "See they are everywhere"

sed -e 's/–/˗/g' -i proof-of-concept-text.txt

##10b. Fix undeerscore
sed -e 's/_/˗/g' -i proof-of-concept-text.txt



#Fix wrong comma
# cat proof-of-concept-text.txt | perl -CS -pe 's/\N{U+201A}/\N{U+002C}/g' proof-of-concept-text.txt > proof-of-concept-text2.txt
#
# rm proof-of-concept-text.txt
# mv proof-of-concept-text2.txt proof-of-concept-text.txt
#
# git commit proof-of-concept-text.txt -m "Corpus after correcting bad comma"
#
# UnicodeCCount.pl proof-of-concept-text.txt > proof-of-concept-text-count.txt
#
# git commit proof-of-concept-text-count.txt -m "Corpus Numbers after correcting bad comma"
#






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
