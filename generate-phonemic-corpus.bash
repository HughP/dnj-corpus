#!/bin/bash

#Copyright: 2018 Hugh Paterson III
#Licenses: MIT as indicated in paterson-license.md
#Note: Still need to check the Unicode points of the characters replaced via this script. suspect are:
# U+026F	ɯ	5850	LATIN SMALL LETTER TURNED M
# U+028C	ʌ	8384	LATIN SMALL LETTER TURNED V
# U+039B	Λ	46	GREEK CAPITAL LETTER LAMDA
# U+0261	ɡ	1766	LATIN SMALL LETTER SCRIPT G
# U+019C	Ɯ	71	LATIN CAPITAL LETTER TURNED M
#I need my handbook of the IPA to reference the Unicode code points and symbol names

rm phonemic-corpus.txt
cp proof-of-concept-text.txt phonemic-corpus.txt

#ng
sed -e 's/ng/ŋ/g' -i phonemic-corpus.txt
sed -e 's/Ng/Ŋ/g' -i phonemic-corpus.txt

sed -e 's/Ɩ/E/g' -i phonemic-corpus.txt
sed -e 's/ɩ/e/g' -i phonemic-corpus.txt

sed -e 's/Ɛan/Æ̃/g' -i phonemic-corpus.txt
sed -e 's/ɛan/æ̃/g' -i phonemic-corpus.txt

# Æ̃ U+00C6 æ U+00E6 æ
sed -e 's/Ɛa/Æ/g' -i phonemic-corpus.txt
sed -e 's/ɛa/æ/g' -i phonemic-corpus.txt

#Gb gb ɡ͡b
sed -e 's/Gb/G͡b/g' -i phonemic-corpus.txt
sed -e 's/gb/ɡ͡b/g' -i phonemic-corpus.txt

# Kp kp k͡p
sed -e 's/Kp/K͡p/g' -i phonemic-corpus.txt
sed -e 's/kp/k͡p/g' -i phonemic-corpus.txt

#Ɛɛn	ɛɛn Ɛn	ɛn
sed -e 's/Ɛɛn/Ɛ̃ɛ̃/g' -i phonemic-corpus.txt
sed -e 's/ɛɛn/ɛ̃ɛ̃/g' -i phonemic-corpus.txt
sed -e 's/Ɛn/Ɛ̃/g' -i phonemic-corpus.txt
sed -e 's/ɛn/ɛ̃/g' -i phonemic-corpus.txt

# U+2C70 Ɒ  U+0252 ɒ Aɔ	aɔ Aɔn	aɔn
sed -e 's/Aɔn/Ɒ̃/g' -i phonemic-corpus.txt
sed -e 's/aɔn/ɒ̃/g' -i phonemic-corpus.txt
sed -e 's/Aɔ/Ɒ/g' -i phonemic-corpus.txt
sed -e 's/aɔ/ɒ/g' -i phonemic-corpus.txt

# Ɔɔn	ɔɔn Ɔn	ɔn
sed -e 's/Ɔɔn/Ɔ̃ɔ̃/g' -i phonemic-corpus.txt
sed -e 's/ɔɔn/ɔ̃ɔ̃/g' -i phonemic-corpus.txt
sed -e 's/Ɔn/Ɔ̃/g' -i phonemic-corpus.txt
sed -e 's/ɔn/ɔ̃/g' -i phonemic-corpus.txt

# Un	un Uun	uun
sed -e 's/Uun/Ũũ/g' -i phonemic-corpus.txt
sed -e 's/uun/ũũ/g' -i phonemic-corpus.txt
sed -e 's/Un/Ũ/g' -i phonemic-corpus.txt
sed -e 's/un/ũ/g' -i phonemic-corpus.txt

#ɯ Ɯ
sed -e 's/Üün/Ɯ̃ɯ̃/g' -i phonemic-corpus.txt
sed -e 's/üün/ɯ̃ɯ̃/g' -i phonemic-corpus.txt
sed -e 's/Ün/Ɯ̃/g' -i phonemic-corpus.txt
sed -e 's/ün/ɯ̃/g' -i phonemic-corpus.txt
sed -e 's/Ü/Ɯ/g' -i phonemic-corpus.txt #This will target all ɯ, both single and double, the following lowercase one will get taken care of two statements later.
#ʋ̈ü
sed -e 's/ʋ̈ü/ɤɯ/g' -i phonemic-corpus.txt
sed -e 's/ü/ɯ/g' -i phonemic-corpus.txt #This will target all ɯ, both single and double

