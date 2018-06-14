# dnj-corpus
A small corpus of a local newspaper (_˗Pamɛbhamɛ_), and medical counsels (chapters) from _While waiting for a medical doctor_ translated into Eastern Dan.

## Language Description

* **ISO 639-3 language tag**: [dnj](https://iso639-3.sil.org/code/dnj)
* **Language Name**: Dan
* **Language variety demonstrated in this corpus**: Eastern Dan
* **Script**: Latin script.

<!--<sup id="a1">[1](#f1)</sup><sup>,</sup><sup id="a2">[2](#f2)</sup>-->

**Language Note**: Dan is considered by some to be a macro language comprised of a dialect chain of over 40 dialects <sup id="a3">[3](#f3)</sup><sup>,</sup><sup id="a4">[4](#f4)</sup>. As recently as 2012 the ISO 639-3 registrar approved a request ([2012-083](https://iso639-3.sil.org/request/2012-083))<sup id="a5">[5](#f5)</sup> to split one of these dialects off into its own language (Kla [[lda](https://iso639-3.sil.org/code/lda)]). Eastern and Western Dan have had their own separate writing traditions for over 40 years. There are significant segmental and suprasegmental differences between Eastern and Western Dan.

**Script Note**: There may be several orthographies from different dialects which would all qualify as BCP47<sup id="a6">[6](#f6)</sup>: dnj-Latn. Crúbadán language data for Eastern Dan uses: `dnj-x-east` <sup id="a7">[7](#f7)</sup>but it is unclear if that corpus is based on the same orthography as this one, even if it is from the same language variety.

**Font Note**: It has been Hugh's professional experience that in many cases fonts used to encode minority languages often fail to include two very important features. The first is that some classes of diacritics and characters do not combine elegantly for users. For instance: 〈◌̊〉 U+030A 'COMBINING RING ABOVE', does not elegantly combine with 〈🦄〉 U+1F984 'UNICORN FACE' to allow users to put a ring on the unicorn's horn‽  The second case is more grammatical in nature. Most fonts don't support 〈‽〉	 U+203D 'INTERROBANG'.

### Latin Orthography History

**Orthography Note**: It is the case that there are multiple writing systems for different speech varieties of the same ISO 639-3 designated languages, simultaneously. That is separate groups (socio-logical, or dialectical, or both) , are writing the same "language" in different ways at the same time.

Version | Date | Evolutionary steps | Mentor/Artist | Reference
-------------|----|----|-------------|-------------
Version 0.1 | pre-1970 protestant  |  Imported from Liberia | Mission Biblique  |  R & V Forthcoming<sup id="a8">[8](#f8)</sup>.
Version 0.2  | pre-1970 catholic  |  concurrent with but separate from version 0.1 | Roman Catholic Church  |  R & V Forthcoming<sup id="a9">[9](#f9)</sup>.
  Version 0.3 |  1974 | ?? | Margrit Bolli / Eva Flik | Tiémoko Sébastien Baba <sup id="a10">[10](#f10)</sup> (reader; no orthography statement) R & V Forthcoming<sup id="a11">[11](#f11)</sup>
Version 1 | 1982-1990 | ?? | Margrit Bolli / Eva Flik | Bolli & Flik<sup id="a12">[12](#f12)</sup>(Transitional Primer)
Version 2  | 1994  |  The start of using double U+0022 at the end of words appears in a course book for learning to read. |   |  Bolli & Flik<sup id="a13">[13](#f13)</sup> (Transitional Primer)
_Western Dan_ | 2000 | In _Western Dan_ Biblical text preprints (for community circulation) use U+2013 instead of U+002D to indicate tone. (Forever muddling which character is correct in all future writing.) | Margrit Bolli / Eva Flik | See Ruth<sup id="a14">[14](#f14)</sup> and Jonah<sup id="a15">[15](#f15)</sup>  Published in 2000.
Version 3 | (2005??)-2014 | These texts contain U+201C, U+201D, and U+0022 as tone markers before and after words. (It might have been the idea that only U+0027 would be used twice and that human input habits chose to input U+0022 as a quicker step, and then word processing software auto-corrected some of these to U+201C, and U+201D) | Margrit Bolli/Valentin Vydrin | This corpus is representative of this stage in the orthography.
Version 4 | 2014-2017+ | There are significant changes to vowel and tone markers. In general away from digraphs towards single graphemes, and away from pre and post stem tone indication via punctuation towards diacritic indication of tone over the the stem.| Valentin Vydrin | Roberts, Brown, Vydrin Forthcoming<sup id="a16">[16](#f16)</sup>,  R & V Forthcoming<sup id="a17">[17](#f17)</sup>, V & R Forthcoming<sup id="a18">[18](#f18)</sup>

## Corpus Description
### The data and its presentation here in the introduction to the corpus

The data has two states.
  1. As first received from sources.
  2. As finally processed for use in Keyboard layout analysis.
The reason for these two states is 1) to faithfully represent the corpus as it was originally received; 2) It is felt that this state most faifully represents the text processing and publishing "natural language use" which Dan Language users encounter. However, to do the keyboard optimization, it is important to look at the intended characters that language users thought they were using. It is quite evident that automation has changed a great deal of the intended characters into something unintended. This intended state is what is needed to optimize a keyboard layout.

### Writing system

* BCP47: dnj-Latn
* Orthography version: 3

**Writing System Note**: In this writing system tone is shown in part through characters with the Unicode attributes for punctuation. Various characters before or after the stem (word) indicate the pitch melody of the orthographic word. These characters are not used in expected ways according to their Unicode attributes as encoded in the original documents for this corpus. As a result many applications do not properly type set or interact with the "words" in the ways that many users of "global" languages expect. One notable result is that the use of space around proper punctuation marks is not always as one would expect for an orthography written in a Latin script. That is, it is not uncommon to see something like `ˮban˗ ? ꞊Yaaʼ˗` where there are extra spaces around the question mark.

#### Writing system, orthographic, linguistic, and alphabet descriptions for encoding of text in Eastern Dan version 3.

The closest thing to a formal writing system description for Eastern Dan is a 1994<sup id="a19">[19](#f19)</sup> community oriented reader which covers, Vowels, Consonants, Numbers, and punctuation. The 1994 reader improves upon a 1982 community oriented reader<sup id="a20">[20](#f20)</sup> by offering sections on numbers and punctuation. However, neither book presents an alphabetic order, or an alphabet in whole (all at one time). In, fact because the readers are designed as transitional learners, coming from French, the mode of comparison is to French writing. To the point one might ask: "is the presentation of writing in Dan 'French orthography adapted for Dan', or is it a 'unique writing system for Dan' ready to stand on its own and greet a world of writing systems"? Several forthcoming works do offer a formal linguistic description of the orthography, orthography testing, and a newly proposed orthography, but these works fail to provide details at the technical and writing system levels, focusing rather on the correspondences between linguistic units and typographical units.

In this section a short prose discussion is followed by a chart. Charts are followed by list presented in crucial ordering for tokenization by the python library [segments](https://pypi.org/project/segments/).<sup id="a21">[21](#f21)</sup>
Note: the graphemes used here, with the exception of those recommended for special status by RFC3986<sup id="a22">[22](#f22)</sup> are presented because they are evidenced in the corpus.

These definitions and conventions are observed throughout this work:
* An **alphabet** is a list of **letters** used to transcribe a language. Alphabets usually have an order for pedagogical purposes, and for dictionary sorting purposes. At a technical level, SIL's NRSI<sup id="a23">[23](#f23)</sup> provides this: _a segmental writing system having symbols for individual sounds, rather than for syllables or morphemes. In a true alphabet, consonants and vowels are written as independent letters, in contrast to an abugida or an abjad. In a perfectly phonemic alphabet, phonemes and letters would be predictable in both directions; that is, the sound of a word could be predicted from its spelling and vice-versa. A phonetic alphabet is also predictable in this way, however it uses separate letters for separate allophones, whereas a phonemic alphabet may describe allophones of the same phoneme using a single letter_.
* **Letters** are typographical units for the purposes of pedagogy.
* **Characters** are single Unicode code points.
* **Graphemes** are typographical units. Often in a writing system these units carry meaning.
* **Multigraph** ([from SIL's NRSI](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=glossary#multig)) a combination of two or more written symbols or orthographic characters (e.g. letters) that are used together within an orthography to represent a single sound. (Combinations consisting of two characters are also known as **digraphs**.).
* A **linguistic description** would include phonetic or phonological details for the characters used in the encoding of the text.
* A list of **phonemes** is a list of unique and contrastive sound units in a language. Many times an alphabet is based on a list of phonemes. But to the extent that two typographical characters are used together in a pattern (digraph) to indicate when co-occurring that they represent a phoneme then an alphabet might have fewer **letters**/components than a list of phonemes in the same language.
* A **writing system description** includes things like _casing correspondences_, _usage rules for casing_, _punctuation characters_, _usage rules for punctuation marks_, _letters_, _numbers_, and _characters used in Internet use_, with their Unicode code points used in technical encodings. A writing system description, more than just an orthography is needed to fully support a language on digital tools. It is necessary for creating a **Locale** description and is useful for creating a custom Keyboard layout, and other _Natural Language Processing Tools_. <!-- not yet defined are  "graphemes", "diacritic — a written symbol which is structurally dependent upon another symbol; that is, a symbol that does not occur independently, but always occurs with and is visually positioned in relation to another character, usually above or below. Diacritics are also sometimes referred to as accents. For example, acute, grave, circumflex, etc. from SIL http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=glossary", "digram", "encoding", "dipthong", "Functional Unit" -->
*  The following characters are used to provide special meaning to text outside of tables:
  * Content within square brackets denotes either phonetic representations or ISO639-3 codes  `[]`.
   *  Content within forward slashes denotes phonemic representations `//`.
   * Content within angle brackets denotes orthographic or graphemic representations `〈〉`.
   * Content within double-slashes or pipes denotes morphophonemic representations `// //` or `| |`.
   * In prose sections, Unicode characters will appear in the following order upon first mention: 〈‽〉 U+203D 'INTERROBANG'. A more natural prose style will be used for subsequent mentions,, using any one of these three parts.

##### Casing rules
###### Based on rules presented in 1994.
No specific casing rules are discussed.

###### Based on the corpus
Based on data within the corpus as originally delivered, casing rules appear to follow general French casing norms, with two noted exceptions.

1. Tone marks preceding the non-tone mark portion of the word do not get capitalized, but the characters following the tone marks [a-zA-Z] do get capitalized. Yet tone marks are considered part of the word and should not have word breaks between them and the words they belong with.
2. The first word of a sentence is capitalized.
3. Proper nouns are capitalized.
4.  Unlike French where, when an article is the first word of a sentence both the first word and the second word are capitalized, in Eastern Dan only the first word is capitalized.
5. Surnames are not capitalized as is the custom in French literature.
6. Uppercase can be used as a style choice in titles of creative works, much as is the case in many languages, which use a Latin script.
7. Only the first letter of a digraph is capitalized. i.e. 〈"Ɛa-〉 is correct whereas 〈"ƐA-〉 is not.

##### Word breaks
Orthographic word breaks are indicated by a space, generally U+0020. Because Eastern Dan uses characters which look like punctuation, and often the actual punctuation characters are used, it is has been common practice to overcompensate to keep characters representing tone attached to the rest to the string that represents the word. This is demonstrated in the corpus, as it was originally delivered.

The use of normal text editors with the standard characters for the glyphs representing tone result in line and word breaks which are unexpected for Eastern Dan readers and Writers. The solution for the orthography version 3 is to use 'MODIFIER LETTER' equivalent characters for tone marks, instead of standard characters found in many of the global languages using Latin scripts for these glyphs.

###### Based on rules presented in 1994.
Word break rules are not discussed. But reading is taught with single words bounded by spaces. This occurs at the sentence level too. One may assume that tone marks should never separate from the rest of their word. It would just be weird to insert a hyphen into a word that uses a hyphen as a letter.

###### Based on the corpus
Various kinds of _special_ characters are used in the corpus as it was originally delivered, to prevent word breaks in undesired places. Sometimes 〈 〉 U+00A0 'NO-BREAK SPACE' and sometimes 〈‑〉  U+2011 'NON-BREAKING HYPHEN' was used to control line and word breaking behavior.

##### Punctuation
###### Based on rules presented in 1994.
The readers' guide says that, in general the orthography for Dan utilizes "les mêmes signes"  of punctuation of the orthography of French.
Unicode version 1.0 was released in 1991, and by 1994 was at version 1.1.0.  So it is highly unlikely that the authors of the literacy primers were thinking about matching their orthography symbols to Unicode characters. Unicode points are provided here as an added point of reference. They are not in the source text.

Codepoint   | Grapheme | Usage
-------------|-----|----
U+00AB  | «  | les guillemets ouvrant et
U+00BB | »  | fermant un discourse direct
U+0021  | !   | le point d'interrogation marque la présence d'une exclamation
U+003B | ;  | le point-virgule entrecoupe deux parties d'une longue phrase
U+003C | < | les guillemets simples ouvrant et
U+003E | >| fermant un discourse direct placé dans un autre discourse direct.
U+003F | ? | le point d'interrogation marque la présence d'une question
U+002E | . | le point marquant la fin d'une pensée
U+002C | , | la virgule donne l'occasion de prendre haleine
U+003A | :  | le double point marque le début d'un discourse direct

###### Based on the corpus
Based on data within the corpus, as it was originally delivered, the following punctuation marks are observed. Their usages, as far as can be determined, from the corpus are indicated in the table.

Codepoint   | Grapheme | Usage
-------------|-----|----
U+00B0 | ° | Used as part of the abbreviation for number 〈n°〉.
U+005F | _ | unknown
U+005B | [  |unknown
U+005D | ] |unknown
U+2026 | … |unknown
U+201A | ‚ | Errors - Should be U+002C
U+002F | /  |unknown
U+00AB  | «  | Open a direct speech statement - Usage seems to be the opposite.
U+00BB | »  | Closes a direct speech statement - Usage seems to be the opposite.
U+0021  | !   | Closes an exclamation, interjection or emphatic statement
U+003B | ;  | unknown
U+2039 | ‹  | Opens a quote inside of a direct speech statement
U+203A | ›  | Closes a quote inside of a direct speech statement
U+003C | < | Error - All cases are double i.e. << and should be replaced with U+00AB
U+003E | >| Error - All cases are double i.e. >> and should be replaced with U+00BB
U+003F | ? | Closes a question statement
U+002E | . | unknown
U+002C | , | unknown
U+0029 | )| Closes a parenthetical. Often a number, but sometimes a word in another language, or an alternate transcription of a name.
U+0028 | ( | Opens a parenthetical. Often a number, but sometimes a word in another language, or an alternate transcription of a name.
U+003A | :  |unknown
U+002B | + | Precedes a telephone number to indicate country code

```
°
_
[
]
…
‚
/
»
«
!
;
‹
›
<
 >
 ?
.
,
 )
 (
:
+
```

##### Number Characters
###### Based on rules presented in 1994.
Unfortunately no math symbols or other numeric related characters are provided. Unicode points are provided here as an added point of reference. They are not in the source text.

Codepoint   | Grapheme
-------------|-----
U+0030      | 0
U+0031      | 1
U+0032      | 2
U+0033      | 3
U+0034      | 4
U+0035      | 5
U+0036      | 6
U+0037      | 7
U+0038      | 8
U+0039      | 9

###### Based on the corpus
As evidenced in the corpus, as it was originally delivered, when writing Eastern Dan with the Latin script the following numbers are used.

Codepoint   | Grapheme
-------------|-----
U+0030      | 0
U+0031      | 1
U+0032      | 2
U+0033      | 3
U+0034      | 4
U+0035      | 5
U+0036      | 6
U+0037      | 7
U+0038      | 8
U+0039      | 9

```
0
1
2
3
4
5
6
7
8
9
```

Number oriented notes:

* Thousands separator is 〈.〉 U+002E 'FULL STOP'.
* The is a shortened form of the word "number" in many transcription traditions. Unicode has a special character for this 〈№〉 U+2116 'NUMERO SIGN'. Typographical norm in Dan appear to follows French social practice, rather than best practice for encoding. This was evidenced only one time in the corpus and is the source of 〈°〉  U+00B0 'DEGREE SIGN', and likely deserves further investigation before strong claims are made about what method should be used in Eastern Dan writing. [Wikipedia suggests](https://en.wikipedia.org/w/index.php?title=Numero_sign&oldid=842034015#French) that "the numero symbol is not in common use in France and does not appear on a standard AZERTY keyboard. Instead, the French Imprimerie nationale recommends the use of the form 〈no〉 (an 〈n〉 followed by a superscript lowercase 〈o〉). The plural form 〈nos〉 can also be used. In practice, the 〈o〉 is often replaced by the degree symbol 〈°〉, which is visually similar to the superscript 〈o〉 and is easily accessible on an AZERTY keyboard."<sup id="a24">[24](#f24)</sup>
* Telephone numbers are written in series of two digits. These digits can be separated with 〈.〉 U+002E or spaces.
 ```
 grep -n -P "\s\d" proof-of-concept-text.txt
```
* A series of numbers is separated by a comma and a space. e.g. 〈1, 2, 3〉

##### Reasonable characters needed for Internet use

According to [RFC 3986](http://www.ietf.org/rfc/rfc3986.txt) <sup id="a25">[25](#f25)</sup>the following characters are needed for reasonable Internet use in the URL and URI syntax. In the Internet domain these characters can sometimes have a reserved meaning. Therefore they should be given appropriate consideration in all orthographies. So while their typographical function may or may not be present in the everyday writing of Eastern Dan, as Eastern Dan speakers become more digitally active with their language, these characters will increase in their usage by Eastern Dan language users.

This does not preclude any language based denotation that the orthography may make on these characters. For instance there is a long typographical history in Eastern Dan of using  〈=〉 U+003D 'EQUALS SIGN' as a tone marking character. It is even the case that the original text of this corpus was encoded with this character, no doubt for practical reasons of keyboard accessibility. However the more appropriate character is 〈꞊〉 U+A78A 'MODIFIER LETTER SHORT EQUALS SIGN'. Typographically across fonts, it is common that these characters appear the same, however their Unicode properties are different. U+A78A can not be substituted for Internet use and U+003D will not properly join with other text to form words in text processing software. By way of analogy, just because the Internet does not use the same quote marks that French and Eastern Dan do, does not mean that these languages need to change, only that accessing these characters and their social contribution is a needed consideration in orthography statements and written language development.

Unmentioned in RFC 3986 is the use of 〈"〉 U+0022 'QUOTATION MARK', 〈>〉  U+003E 'GREATER-THAN SIGN', and 〈<〉 U+003C 'GREATER-THAN SIGN' which are all highly important in various mark-ups like HTML5<sup id="a26">[26](#f26)</sup>. Markdown<sup id="a27">[27](#f27)</sup>, a common text markup language, requires 〈\`〉 U+0060 'GRAVE ACCENT', 〈|〉 U+007C 'VERTICAL LINE', and 〈\〉 U+005C 'REVERSE SOLIDUS'.
The following table represents RFC 3986 plus 〈", <, >, |, \`, \ 〉.  Many of these characters are evidenced in the corpus. However some are not evidenced. <!-- Need to show which ones -->

Codepoint   | Grapheme
-------------|-----
U+0021 | !
U+0022 | "
U+0023 | #
U+0024 | $
U+0025 | %
U+0026 | &
U+0027 | '
U+0028 | (
U+0029 | )
U+002A | *
U+002B | +
U+002C | ,
U+002D | -
U+002E | .
U+002F | /
U+003A | :
U+003B | ;
U+003C | <
U+003D | =
U+003E | >
U+003F | ?
U+0040 | @
U+005C |  \\
U+005B | [
U+005D | ]
U+005F | _
U+0060 | \`
U+007C | \|
U+007E | ~


```
%
:
/
?
#
[
]
@
!
$
&
'
(
)
*
+
"
,
;
=
-
.
_
~
"
`
|
>
<
```

###### Based on rules presented in 1994.
The Internet was not discussed in the 1994 reading primer.

###### Based on the corpus
This corpus does not represent Internet communication, therefore it seems a bit presumptive to suggest that any character in this corpus represents use on the Internet. Though this should be a consideration for keyboard layout and text production tools for Eastern Dan.

It is worthy to not that the local paper evidently did have some online preasence at _www.pamebhame.info_. This was some time around 2008. A quick check of the Internet archive shows that no content was preserved in the [Internet archive](https://web.archive.org/web/*/http://pamebhame.info/robots.txt).

#### Alphabet
##### Based on rules presented in 1994.
Actually neither the 1994<sup id="a28">[28](#f28)</sup> reading primer nor the 1982<sup id="a29">[29](#f29)</sup> reading primer present or address the issue of an alphabet, or alphabetical ordering. Both resources present their audiences with a list of pedagogical learning units which match well with the phonemics of Eastern Dan (with a few exceptions). They present these in _functional units_ (a term I borrow from Holm 1971<sup id="a30">[30](#f30)</sup> and Venezky 1970<sup id="a31">[31](#f31)</sup> 1967<sup id="a32">[32](#f32)</sup>), ordered and grouped by place of articulation (phonetic detail). Therefore, as according to the information which is available, it would appear that no alphabet statement has been made for Eastern Dan.

That said, a letter list should be possible, and relevant to this section, though any ordering presented here would only be for piratical reasons, and is not intended to be prescriptive.
In this presentation I present diacritics as a component of the letters on which they occur. I do this because the diacritics themselves do not have a consistent meaning in the orthography. I do not list every functional unit, only the letters from which functional units can be created. This is true for vowels, tone patterns, and double articulated consonants.
Based on the letters presented in the 1994 primer the following letters would need to be in an alphabet. This list includes 36 letters; 32 with casing pairs for a total of 68 alphabetic graphemes. A list of functional units will be presented in a separate section.

```
꞊
˗
ʼ
ˮ
Aa
Bb
Dd
Ee
Ɛɛ
Ëë
Ff
Gg
Hh
Ii
Ɩɩ
Kk
Ll
Nn
Mm
Oo
Ɔɔ
Öö
Pp
Rr
Ss
Tt
Uu
Üü
Vv
Ʋ̈ʋ̈
Ʋʋ
Ww
Yy
Zz
```
###### Functional units
Functional units are sets of graphemes that work together to bring meaning to a reader. In the English 〈ch〉 functions as a functional unit. The reader needs to parse the letters as a single unit as they map an orthographic representation to a phonological representation.

The following is a list of functional units and their phonological representations. The tonal patterns are written as Perl RegularExpressions in angle brackets. `\s` indicates a space (word boundaries), `\p{L}` indicates some letter(s), and the tone marks themselves - represent themselves.

<!-- It was previously thought that maybe the following were valid characters, but they are not. The following are Upsilon, Latin Letter v with hook is the correct character.
Ϋ	ϋ
Ϋϋ	ϋϋ

Correct character is
Ʋ̈ ʋ̈
Some browsers or fonts might not render this correctly, but CharisSIL and DoulosSIL the Unicode compliant fonts do render this correctly.
-->


```
A	a
Aa	aa
An	an
Aan	aan
Aɔ	aɔ
Aɔn	aɔn
Bh	bh
D	d
Dh	dh
E	e
Ee	ee
Ɛ	ɛ
Ɛɛ	ɛɛ
Ɛa	ɛa
Ɛan	ɛan
Ɛn	ɛn
Ɛɛn	ɛɛn
Ë	ë
Ëë	ëë
Ën	ën
Ëën	ëën
Ɛa	ɛa
Ɛan	ɛan
F	f
G	g
Gb	gb
Gw	gw
I	i
In	in
Ii	ii
Iin	iin
Ɩ	ɩ
Ɩɩ	ɩɩ
K	k
Kp	kp
Kw	kw
L	l
M	m
N	n
Ng	ng
O	o
Oo	oo
Ö	ö
Öö	öö
Ɔ	ɔ
Ɔɔ	ɔɔ
Ɔn	ɔn
Ɔɔn	ɔɔn
P	p
R	r
S	s
T	t
U	u
Uu	uu
Un	un
Uun	uun
Ü	ü
Üü	üü
Ün	ün
Üün	üün
V	v
W	w
Y	y
Z	z
Ʋ	ʋ
Ʋʋ	ʋʋ
Ʋ̈	ʋ̈
Ʋ̈ʋ̈	ʋ̈ʋ̈
iʋ̈
iö
ië
ia
ian
ɩa
uë
ʋë
ʋ̈ü
〈ˮ\p{L}\s〉
〈ʼ\p{L}\s〉
〈\s\p{L}\s〉
〈꞊\p{L}\s〉
〈˗\p{L}\s〉
〈ˮ\p{L}˗〉
〈ʼ\p{L}˗〉
〈\s\p{L}˗〉
〈꞊\p{L}\s˗〉
〈\s\p{L}ʼ〉
〈\s\p{L}ˮ〉
```
##### Vowels

Phoneme chart (Oral)<sup id="a1">[SIL1982](#f1)</sup><sup>,</sup><sup id="a2">[V&K 2008](#f2)</sup><sup>,</sup><sup id="a2">[Ch10](#f2)</sup>

Linguistically, Eastern Dan is claimed to have a 12 point vowel system with length, pitch, and nasalization distinctions. Length has been analyzed as two sequential vowels. Pitch patterns are covered under the tone marking section. Nasalization is occurs phonemically on 9 vowels. The velar nasal /ŋ/, orthographically indicated as 〈ng〉, is linguistically considered a vowel in Eastern Dan<sup id="a1">[__(cite this)__](#f1)</sup> . This bring the total to 22 vowels.

|    _**Oral**_  | Front Unrounded | Back Unrounded | Back Rounded |
|----------------|:-----:|:-----:|:----:|
| **Close**      |  i    |   ɯ   |   u  |
| **Near-close** |       |       |      |
| **Mid**        |  e    |   ɤ   |   o  |
| **Open-mid**   |  ɛ    |   ʌ   |   ɔ  |
| **Near-open**  |   æ   |       |      |
| **Open**       |       |   a   |   ɒ  |

|    _**Nasal**_  | Front Unrounded | Back Unrounded | Back Rounded |
|----------------|:-----:|:-----:|:----:|
| **Close**      |  ĩ    |   ɯ̃   |   ũ  |
| **Near-close** |       |       |      |
| **Open-mid**   |  ɛ̃    |   ʌ̃   |   ɔ̃  |
| **Near-open**  |   æ̃   |       |      |
| **Open**       |       |   ã   |   ɒ̃  |

/ŋ/

###### Based on content presented in 1994.

Nasal Vowels are indicated with by an 〈n〉 following the vowel.


###### Diphthongs
```
iʋ̈
iö
ië
ia
ian
ɩa
uë
ʋë
ʋ̈ü
```

###### Based on the corpus

Eastern Dan vowels carry distinctions for length, pitch, and nasality. Nasality is indicated by an 〈n〉 following the vowel. Vowel length has been linguistically analyzed as two separate vowels and is indicated by sequential characters i.e. 〈aa〉. Some vowels are indicated by a digraph 〈ɛa, aɔ〉; these are not diphthongs (vowels that start at one phonetic value and finish at another value); though Eastern Dan also has diphthongs. Dieresis above vowels indicate a separate vowel quality. Vowels with dieresis are thought of as a single character or letter of the alphabet. Dieresis is not a separable unit (even though at the character encoding level in UTF-8 it is separable). The eng /ŋ/, orthographically indicated as 〈ng〉, is linguistically considered a vowel in Eastern Dan. This is in contrast to the typologically normal analysis and IPA  symbol /ŋ/ usage as a consonant. Casing: for words starting with long/double vowels, only the first letter is case sensitive for sentence based casing rules. In this presentation of vowels, many vowels are presented, however, it is not true that this represents the Eastern Dan alphabet. The detailed representation here allows for vowels to be tokenized.

<!--
> Eastern Dan has a rich inventory of vowel phonemes: twelve oral and nine nasal, each of which can occur as single vowels or sequences of two identical vowels. The velar nasal /ŋ/ is also best interpreted as a vowel (with a restricted distribution), because it occurs in the same phonotactic slot as vowels and bears tone as vowels do. This brings the total number of vowels to 22.

>The existing orthography contains three cases of vowel over-representation:
<e, ɩ>: the phoneme /e/ is pronounced [ɪ] on a xH tone syllable and [e] elsewhere;
<o, ʋ>: the phoneme /o/ is pronounced [ʊ] on a xH tone syllable and [o] elsewhere;
<ö, ʋ̈>: the phoneme /ɤ/ is pronounced [ұ]1 on a xH tone syllable and [ɤ] elsewhere.2
The allophonic graphemes <ɩ, ʋ ʋ̈> were relative latecomers to the orthography – they are not listed in the 1982 version of the orthography guide – following the discovery that they are contrastive in Man and some other dialects.
-->

Codepoint | Functional Unit | IPA equivalent | Phonetic description
-------------|:----:|:----:|----
Uppercase, lowercase |, |  |
U+004E U+0067, U+006E U+0067 | Ng, ng | ŋ | Velar Nasal
U+0041 U+0061 U+006E, U+0061 U+0061 U+006E| Aan, aan | ãã | long nasalized front open unrounded vowel
U+0041 U+0061, U+0061 U+0061| Aa, aa | aa | long front open unrounded vowel
U+0190 U+0061 U+006E, U+025B U+0061 U+006E | Ɛan, ɛan | | short front unrounded vowel
U+0190 U+0061, U+025B U+0061| Ɛa, ɛa | æ | short front unrounded vowel
U+0041 U+0254, U+0061 U+0254 | Aɔn, aɔn | ɒ̃ |short nasalized back rounded vowel
U+0041 U+0254, U+0061 U+0254 | Aɔ, aɔ | ɒ | short back rounded vowel
U+0041 U+006E, U+0061 U+006E| An, an | ã | short nasalized front open unrounded vowel
U+0190, U+025B | Ɛ, ɛ | ɛ |
U+00CB, U+00EB | Ë, ë |  |
U+00D6, U+00F6 | Ö, ö | ɤ |
U+00DC, U+00FC | Ü, ü | |
U+0045, U+0065 | E, e | |
U+0049, U+0069 | I, i | i |
U+0186, U+0254 | Ɔ, ɔ | ɔ ɔ̃|
U+0041, U+0061 | A, a | |
U+004F, U+006F | O, o | |
U+0055, U+0075 | U, u | |
<!-- I need my handbook of the IPA to reference the Unicode code points and symbol names -->
```
Ng  ng
Aan	aan
Aa	aa
ian
ia
ɩa
Ɛan	ɛan
Ɛa	ɛa
Ɛɛn	ɛɛn
Ɛn	ɛn
Ɛɛ	ɛɛ

An	an
Aɔn	aɔn
Aɔ	aɔ
Ëën	ëën
Ee	ee
Ëë	ëë
Ën	ën
Iin	iin
Ii	ii
In	in
I	i
Ɩɩ	ɩɩ
Ɩ	ɩ

A	a
E	e
Ɛ	ɛ
Ë	ë

O	o
Oo	oo
Ö	ö
Öö	öö
Ɔ	ɔ
Ɔɔ	ɔɔ
Ɔn	ɔn
Ɔɔn	ɔɔn
U	u
Uu	uu
Un	un
Uun	uun
Ü	ü
Üü	üü
Ün	ün
Üün	üün
Ʋ	ʋ
Ʋʋ	ʋʋ
Ʋ̈	ʋ̈
Ʋ̈ʋ̈	ʋ̈ʋ̈
iʋ̈
iö
ië
uë
ʋë
ʋ̈ü
```

##### Consonants

Phoneme chart<sup id="a1">[SIL1982](#f1)</sup><sup>,</sup><sup id="a2">[V&K 2008](#f2)</sup><sup>,</sup><sup id="a2">[Ch10](#f2)</sup>



 |Labial |Dental|Palatal  | Velar| Labio-velar
-----|:-----:|:-----:|:------:|:------:|:--------:
 Voiceless Stops        |    p     |      t       |               |   k    |  kp, kw
 Voiced Stops           |    b     |      d       |               |   g    |  gb, gw
 Voiceless fricatives   |    f     |      s       |               |        |
 Voiced Fricatives      |    v     |      z       |               |        |
 Implosives             |    ɓ     |      ɗ       |               |        |
 Continuants            |          |      l       |      y        |        |   w


###### Based on rules presented in 1994.


###### Based on the corpus

<!--

The existing orthography contains three cases of consonant over-representation:
<l, r>: the phoneme /l/ is pronounced [ɾ] and spelled <r> following a coronal consonant (/t, d, s, z, y/) and [l] elsewhere;
<bh, m>: the phoneme /ɓ/ is pronounced and spelled [m] preceding a nasal vowel and [ɓ] elsewhere;
<dh, n>: the phoneme /ɗ/ is pronounced and spelled [n] preceding a nasal vowel and [ɗ] elsewhere.
The allophonic graphemes <r, m, n> were all included in the orthography out of a desire to facilitate transition to and from French; their presence also conforms to regional practice.

-->
The presentation order of consonants here does not represent the alphabet of Dan, but rather the order required to tokenized the text into phonemes.


Codepoint | Grapheme | IPA equivalent | Phonetic description
-------------|-----|----|----
Uppercase, lowercase |, |  |



```
kp
kw
k
gb
gw
g
bh
dh
m
n
f
s
v
t
z
l
w
r
y
p
```
##### Tone marking

There are four characters which are used to indicate one of ten possible tone patterns for a given word. Not that there are ten possible patterns per word, but rather there are ten patterns in the language. The characters used in the language have no specified Unicode encoding per any known statement. However based on the behavior of various Unicode characters the following are the obvious correct choice – they are the only look a like characters with letter attributes: 〈˗〉 U+02D7 'MODIFIER LETTER MINUS SIGN', 〈ʼ〉 U+02BC 'MODIFIER LETTER APOSTROPHE', 〈ˮ〉 U+02EE MODIFIER LETTER DOUBLE APOSTROPHE, 〈꞊〈꞊〉 U+A78A 'MODIFIER LETTER SHORT EQUALS SIGN'.

###### Based on rules presented in 1994.
<!--
>The earliest version of this orthography underdifferentiated the xH and H tones; they were both written with a preposed apostrophe, e.g. /kɔ́/ <‘kô> house. Also, L tone was written with a preposed stop /zɛ̀/ <.zè> termite (Thomas 1978, 12). This was later revised to the system that is still in use today (Table 4).
-->

Codepoint | Grapheme Pattern | IPA equivalent | Phonologicall description | Usage Note
-------------|-----|----|----|----
 U+02EE, No casing  |〈ˮ\p{L}\s〉 | ˥ |xH | double quote starting the word
U+02BC ,No Casing | 〈ʼ\p{L}\s〉 | ˦ | H | apostrophe starting the word
Null, No Casing | 〈\s\p{L}\s〉 | ˧ | M | no marking at all for tone
U+A78A, No Casing |〈꞊\\p{L}\s〉 | ˨ | L | equals sign starting the word
U+02D7, No Casing | 〈˗\\p{L}\s〉 | ˩ | xL | minus sign starting the word
No Casing | 〈ˮ\p{L}˗〉 |  | xH falling to L |double quote starting the word with minus at the end of the string
No Casing | 〈ʼ\p{L}˗〉 |  | H falling to L | apostrophe starting the word with minus at the end of the string
No Casing |〈\s\p{L}˗〉 |  | M falling to L | Null in front followed by minus at the end of the string
No Casing |〈\s\p{L}ʼ〉 |  | M Raising to H| Null in front followed by apostrophe at the end of the string
No Casing |〈\s\p{L}ˮ〉 |  | M Raising to xH| Null in front followed by double quote at the end of the string


###### Pre-Stem
```
ˮ
ʼ
꞊
˗
```
###### Post-Stem
  ```
˗
ʼ
ˮ
```

###### Based on the corpus

<!--  This pattern doesn't seem to be in the documentation. ʼ˗  -->

#### Reasonable characters needed for French

French is the National language in the country where the desist population of Eastern Dan speakers reside. It makse some sense to add the necessary characters to a text input solution. However, those characters are separated out so that it is possible to design a text input solution without them.

###### Based on rules presented in 1994.
French is used in the book bu there is no indication or attempt to define French writing norms or requirements as they are applied in CI.
<!-- https://www.thoughtco.com/how-to-use-french-punctuation-4086509 https://www.thoughtco.com/hyphens-and-dashes-in-french-4086573 -->
###### Based on the corpus


##### Unicode PUA reliance

Some texts have relied on Unicode PUA code points (U+E000..U+F8FF). All Dan texts, should be checked for PUA characters. Known used characters have been:

* Usage of U+F173 COMBINING MACRON-GRAVE. U+F173 was deprecated because the character was added to Unicode 5.0 as 〈◌᷆〉 U+1DC6 'COMBINING MACRON-GRAVE'. There were 22 occurrences in a toolbox file which is not part of this corpus.

### Content

This is about 20 issues of a 4 page monthly newsletter/newspaper published between 2005 and 2008.  There are several chapters of  _While waiting for a medical doctor_.
A new testament is also known to exist, but is not included in this repository or character counts.

#### Metrics
##### Pre text clean up stats
It should be noted that the percentages of characters and the percentages of phonemes presented here are attested only in this corpus. This corpus is not necessarily natural speech, and some characters may be over represented because _˗Pamɛbhamɛ_, which was targeted at new readers, published a chart of the alphabet in nearly every issue, with some, but not many, words in French.

Linux Command Line `wc -l -w -m`stats are presented for the before and after text clean up.
 `initial-starting-corpus.txt` includes all of the  _-Pamɛbhamɛ_ and the chapters of _While waiting for a medical doctor_.

Round |Lines  | Words  |  Characters
--|--|---|--
Initial Starting corpus | 15756 | 86466 | 416782
Partial french removal| 15482 | 85216 | 409140

Character level stats:

Coed Point| Glyph|Count|Unicode Name
:-----:|:-----:|:-----:|:-----:
U+0009| |241|CHARACTER TABULATION
U+000A| |15756|LINE FEED
U+000C| |110|FORM FEED
U+000D| |897|CARRIAGE RETURN
U+001E| |2721|INFORMATION SEPARATOR TWO
U+0020| |73737|SPACE
U+0021|!|70|EXCLAMATION MARK
U+0022|"|3346|QUOTATION MARK
U+0027|'|7223|APOSTROPHE
U+0028|(|482|LEFT PARENTHESIS
U+0029|)|483|RIGHT PARENTHESIS
U+002A|\*|20|ASTERISK
U+002B|+|110|PLUS SIGN
U+002C|,|4751|COMMA
U+002D|-|27491|HYPHEN-MINUS
U+002E|.|4181|FULL STOP
U+002F|/|96|SOLIDUS
U+0030|0|867|DIGIT ZERO
U+0031|1|301|DIGIT ONE
U+0032|2|436|DIGIT TWO
U+0033|3|136|DIGIT THREE
U+0034|4|110|DIGIT FOUR
U+0035|5|181|DIGIT FIVE
U+0036|6|81|DIGIT SIX
U+0037|7|160|DIGIT SEVEN
U+0038|8|268|DIGIT EIGHT
U+0039|9|116|DIGIT NINE
U+003A|:|488|COLON
U+003B|;|79|SEMICOLON
U+003C|<|252|LESS-THAN SIGN
U+003D|=|5458|EQUALS SIGN
U+003E|>|246|GREATER-THAN SIGN
U+003F|?|202|QUESTION MARK
U+0041|A|1044|LATIN CAPITAL LETTER A
U+0042|B|424|LATIN CAPITAL LETTER B
U+0043|C|15|LATIN CAPITAL LETTER C
U+0044|D|767|LATIN CAPITAL LETTER D
U+0045|E|108|LATIN CAPITAL LETTER E
U+0046|F|97|LATIN CAPITAL LETTER F
U+0047|G|448|LATIN CAPITAL LETTER G
U+0048|H|26|LATIN CAPITAL LETTER H
U+0049|I|66|LATIN CAPITAL LETTER I
U+004A|J|9|LATIN CAPITAL LETTER J
U+004B|K|1224|LATIN CAPITAL LETTER K
U+004C|L|145|LATIN CAPITAL LETTER L
U+004D|M|671|LATIN CAPITAL LETTER M
U+004E|N|356|LATIN CAPITAL LETTER N
U+004F|O|50|LATIN CAPITAL LETTER O
U+0050|P|301|LATIN CAPITAL LETTER P
U+0052|R|8|LATIN CAPITAL LETTER R
U+0053|S|479|LATIN CAPITAL LETTER S
U+0054|T|275|LATIN CAPITAL LETTER T
U+0055|U|50|LATIN CAPITAL LETTER U
U+0056|V|121|LATIN CAPITAL LETTER V
U+0057|W|510|LATIN CAPITAL LETTER W
U+0059|Y|977|LATIN CAPITAL LETTER Y
U+005A|Z|386|LATIN CAPITAL LETTER Z
U+005B|[|10|LEFT SQUARE BRACKET
U+005C| &#92;|1|REVERSE SOLIDUS
U+005D|]|10|RIGHT SQUARE BRACKET
U+005F|\_|1|LOW LINE
U+0061|a|29865|LATIN SMALL LETTER A
U+0062|b|9802|LATIN SMALL LETTER B
U+0063|c|436|LATIN SMALL LETTER C
U+0064|d|12050|LATIN SMALL LETTER D
U+0065|e|5906|LATIN SMALL LETTER E
U+0066|f|430|LATIN SMALL LETTER F
U+0067|g|10278|LATIN SMALL LETTER G
U+0068|h|15463|LATIN SMALL LETTER H
U+0069|i|8567|LATIN SMALL LETTER I
U+006A|j|71|LATIN SMALL LETTER J
U+006B|k|11978|LATIN SMALL LETTER K
U+006C|l|3995|LATIN SMALL LETTER L
U+006D|m|4363|LATIN SMALL LETTER M
U+006E|n|16368|LATIN SMALL LETTER N
U+006F|o|10311|LATIN SMALL LETTER O
U+0070|p|4505|LATIN SMALL LETTER P
U+0071|q|103|LATIN SMALL LETTER Q
U+0072|r|1762|LATIN SMALL LETTER R
U+0073|s|6557|LATIN SMALL LETTER S
U+0074|t|3756|LATIN SMALL LETTER T
U+0075|u|7973|LATIN SMALL LETTER U
U+0076|v|469|LATIN SMALL LETTER V
U+0077|w|8286|LATIN SMALL LETTER W
U+0078|x|85|LATIN SMALL LETTER X
U+0079|y|7445|LATIN SMALL LETTER Y
U+007A|z|1969|LATIN SMALL LETTER Z
U+00A0| |374|NO-BREAK SPACE
U+00A8|¨|1|DIAERESIS
U+00AB|«|102|LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
U+00B0|°|1|DEGREE SIGN
U+00BB|»|100|RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
U+00CB|Ë|46|LATIN CAPITAL LETTER E WITH DIAERESIS
U+00D6|Ö|73|LATIN CAPITAL LETTER O WITH DIAERESIS
U+00DC|Ü|71|LATIN CAPITAL LETTER U WITH DIAERESIS
U+00E7|ç|21|LATIN SMALL LETTER C WITH CEDILLA
U+00E8|è|221|LATIN SMALL LETTER E WITH GRAVE
U+00E9|é|107|LATIN SMALL LETTER E WITH ACUTE
U+00EA|ê|28|LATIN SMALL LETTER E WITH CIRCUMFLEX
U+00EB|ë|8411|LATIN SMALL LETTER E WITH DIAERESIS
U+00EE|î|3|LATIN SMALL LETTER I WITH CIRCUMFLEX
U+00F6|ö|12699|LATIN SMALL LETTER O WITH DIAERESIS
U+00FB|û|26|LATIN SMALL LETTER U WITH CIRCUMFLEX
U+00FC|ü|5868|LATIN SMALL LETTER U WITH DIAERESIS
U+0186|Ɔ|58|LATIN CAPITAL LETTER OPEN O
U+0190|Ɛ|70|LATIN CAPITAL LETTER OPEN E
U+0254|ɔ|8144|LATIN SMALL LETTER OPEN O
U+025B|ɛ|11951|LATIN SMALL LETTER OPEN E
U+0269|ɩ|993|LATIN SMALL LETTER IOTA
U+028B|ʋ|1443|LATIN SMALL LETTER V WITH HOOK
U+0304| |1|COMBINING MACRON
U+0308| |3269|COMBINING DIAERESIS
U+03CB|ϋ|1322|GREEK SMALL LETTER UPSILON WITH DIALYTIKA
U+2013|–|1065|EN DASH
U+2018|‘|12285|LEFT SINGLE QUOTATION MARK
U+2019|’|748|RIGHT SINGLE QUOTATION MARK
U+201A|‚|7|SINGLE LOW-9 QUOTATION MARK
U+201C|“|4306|LEFT DOUBLE QUOTATION MARK
U+201D|”|123|RIGHT DOUBLE QUOTATION MARK
U+2022|•|13|BULLET
U+2026|…|7|HORIZONTAL ELLIPSIS
U+2039|‹|142|SINGLE LEFT-POINTING ANGLE QUOTATION MARK
U+203A|›|140|SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
U+FEFF| |58|ZERO WIDTH NO-BREAK SPACE
U+FFF9| |17|INTERLINEAR ANNOTATION ANCHOR

With partial French removal
<!-- make markdown tables https://jakebathman.github.io/Markdown-Table-Generator/ -->

Coed Point| Glyph|Count|Unicode Name
:-----:|:-----:|:-----:|:-----:
U+0009| |241|CHARACTER TABULATION
U+000A| |15482|LINE FEED
U+000C| |110|FORM FEED
U+000D| |897|CARRIAGE RETURN
U+0020| |72851|SPACE
U+0021|!|68|EXCLAMATION MARK
U+0028|(|481|LEFT PARENTHESIS
U+0029|)|482|RIGHT PARENTHESIS
U+002A|\*|20|ASTERISK
U+002B|+|110|PLUS SIGN
U+002C|,|4691|COMMA
U+002D|-|27445|HYPHEN-MINUS
U+002E|.|4044|FULL STOP
U+002F|/|17|SOLIDUS
U+0030|0|867|DIGIT ZERO
U+0031|1|280|DIGIT ONE
U+0032|2|415|DIGIT TWO
U+0033|3|136|DIGIT THREE
U+0034|4|110|DIGIT FOUR
U+0035|5|181|DIGIT FIVE
U+0036|6|81|DIGIT SIX
U+0037|7|160|DIGIT SEVEN
U+0038|8|268|DIGIT EIGHT
U+0039|9|116|DIGIT NINE
U+003A|:|446|COLON
U+003B|;|79|SEMICOLON
U+003E|>|15|GREATER-THAN SIGN
U+003F|?|201|QUESTION MARK
U+0041|A|1002|LATIN CAPITAL LETTER A
U+0042|B|420|LATIN CAPITAL LETTER B
U+0043|C|15|LATIN CAPITAL LETTER C
U+0044|D|746|LATIN CAPITAL LETTER D
U+0045|E|87|LATIN CAPITAL LETTER E
U+0046|F|97|LATIN CAPITAL LETTER F
U+0047|G|448|LATIN CAPITAL LETTER G
U+0048|H|26|LATIN CAPITAL LETTER H
U+0049|I|66|LATIN CAPITAL LETTER I
U+004A|J|9|LATIN CAPITAL LETTER J
U+004B|K|1221|LATIN CAPITAL LETTER K
U+004C|L|82|LATIN CAPITAL LETTER L
U+004D|M|668|LATIN CAPITAL LETTER M
U+004E|N|332|LATIN CAPITAL LETTER N
U+004F|O|50|LATIN CAPITAL LETTER O
U+0050|P|301|LATIN CAPITAL LETTER P
U+0052|R|8|LATIN CAPITAL LETTER R
U+0053|S|478|LATIN CAPITAL LETTER S
U+0054|T|253|LATIN CAPITAL LETTER T
U+0055|U|50|LATIN CAPITAL LETTER U
U+0056|V|79|LATIN CAPITAL LETTER V
U+0057|W|508|LATIN CAPITAL LETTER W
U+0059|Y|976|LATIN CAPITAL LETTER Y
U+005A|Z|385|LATIN CAPITAL LETTER Z
U+005B|[|10|LEFT SQUARE BRACKET
U+005C|&#92;|1|REVERSE SOLIDUS
U+005D|]|10|RIGHT SQUARE BRACKET
U+0061|a|29482|LATIN SMALL LETTER A
U+0062|b|9744|LATIN SMALL LETTER B
U+0063|c|264|LATIN SMALL LETTER C
U+0064|d|11903|LATIN SMALL LETTER D
U+0065|e|5082|LATIN SMALL LETTER E
U+0066|f|407|LATIN SMALL LETTER F
U+0067|g|10214|LATIN SMALL LETTER G
U+0068|h|15194|LATIN SMALL LETTER H
U+0069|i|8202|LATIN SMALL LETTER I
U+006A|j|29|LATIN SMALL LETTER J
U+006B|k|11966|LATIN SMALL LETTER K
U+006C|l|3751|LATIN SMALL LETTER L
U+006D|m|4248|LATIN SMALL LETTER M
U+006E|n|15882|LATIN SMALL LETTER N
U+006F|o|9890|LATIN SMALL LETTER O
U+0070|p|4355|LATIN SMALL LETTER P
U+0071|q|19|LATIN SMALL LETTER Q
U+0072|r|1451|LATIN SMALL LETTER R
U+0073|s|6103|LATIN SMALL LETTER S
U+0074|t|3348|LATIN SMALL LETTER T
U+0075|u|7645|LATIN SMALL LETTER U
U+0076|v|341|LATIN SMALL LETTER V
U+0077|w|8269|LATIN SMALL LETTER W
U+0078|x|22|LATIN SMALL LETTER X
U+0079|y|7384|LATIN SMALL LETTER Y
U+007A|z|1943|LATIN SMALL LETTER Z
U+00A8|¨|1|DIAERESIS
U+00AB|«|204|LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
U+00B0|°|1|DEGREE SIGN
U+00BB|»|198|RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
U+00CB|Ë|46|LATIN CAPITAL LETTER E WITH DIAERESIS
U+00D6|Ö|73|LATIN CAPITAL LETTER O WITH DIAERESIS
U+00DC|Ü|71|LATIN CAPITAL LETTER U WITH DIAERESIS
U+00E8|è|220|LATIN SMALL LETTER E WITH GRAVE
U+00E9|é|64|LATIN SMALL LETTER E WITH ACUTE
U+00EA|ê|7|LATIN SMALL LETTER E WITH CIRCUMFLEX
U+00EB|ë|8384|LATIN SMALL LETTER E WITH DIAERESIS
U+00EE|î|3|LATIN SMALL LETTER I WITH CIRCUMFLEX
U+00F6|ö|12678|LATIN SMALL LETTER O WITH DIAERESIS
U+00FB|û|25|LATIN SMALL LETTER U WITH CIRCUMFLEX
U+00FC|ü|5850|LATIN SMALL LETTER U WITH DIAERESIS
U+0186|Ɔ|58|LATIN CAPITAL LETTER OPEN O
U+0190|Ɛ|70|LATIN CAPITAL LETTER OPEN E
U+0254|ɔ|8121|LATIN SMALL LETTER OPEN O
U+025B|ɛ|11932|LATIN SMALL LETTER OPEN E
U+0269|ɩ|990|LATIN SMALL LETTER IOTA
U+028B|ʋ|2751|LATIN SMALL LETTER V WITH HOOK
U+02BC|ʼ|19971|MODIFIER LETTER APOSTROPHE
U+02D7|˗|3786|MODIFIER LETTER MINUS SIGN
U+02EE|ˮ|7824|MODIFIER LETTER DOUBLE APOSTROPHE
U+0304| |1|COMBINING MACRON
U+0308| |4583|COMBINING DIAERESIS
U+2026|…|7|HORIZONTAL ELLIPSIS
U+A78A|꞊|5444|MODIFIER LETTER SHORT EQUALS SIGN
U+FFF9| |17|INTERLINEAR ANNOTATION ANCHOR


## Provenance and text conditioning
Valentin Vydrin `vydrine[at]gmail[dot]com`  Provided the corpus. Issues of the Eastern Dan local newpaper _-Pamɛbhamɛ_ were provided as a series of `.doc` files. Three translated texts (trnaslated portions of _While waiting for a medical doctor_) were provided as a series of `.txt` files in related folders: moyan-sanni_ko_dhotroo, moyan-waa_won, moyan-yii_to_gu.

One `.doc` file was provided with 22 short (single paragraph length) parallel texts (Eastern Dan - French). And a copy of the New Testament was also provided but is not included in this corpus for copyright reasons.

Hugh Paterson III `sil.linguis[at]gmail[dot]com` converted the files following the steps in the `File types > Converted files` section.

## File types and purpose
### Original Files
`[gG]weta*.doc` these are the original files provided by VV.

`[gG]weta*.pdf`these are PDFs generated my MS Word by Rebecca Paterson from files provided by VV.

`[gG]weta*.txt` these files are generated by Hugh Paterson using `pdftotext`.

`*-sfm.txt` files have a hand coded structure to them that includes making for things like newspaper title, volume, date, tagline, article, heading 1, heading 2, and text of article:

```
\newspaper ˗Pamɛbhamɛ
\volume-eng 001
\volume-or "Nimlʋʋ : 00x---
\date 2005 'Zë Zë -kwɛ
\tagline "su –bha ‘sëëdhɛ -mü "Gwɛɛtaawo
\body
\article 1
\heading 1
\heading 2
\p 1
```

Three folders containing some `.txt` files are held in the `While-waiting-for-a-medical-doctor` directory.

* moyan-sanni_ko_dhotroo
* moyan-waa_won
* moyan-yii_to_gu

The folder `sil-pua` contains [`teckit`](http://scripts.sil.org/TECkit) files for transferring deprecated Unicode points from SIL's PUA area to their accepted and final Unicode point values.

### Converted Files
The following transforms were performed on the original files to extract the text from the originally provided formats, and to clean up character inconsistencies, so that corpus analysis for text input could be optimized. The code presented here is not always exactly what was used. For exact code consult `generate-corpus.bash` which is also fairly well annotated.

All of the following commands can be executed by running the `generate-corpus.bash` script. The final product will be `dan-typing-corpus.txt`.

The issues of _˗Pamɛbhamɛ_ (provided as `[gG]weta*.doc`) were converted to PDFs by opening them in Microsoft Word 16.13.1 (180523) on MacOS 10.13.3. The operating system Print option was invoked, and the "Save as PDF" option was used. The PDFs were transfered to an Ubuntu machine where `pdftotext` was used to extract the text to `.txt` files. The multitude of text files were then concatenated to a single file `mass-text.txt` using the following commands on Ubuntu 16.04 (`$` represents the start of the command line, and the command was executed from the root of this repo):

*   `$ cp $( find ./*Pam*/*weta*/*weta*.pdf ) . &&  for f in *weta*.pdf; do pdftotext $f mass-text_$f.txt; done && rm *.pdf && cat mass-text*.txt >> combined-gweta-text.txt && rm mass-text_*.txt`

Each of the three sets of files in the directory `While-waiting-for-a-medical-doctor` were concatenated together with the following:
 * `$ cp $( find ./While-waiting-for-a-medical-doctor/*moyan-*/*moyan-*.old.txt ) . && cat moyan-sanni*.old.txt >> combined-moyan-sanni_ko_dhotroo.old.txt && cat moyan-yii*.old.txt >> combined-moyan-yii_gu.old.txt && cat moyan-waa*.old.txt >> combined-moyan-waa_won.old.txt && rm moyan-*.old.txt`

These files were then visually inspected in the  text editor [Atom](https://atom.io/) prior to further processing. Upon visual inspection HTML style heading tags `<h>` and `</h>` were noticed.

The combined issues of _˗Pamɛbhamɛ_ and the three files representing _While waiting for a medical doctor_ were then concatenated into the same file for character level processing.
* `$ cat combined-*.txt >> proof-of-concept-text.txt && rm combined-*.txt `

#### Character Maintenance
1.  Teckit was used to make sure that all deprecated PUA Unicode code points moved to current (Unicode 10) code points.

 ```
$ txtconv -i proof-of-concept-text.txt -o proof-no-PUA.txt -t sil-pua/SILPUA.tec -if utf8 -of utf8
```
2. Remove all BOM marks (they were created or concatenated into the middle of the file with the `cat` command).

 ```
 $ cat proof-no-PUA.txt | perl -CS -pe 's/\N{U+FEFF}//g' > proof-no-PUA-no-BOM.txt
```

3. Markup tags were removed from the text with search and replace. `<h>` and `</h>` were replaced with nothing (simple delete). Although `$ sed -e 's/<[^>]*>//g' proof-no-PUA-no-BOM.txt  > proof-no-PUA-no-BOM-no-TAGS.txt` could be used. _Actually_ if  the script is used, the `sed` command is used in the script.

#### Typographical Encoding Errors
In the course of text production several instances of different look-alike characters have been used. This is common for languages that do not have a Keyboard layout that will restrict (or guarantee the consistency) of the characters used to produce texts in that language.

1. Correct equal signs

 Replace normal equal sign 〈=〉 U+003D with letter equal sign 〈꞊〉 U+A78A.

 ```
$ cat proof-no-PUA-no-BOM-no-TAGS.txt | perl -CS -pe 's/\N{U+003D}/\N{U+A78A}/g' > Corrected-equal.txt
```

2. Replace Non-breaking space 〈 〉 U+00A0 'NO-BREAK SPACE' with normal space 〈 〉 U+0020 'SPACE'; target 374 instances.
```
$ cat Corrected-equal-letterU-nbs-comma.txt| perl -CS -pe 's/\N{U+00A0}/\N{U+0020}/g' > Corrected-equal-letterU-nbs-comma-bs.txt
```

3. Corrected bad non-breaking hyphen.  A known issue (as described in this [scriptsource blog post](http://scriptsource.org/entry/xvbp4378bg)) is that MS Word saved the non-breaking hyphen as x1E. This was then interpreted as \00 \1E 〈 〉 U+001E 'INFORMATION SEPARATOR TWO'. So it was supposed to be a non-breaking Hypehn 〈‑〉 U+2011 'NON-BREAKING HYPHEN', but should actually be 〈˗〉 U+02D7 'MODIFIER LETTER MINUS SIGN'.

 ```
$ cat Corrected-equal-letterU.txt| perl -CS -pe 's/\N{U+001E}/\N{U+02D7}/g' > Corrected-equal-letterU-nbs.txt
```

4. Correct sequences of comma-dieresis, via the correct spelling of that word.
 To find the misspelled words:

 ```
$ grep -n -P "\x{2C}\x{0308}" proof-of-concept-text.txt
```
To replace them:
 ```
$ sed -e 's/ʋ,̈/ʋ̈,/g' -i proof-of-concept-text.txt
```

5. Correct case of the mis-use of small letter upsilon

 U+03CB 〈ϋ〉 'GREEK SMALL LETTER UPSILON WITH DIALYTIKA'; target 1322 instances.

 Visual similarities between  U+03CB and U+028B + U+0308 have lead some to use UPSILON WITH DIALYTIKA instead of LATIN LETTER V WITH HOOK + COMBINING DIERESES. This is only attested in the corpus to occur in lower case instances. But it is a problem if one uses a conversion tool to convert lower case to upper case (such as is often in text processing or word processing tools, or via the command line like --(actually this `perl` code doesn't work and Hugh is not sure why. Got a suggestion ?)-- `$ cat some-file-in-Eastern-Dan.txt | perl -CS -pe 's/\p{Ll}/\p{Lu}/g' > display-file-as-uppercase.txt`), because U+03CB is paired with U+03AB 〈Ϋ〉  rather than being paired with U+01B2 + U+0308 〈Ʋ̈〉.

 **Note**: `tr '[:lower:]' '[:upper:]'` doesn't work because [POSIX classes](https://www.regular-expressions.info/posixbrackets.html) do not support characters which are above the ASCII range, [Unicode characteristics](https://www.regular-expressions.info/unicode.html) are needed to do this.<!-- there is a great chart of what explicit characters are in each POSIX class here: https://unix.stackexchange.com/questions/128192/command-to-retrieve-the-list-of-characters-in-a-given-character-class-in-the-cur  -->

 Fix the text with:
 ```
 $ sed -e 's/ϋ/ʋ̈/g' -i proof-of-concept-text.txt
```

6. Fix bad single quote like characters.
 Corrected non-letter apostrophe 〈'〉 U+0027, 〈’〉 U+2019, and 〈‘〉 U+2018 to letter-apostrophe 〈ʼ〉 U+02BC
 To move all of these characters to the letter-apostrophe we use the following:

 ```
$ perl -CS -pe 's/\N{U+0027}/\N{U+02BC}/g'
```
 and
 ```
$ perl -CS -pe 's/\N{U+2019}/\N{U+02BC}/g'
```
and
```
$ perl -CS -pe 's/\N{U+2018}/\N{U+02BC}/g'
```
7. Fix bad double quotes

 Corrected non-letter double quote 〈"〉 U+0022, 〈”〉 U+201D, and 〈“〉 U+201C to 〈ˮ〉 U+02EE MODIFIER LETTER DOUBLE APOSTROPHE.

 Let's move instances of 〈”〉 U+201D to 〈ˮ〉 U+02EE
 ```
$ sed -e 's/”/ˮ/g' -i proof-of-concept-text.txt
```

 Let's move instances of 〈“〉 U+201C to  〈ˮ〉 U+02EE
 ```
$ sed -e 's/“/ˮ/g' -i proof-of-concept-text.txt
```
Let's move instances of 〈"〉 U+0022 to  〈ˮ〉 U+02EE

 ```
$ sed -e 's/"/ˮ/g' -i proof-of-concept-text.txt
```

8. Correct double instances of apostrophe to proper quote marks.

 Let's move double instances of 〈ʼ〉 U+02BC to 〈ˮ〉 U+02EE
 ```
$ sed -e 's/ʼʼ/ˮ/g' -i proof-of-concept-text.txt
```

9. French Quotes

  This seems to fix the typos that are generated by not having access to the correct character via a keyboard. Interestingly there are still 45 instances of 〈<〉 left. Some of these are obviously quote marks. But not all of them. I'm just not sure. Most of them do not have a closing tag.

 ```
 $ sed -e 's/<</«/g' -i proof-of-concept-text.txt
 ```
 ```
 $ sed -e 's/>>/»/g' -i proof-of-concept-text.txt
```

 Fix cases of double single French quotes. This is where two symbols together make the "look a like" to intended out come.
 ```
 $ sed -e 's/‹‹/«/g' -i proof-of-concept-text.txt
```
 ```
 $ sed -e 's/››/»/g' -i proof-of-concept-text.txt
```

10. Correct minus signs
 Underscore 〈\_〉 U+005F , EN Dash 〈–〉 U+2013, and Minus-hyphen 〈-〉 U+002D are used to represent what is supposed to be a 〈˗〉 U+02D7 'MODIFIER LETTER MINUS SIGN'. A simple solution is too greedy. Hyphen-minus between numbers is an appropriate use of this character.

  LOW LINE 〈\_〉U+005F (Underscore) is a simple case with only one instance.

  ```
   $ grep -n -P "_" proof-of-concept-text.txt
   ```

  ```
  $ sed -e 's/_/˗/g' -i proof-of-concept-text.txt
  ```

 Visual inspection via `grep` shows that most dashes 〈–〉 U+2013 'EN DASH', should be 〈˗〉 U+02D7.
```
 $ grep -n -P "–" proof-of-concept-text.txt
 ```
 Seven cases are ambiguous.
 ```
 $ grep -n -P "\s–\s" proof-of-concept-text.txt
```
 In each of these cases, it was decided to move the dash to the right and have it connect with the following word.
 ```
 1105:doseng ta –sü ‘gü, kö – a
 2721:Pë "bin ‘ö ya –a – ga –sê ‘ka kö ziaan ‘ö dho –Pamɛbhamɛ =plöö ‘ü- -zɔn
 3336:Pë "bin ‘ö ya –a – ga, -a –blɛɛsü bha, -a ‘klɔɔ- mɔɔ- kö ‘ü- -ya ü –kɔ “sɔɔ. –A do ‘bha –yö nu
 3958:Pë "bin ‘ö ya –a – ga –sê ‘ka kö ziaan ‘ö dho –Pamɛbhamɛ =plöö ‘ü- -zɔn
 4661:Pë "bin ‘ö ya –a – ga –sê ‘ka kö ziaan ‘ö dho –Pamɛbhamɛ =plöö ‘ü- -zɔn
 5485:Pë "bin ‘ö ya –a – ga –sê ‘ka kö ziaan ‘ö dho –Pamɛbhamɛ =plöö ‘ü- -zɔn
 15696:'Yö 'wo- zü bho sënnë -ta. 'Yö mɛ 'gbɛ -dede 'wo "yɩɩ to "kɛɛ 'yö 'sɔng- (-a bhɔ -yö =gblɛɛn 'ka =ni) 'yii "yɩɩ 'to. Ö bhɔ 'gü =në- -vin doseng. -Aga 'yö 'wo sënnë kun 'wo- zë 'wo- -kpa 'wo- -bhö. "Kɛɛ =dhɛ 'ö -kë =dhɛ -a –nu 'gu 'yii dɔ bha, 'yö 'wo- pö laa -bhö -laa – dhɛ -yö ö -bha bho. -A -bha zü bho -dhɛ bha 'yö -kë "yɩɩ "yɩɩ -sü mɛ =gban 'gü, " kɛɛ 'sɔng- 'yii "yɩɩ 'to 'zü.
```
 Then all the dashes were turned into modifier letter minus character.
 ```
$ sed -e 's/–/˗/g' -i proof-of-concept-text.txt
```

 Minus becomes a bit more complex, because it is correctly used with numbers, and there are misspellings - mostly in that the tone marks are separated from words. However, of the 26 cases of detached minus sign that occur in the corpus, some of them do pattern with the unattached dash, so maybe a real use case for dash can be argued.

 ```
 grep -n -P "\s-\s" proof-of-concept-text.txt | wc -l
```

 ```
grep -n -P "\s[–-]\s" proof-of-concept-text.txt
 ```
 ```
 318:ʼwii kë - a ʼwɔn ma
 1105:doseng ta –sü ʼgü, kö – a
 1188:dhɛ - dedewo ʼyö- nuwɛɛ bho. ꞊Ya ʼgo mü
 1761:ʼwo - -ya ʼkɔɔdhö bha, -a
 2089:-kɔlookota -nu ʼö ʼwo - ya
 2721:Pë ˮbin ʼö ya –a – ga –sê ʼka kö ziaan ʼö dho –Pamɛbhamɛ ꞊plöö ʼü- -zɔn
 3000:pö -nu bha- -nu ʼgü kö - bha, -a -nu -bha. -Wo
 3336:Pë ˮbin ʼö ya –a – ga, -a –blɛɛsü bha, -a ʼklɔɔ- mɔɔ- kö ʼü- -ya ü –kɔ ˮsɔɔ. –A do ʼbha –yö nu
 3858:ˮMaa -dhɛ, ꞊Wegine - -dhöökpö -zuö -sü -nu
 3860:-Dukwitaa - ʼka, -a ʼdhö, ꞊naɔ yö -kɔ
 3862:-dhɛ, - -nu, ʼwɔn -nu ʼö ʼwo kë sië
 3958:Pë ˮbin ʼö ya –a – ga –sê ʼka kö ziaan ʼö dho –Pamɛbhamɛ ꞊plöö ʼü- -zɔn
 4520:ʼwo - pö ꞊dhɛ ˮsɛ ˮgla -sü
 4661:Pë ˮbin ʼö ya –a – ga –sê ʼka kö ziaan ʼö dho –Pamɛbhamɛ ꞊plöö ʼü- -zɔn
 5485:Pë ˮbin ʼö ya –a – ga –sê ʼka kö ziaan ʼö dho –Pamɛbhamɛ ꞊plöö ʼü- -zɔn
 6100:Pë ˮbin ʼö ya -a - ga -sê ʼka ; -a do –zë ʼka -dhɛ ˮsaaga –ya –bha. -A -nu mɔɔ
 6608:Pë ˮbin ʼö ya -a - ga -sê ʼka .-A do -zë ʼka -dhɛ ˮsaaga -ya -bha. -A -nu mɔɔ-
 7089:Pë ˮbin ʼö ya -a - ga -së ʼka .-A do –zë ʼka -dhɛ-ya –bha saaga. –A –nu mɔɔ-
 7521:Pë ˮbin ʼö ya -a - ga -sê ʼka -A do –zë ʼka –dhɛ -yö ˮsaga. –A –nu
 8255:Pë ˮbin ʼö ya -a - ga -së ʼka , -a do -zë ʼka -dhɛ -yö ˮsaɔdo. -A -nu mɔɔ-
 9027:Pë ˮbin ʼö ya -a - ga -së ʼka , -a do -zë ʼka -dhɛ -yö ˮsaɔdo. -A -nu mɔɔ-
 12006:kwa zuëˮ ʼdhö dɔ- - ˮta ʼkpɔ.
 12517:ʼdhö, ʼyö dho Gana - ʼyaa kë ˮdhinaa ʼka. ʼMɛ
 12522:-A -gɛn - tongtongdhö. -Ya -kun
 12523:blɛɛsü -mü ꞊dhɛ, Gana - ö -bha ʼö dho ʼö
 12524:sɛ bha ꞊në ʼö -kë mɛtii - ʼyaannu.
 12531:depanngdanngsü bha, - -ya -wɔn -bha -së -dede
 13824:ˮSu : - Zroo -Kwɛ : 2009
 14307:ˮSu : - Zroo -Kwɛ : 2009
 14888:ʼNë ʼgbɛ -dhɛ -wo mü ʼö ˮgblü ziö -ya yö -a –nu -bha ʼö - -nu -gɔ ʼö to- ʼgü. -A -gɛn -mü ꞊dhɛ ˮyi ꞊ya ʼgo -a -nu kwi ʼgü. ˮYi -bha -go mɛ ʼgü -sü bha, -a ʼgbɛ -dhɛ -yö -sü ˮgblü ziö ˮgbɩgbɩ -nu në- -a -nu -bha. -Ziaanwo kö -pë -yö -da –a ʼgü, kö -a -ta -kpɛɛ ꞊ya dɔ do. ˮYi yö -mɔɔ -a -bha ʼö go mɛ ˮgblʋ̈gblʋ̈ -nu kwa kwi ʼgü, ˮkɛɛ ʼnë -nu ꞊në -a -nu -bha ʼdhö ˮgbɩɩ-. ˮYua bha, -ya -nu -zë ˮvaandhö ˮvaandhö. ꞊Ya kë ˮdhʋ̈, kö -yö -së kö ʼmɛ ʼö ˮyi ʼö ʼgo sië -a kwi ʼgü, ʼkwa -a -kɔ dɔ. Kwa -dho -a -kɔ dɔ- ʼmü ꞊dhɛ ?
 14928:• -Ka gwɛ bhɛ ʼö go ö -dhü ʼgü -dee ʼgü bha, -a ʼsü. -Kaa ˮkɛɛ bho- -	bha, kö ʼka- -da ˮyi ʼö ˮsukadhu ʼdhö- -bha, -a ꞊bhaa. ꞊Ya ʼma- -bha ꞊së ʼka, kö ʼka- mü.
 14988:꞊Dhɛ ʼö- -nu ꞊gban ʼwo wo bo pë -bhö -sü ʼka ꞊dhɛ -kɔ bha- ʼdhö, ʼyö ʼwo dho ˮtan bha- ʼka ʼwo ꞊loo- ʼka ʼpö- bha- ʼgü. -A pö -sü nü ʼö ꞊Geetiinë, kö dhebë bha -waa nu- -nu -dhɛ, ꞊wa nu- ʼka -gblüdë Laabhölaa -dhɛ. ʼWɔn bha- ˮdhia -ma -gblüdë ʼgü -sü bha- -wɔn ʼgü, ʼyö ꞊gbauu ga ʼö -kë ꞊ni -a -da zöng -bha wü ˮpɛpɛ ꞊gban wëëdhö, -a -zo bhɔ ʼö ʼyii kë wo ʼtɔ ʼö bha ʼka ʼö- wo ʼyi bha- ʼka bha, -a -wɔn ʼgü. ˮTʋ̈ng bha- ʼgü, kö ꞊gbauu bha, - a ˮdhiʋ̈ -zian -yö ˮpuu, kö- ꞊taama -dhɛ -yö -tii. Kweɩˮ ʼdhu sɔ -mü ʼö ʼpödö -nu ʼwo- -da ˮwlaan- yi -nu ʼwo -kë : dhe ʼsü -sü -nu, ʼgbaannë troo -nu nu... ʼka, -a -nu -ta. Sɔ suu ʼö ˮdhʋ̈ bha -yö -tun ꞊kö ꞊dɛɛ ꞊Yaoba -nu kwaa- ˮsɛ ʼgü. A suu -yö ʼgbɛ. ʼWɔndɔmɛ -nu nü ʼö ʼwo gun -a -da sië ꞊dhɛ -kɔ ʼö ʼkwa- yö sië- ʼka zöng -gɔ ya- ʼdhö.
 15696:ʼYö ʼwo- zü bho sënnë -ta. ʼYö mɛ ʼgbɛ -dede ʼwo ˮyɩɩ to ˮkɛɛ ʼyö ʼsɔng- (-a bhɔ -yö ꞊gblɛɛn ʼka ꞊ni) ʼyii ˮyɩɩ ʼto. Ö bhɔ ʼgü ꞊në- -vin doseng. -Aga ʼyö ʼwo sënnë kun ʼwo- zë ʼwo- -kpa ʼwo- -bhö. ˮKɛɛ ꞊dhɛ ʼö -kë ꞊dhɛ -a –nu ʼgu ʼyii dɔ bha, ʼyö ʼwo- pö laa -bhö -laa – dhɛ -yö ö -bha bho. -A -bha zü bho -dhɛ bha ʼyö -kë ˮyɩɩ ˮyɩɩ -sü mɛ ꞊gban ʼgü, ˮ kɛɛ ʼsɔng- ʼyii ˮyɩɩ ʼto ʼzü.
 ```
 Since we already got rid of the spaces on the dash in these overlapping cases we will do the same in those cases with minus-hyphen. However, other cases obviously need to go in other directions (attach left, rather than right). So, we are going to try and attach these.

 Minus is used with numbers.

  ```
$ grep -n -P "\d-" proof-of-concept-text.txt
```
 ```
 515:ʼSëëdhɛ "pɛpɛ -nu ʼö ʼwo bha -ka -dho -kpan -a -nu -bha -blɛɛsü ʼgü, "Biya, ʼSilö. A "nimlʋʋ -mü 22-43-12-72 ʼka.
1234:ʼwo bha -ka -dho -kpan -a -nu -bha -blɛɛsü ʼgü, "Biya, ʼSilö. -A "nimlʋʋ -mü 22-
5483:07-17-19-38
5493:‘Ka dho –kpan –a ˮdhɔɔ -bha –bha ‘mɛ ‘ö- ˮpiʋ̈ ˮMaadhö, -wa –dhɛ ˮZɛ Emaniɛɛ. –A –bha tiootioo ˮnimlɔɔ ꞊nɛ: 07-17-19-38
6616:ˮnimlɔɔ ꞊nɛ: 07-17-19-38
9593:ˮsɔɔdhu -bha (11-15),
12433:ʼö yö- ʼka -a -kaɔng do (1-
13851:-kaɔng do (1-10) -bha
16271:ʼSëëdhɛ "pɛpɛ -nu ʼö ʼwo bha -ka -dho -kpan -a -nu -bha -blɛɛsü ʼgü, "Biya, ʼSilö. A "nimlʋʋ -mü 22-43-12-72 ʼka.
16990:ʼwo bha -ka -dho -kpan -a -nu -bha -blɛɛsü ʼgü, "Biya, ʼSilö. -A "nimlʋʋ -mü 22-
21239:07-17-19-38
21249:‘Ka dho –kpan –a ˮdhɔɔ -bha –bha ‘mɛ ‘ö- ˮpiʋ̈ ˮMaadhö, -wa –dhɛ ˮZɛ Emaniɛɛ. –A –bha tiootioo ˮnimlɔɔ ꞊nɛ: 07-17-19-38
22372:ˮnimlɔɔ ꞊nɛ: 07-17-19-38
25349:ˮsɔɔdhu -bha (11-15),
28189:ʼö yö- ʼka -a -kaɔng do (1-
29607:-kaɔng do (1-10) -bha
```

 This search shows us that there are several instances of minus used with numbers. If these should be dashes, or minus I am not completely sure. I guess the relevant question for keyboard layout design, _is should a Dan Keyboard require either a 109 key keyboard (i.e with a keypad) or the use of a function key in lieu of a directly accessible minus sign?_

 We can target all minus signs that are not followed by a digit and are (not-not) preceded by a space. This should give us all word initial minus signs.

  ```
  grep -n -P "[^\d\S]-" proof-of-concept-text.txt
```

 ```
$ sed -e 's/[^\d\S]-/˗/g' -i proof-of-concept-text.txt
```

 ```
grep -n -P "\s-\s\D[^ʼ]" proof-of-concept-text.txt
```

11. Remove U+2022 〈•〉 BULLET

 There are only 13 instances. It is unlikely that this character is best accessed through a keyboard. So we will drop it from the corpus.

 ```
 $ sed -e 's/•//g' -i proof-of-concept-text.txt
 ```

12. Corrected bad commas 〈,〉

 There were several 'SINGLE LOW-9 QUOTATION MARK' 〈‚〉 U+201A these were moved to regular comma 〈,〉 U+002C 'COMMA'.

 ```
$ cat Corrected-equal-letterU.txt| perl -CS -pe 's/\N{U+201A}/\N{U+002C}/g' > Corrected-equal-letterU-nbs-comma.txt
```
13. Space padded full stop 〈.〉

 It is the case the 25 instances of U+002E 〈.〉 FULL STOP have a space on both sides. This is fixed so that the full stop does not have a space between it and the preceding word.
  ```
  $ grep -n -P -- "\s[.](?=\s)" proof-of-concept-text.txt | wc -l
  ```
  ```
  $ perl -CS -pe 's/\s[.](?=\s)/\s\N{U+002E}/g'
  ```

  14. Space padded Comma 〈,〉

 It is the case the 56 instances of U+002C 〈,〉 COMMA have a space on both sides. This is fixed so that the comma does not have a space between it and the preceding word.
  ```
$ grep -n -P -- "\s[,](?=\s)" proof-of-concept-text.txt | wc -l
```
 ```
$ perl -CS -pe 's/\s[,](?=\s)/\s\N{U+002C}/g'
```
**Still not completed:**
13. Replace U+FFF9 with 'LATIN SMALL LETTER U WITH GRAVE' (U+00F9) target 34

 ```
cat Corrected-equal.txt | perl -CS -pe 's/\N{U+FFF9}/\N{U+00F9}/g' > Corrected-equal-letterU.txt
```

14. Remove French words.

15. Figure out what to do with the following:
 ```< & > Should they go to the smaller French quotes?
U+FFF9		17	INTERLINEAR ANNOTATION ANCHOR
U+0304		1	COMBINING MACRON
U+2013	–	1064	EN DASH
U+00E7	ç	21	LATIN SMALL LETTER C WITH CEDILLA
U+00E8	è	221	LATIN SMALL LETTER E WITH GRAVE
U+00E9	é	107	LATIN SMALL LETTER E WITH ACUTE
U+00EA	ê	28	LATIN SMALL LETTER E WITH CIRCUMFLEX
U+00EE	î	3	LATIN SMALL LETTER I WITH CIRCUMFLEX
U+00FB	û	26	LATIN SMALL LETTER U WITH CIRCUMFLEX
U+00A8	¨	1	DIAERESIS
 U+0009	 	482
 U+000A	 	30690
 U+000C	 	220
 U+000D	 	1340
 U+0020	 	124711
```
## Bibliography

<!-- <b id="f1">1</b> Footnote content here. [↩](#a1)
<b id="f2">2</b> Footnote content here. [↩](#a2) -->

<b id="f3">3 </b>Simons, Gary. F., & Charles D. Fennig (Eds.) 2017. Ethnologue: Languages of the World, 20th edition. Dallas, TX: SIL International. Online: https://www.ethnologue.com/language/dnj [↩](#a3)

<b id="f4">4 </b>Roberts, David  & Valentin Vydrin. Forthcoming. Chapter 10: Eastern Dan. In: Tone orthography and reading fluency: the voice of evidence in ten Niger-Congo languages. [↩](#a4)

<b id="f5">5 </b>Valentin Vydrin. 2012. ISO 639-3 Change Request 2012-083. Online: https://iso639-3.sil.org/request/2012-083.  [↩](#a5)

<b id="f6">6 </b>Phillips, A. & M. Davis (Eds.) 2009. Tags for Identifying Languages.  Internet Engineering Task Force (IETF). Online: https://tools.ietf.org/html/bcp47. [↩](#a6)

<b id="f7">7 </b>Scannell, Kevin  (Ed.) 2009. An Crúbadán - Dan. Saint Louis University, Saint Louis, USA . Online: http://crubadan.org/languages/dnj. [↩](#a7)

<b id="f8">8 </b>Roberts, David  & Valentin Vydrin. Forthcoming. Chapter 10: Eastern Dan. In: Tone orthography and reading fluency: the voice of evidence in ten Niger-Congo languages. [↩](#a8)

<b id="f9">9 </b>Roberts, David  & Valentin Vydrin. Forthcoming. Chapter 10: Eastern Dan. In: Tone orthography and reading fluency: the voice of evidence in ten Niger-Congo languages. [↩](#a9)

<b id="f10">10 </b>Baba, Tiémoko Sébastien .1978. Yaobhaa -wo bhe pe -se -ya ʼgu (Receuil de contes yacouba, ʼGwetaa -wo). Société Internationale de Linguistique: Abidjan, Ivory Coast. https://www.sil.org/resources/archives/34532. [↩](#a10)

<b id="f11">11 </b>Roberts, David  & Valentin Vydrin. Forthcoming. Chapter 10: Eastern Dan. In: Tone orthography and reading fluency: the voice of evidence in ten Niger-Congo languages. [↩](#a11)

<b id="f12">12 </b>Bolli, Margrit & Eva Flik. 1982. Guide d’orthographe pour la langue dan (dialecte gwɛtaawo). Société Internationale de Linguistique,: Abidjan, Ivory Coast.  https://www.sil.org/resources/archives/34713. [↩](#a12)

<b id="f13">13 </b>Bolli, Margrit & Eva Flik. 1994. Cours-eclair de lecture pour des lecteurs d français apprenant à lire le Dan (Gwɛɛtaawʋ). Société Internationale de Linguistique: Abidjan, Ivory Coast https://www.sil.org/resources/archives/34670. [↩](#a13)

<b id="f14">14 </b>Bolli, Margrit & Eva Flik. 2000. Rutö. Société Internationale de Linguistique: Abidjan, Ivory Coast https://www.sil.org/resources/archives/34670. [↩](#a14)

<b id="f15">15 </b>Bolli, Margrit & Eva Flik. 2000. Zonasö. Société Internationale de Linguistique: Abidjan, Ivory Coast https://www.sil.org/resources/archives/34670. [↩](#a15)

<b id="f16">16 </b>Roberts, David, Dana Basnight-Brown & Valentin Vydrin. Marking tone with punctuation: and orthography experiment in Eastern Dan (Côte d’Ivoire). [↩](#a16)

<b id="f17">17 </b>Roberts, David  & Valentin Vydrin. Forthcoming. Chapter 10: Eastern Dan. In: Tone orthography and reading fluency: the voice of evidence in ten Niger-Congo languages. [↩](#a17)

<b id="f18">18 </b>Vydrin,Valentin & David Roberts. Forthcoming. Tonal oral reading errors in the orthography of Eastern Dan (Côte d’Ivoire). In: Tone orthography and reading fluency: the voice of evidence in ten Niger-Congo languages. [↩](#a18)

<b id="f19">19 </b>Bolli, Margrit & Eva Flik. 1994. Cours-eclair de lecture pour des lecteurs d français apprenant à lire le Dan (Gwɛɛtaawʋ). Société Internationale de Linguistique: Abidjan, Ivory Coast https://www.sil.org/resources/archives/34670.  [↩](#a19)

<b id="f20">20 </b>Bolli, Margrit & Eva Flik. 1982. Guide d’orthographe pour la langue dan (dialecte gwɛtaawo). Société Internationale de Linguistique,: Abidjan, Ivory Coast.  https://www.sil.org/resources/archives/34713.  [↩](#a20)

<b id="f21">21 </b>Moran, Steven & Robert Forkel. 2017 (November 16). cldf/segments: segments 1.2.1 (Version v1.2.1). Zenodo. http://doi.org/10.5281/zenodo.1051157 . [↩](#a21)

<b id="f22">22 </b>SIL NRSI Glossary for Orthography, font and writing system terms . [↩](#a22)

<b id="f23">23 </b>RFC 3986 http://www.ietf.org/rfc/rfc3986.txt. [↩](#a23)

<b id="f24">24 </b>Wikipedia - Numero Sign: Use in French. https://en.wikipedia.org/w/index.php?title=Numero_sign&oldid=842034015#French. [↩](#a24)

<b id="f25">25 </b>RFC 3986 http://www.ietf.org/rfc/rfc3986.txt. [↩](#a25)

<b id="f26">26 </b>W3C. 2017. HTML5. Recommendation. https://www.w3.org/TR/html5/ .[↩](#a26)

<b id="f27">27 </b>Github Engineering. 2017. GitHub Flavored Markdown Spec https://github.github.com/gfm/. [↩](#a27)

<b id="f28">28 </b>Bolli, Margrit & Eva Flik. 1982. Guide d’orthographe pour la langue dan (dialecte gwɛtaawo). Société Internationale de Linguistique,: Abidjan, Ivory Coast.  https://www.sil.org/resources/archives/34713.  [↩](#a28)

<b id="f29">29 </b>Bolli, Margrit & Eva Flik. 1994. Cours-eclair de lecture pour des lecteurs d français apprenant à lire le Dan (Gwɛɛtaawʋ). Société Internationale de Linguistique: Abidjan, Ivory Coast https://www.sil.org/resources/archives/34670.  [↩](#a29)

<b id="f30">30 </b>Holm, Wayne. 1971. Navajo Reading Study: Grapheme and unit frequencies in Navajo. Reading Studies progress report № 12. University of New Mexico. https://eric.ed.gov/?id=ED059806. [↩](#a30)

<b id="f31">31 </b>Venezky, Richard. 1970. The structure of English Orthography. (Janua linguarum., Series minor 82). Mouton: The Hague. http://www.worldcat.org/oclc/840415997 [↩](#a30)

<b id="f32">32 </b>Venezky, Richard. 1967. English Orthography: It's graphical structure and its Relation to sound. Reading Research Quarterly.  2 (3): 75-105. [↩](#a30)


<!--

```
Some text <sup id="a1">[1](#f1)</sup>

```

Then from within the footnote, link back to it.

```
<b id="f1">1</b> Footnote content here. [↩](#a1)
```
-->

## Intellectual property ownership and licenses
### Text (corpus) content
Copyright claims are un-clear.
If authors of content were employed by SIL, SIL International would be the copyright owner. (This is only relevant because the works themselves do not have copyright claims or licenses attached, but do reference SIL's address.) Otherwise copyright belongs to the authors, or their employer. It does not readily seem that the authors are attributed in the corpus, but they might be in the orthography.

Only copyright owners can license materials. Therefore this content bears no license, as Hugh makes no content claims on the content of the corpus, and did not receive content under license. Use under the _fair use_ doctrine is assumed.

### Hugh Paterson's Contribution
The `README.md` which is Hugh Paterson III's contribution is copyright Hugh Paterson III 2018, and licensed under the [Creative Commons Attribution 4.0 License](https://creativecommons.org/licenses/by/4.0/).

The `generate-corpus.bash` script is also Hugh's contribution and is licensed under the MIT version [provided](paterson-license.md).

### SIL International's Contribution
Other content such as the content contained under the folder `/SILPUA` is licensed as originally offered (MIT).