#Λ U+0245 ʌ U+028C; ië uë ʋë
sed -e 's/Ëën/Λ̃ʌ̃/g' -i phonemic-corpus.txt
sed -e 's/ëën/ʌ̃ʌ̃/g' -i phonemic-corpus.txt
sed -e 's/Ën/Λ̃/g' -i phonemic-corpus.txt
sed -e 's/ën/ʌ̃/g' -i phonemic-corpus.txt
sed -e 's/Ë/Λ/g' -i phonemic-corpus.txt
sed -e 's/ë/ʌ/g' -i phonemic-corpus.txt

# In	in Iin	iin ian
sed -e 's/Iin/Ĩĩ/g' -i phonemic-corpus.txt
sed -e 's/iin/ĩĩ/g' -i phonemic-corpus.txt
sed -e 's/In/Ĩ/g' -i phonemic-corpus.txt
sed -e 's/in/ĩ/g' -i phonemic-corpus.txt
sed -e 's/ian/ĩã/g' -i phonemic-corpus.txt

#Aan aan
sed -e 's/Aan/Ãã/g' -i phonemic-corpus.txt
sed -e 's/aan/ãã/g' -i phonemic-corpus.txt
sed -e 's/An/Ã/g' -i phonemic-corpus.txt
sed -e 's/an/ã/g' -i phonemic-corpus.txt

#Ö	ö Öö	öö Ʋ̈	ʋ̈ Ʋ̈ʋ̈	ʋ̈ʋ̈ iʋ̈ iöUnfortunately ɤ is not case matched
sed -e 's/Ö/ɤ/g' -i phonemic-corpus.txt
sed -e 's/ö/ɤ/g' -i phonemic-corpus.txt
sed -e 's/Ʋ̈/ɤ/g' -i phonemic-corpus.txt
sed -e 's/ʋ̈/ɤ/g' -i phonemic-corpus.txt

#Ʋ	ʋ --> O o
sed -e 's/Ʋ/O/g' -i phonemic-corpus.txt
sed -e 's/ʋ/o/g' -i phonemic-corpus.txt

# U+018A Ɗ, U+0257 ɗ
sed -e 's/Dh/Ɗ/g' -i phonemic-corpus.txt
sed -e 's/dh/ɗ/g' -i phonemic-corpus.txt

#U+0181 Ɓ , U+0253 ɓ
sed -e 's/Bh/Ɓ/g' -i phonemic-corpus.txt
sed -e 's/bh/ɓ/g' -i phonemic-corpus.txt
#Make l default
sed -e 's/R/L/g' -i phonemic-corpus.txt
sed -e 's/r/l/g' -i phonemic-corpus.txt

#N n
sed -e 's/N/Ɗ/g' -i phonemic-corpus.txt
sed -e 's/n/ɗ/g' -i phonemic-corpus.txt

#M m
sed -e 's/M/Ɓ/g' -i phonemic-corpus.txt
sed -e 's/m/ɓ/g' -i phonemic-corpus.txt

# Don't need changed
#ɩa
#L l
# D d
# E e
# Ee	ee
# F f
# G g
# Ɛ	ɛ
# Ɛɛ	ɛɛ
# V v
# W w
# Y y
# Z z
# 〈ˮ\p{L}\s〉
# 〈ʼ\p{L}\s〉
# 〈\s\p{L}\s〉
# 〈꞊\p{L}\s〉
# 〈˗\p{L}\s〉
# 〈ˮ\p{L}˗〉
# 〈ʼ\p{L}˗〉
# 〈\s\p{L}˗〉
# 〈꞊\p{L}\s˗〉
# 〈\s\p{L}ʼ〉
# 〈\s\p{L}ˮ〉
# Ɔ	ɔ
# Ɔɔ	ɔɔ
# A a
# Aa	aa
# U	u
# Uu uu
# I i
# Ii ii
# S s
# T t
#ia
#P p
# Gw	gw
# K k
# Kw kw


# In a nasal feet, any consonant is nasalized; phonemes /ɓ, ɗ,, y,, w/ are represented by their allophones [m,, n,, ɲ,, w̃w̰]. Foot-internal -l- is realized as [-r-] when preceded by dental or palatal consonants, and as [-l-] after labial and velar consonants. Combinations sl-, zl- are realized respectively as [ɬ], [ɮ]: slʌ̄ʌ̄ [ɬʌ̄ʌ̄] ‘turn’, zláȁ [ɮáȁ] ‘younger sibling’.
echo "I think we generated a phonemeic corpus too!"
