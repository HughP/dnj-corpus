# dnj-corpus
A small corpus of a local newspaper

## Language Description

Language ISO639-3: dnj

Language Name: Eastern Dan

Script: Can be written in Arabic or  Latin script.

Script Note: There may be several orthgraphies from different dialects which would all qualify as BCP47: dnj-Latn.

### Latin Orthography History

**Note**: It might be the case that there are multiple writing systems for the same languages, simultaneously. That is separate groups (socio-logical, or dialectical, or both) , are writing the same "language" in different ways at the same time. Not being a French speaker, the finer details of the evidence are not clear at the moment.

Version | Date | Evolutionary steps | Mentor/Artist | Reference
-------------|----|----|-------------|-------------
  Version 0.1|  pre-1975 | ?? | Margrit Bolli / Eva Flik | 1975. Yaobhaa -wo bhe pe -se -ya ʼgu. Société Internationale de Linguistique: Abidjan, Ivory Coast. https://www.sil.org/resources/archives/34532
Version 1 | 1981| ?? | Margrit Bolli / Eva Flik | Bolli, Margrit. 1981. Guide d’orthographe pour la langue dan (dialecte blo -wo). Société Internationale de Linguistique: Abidjan, Ivory Coast. (27 page booklet):  https://www.sil.org/resources/archives/34704
Version 2 | 1982-1990 | ?? | Margrit Bolli / Eva Flik | https://www.sil.org/resources/archives/34713
Version 2.6  | 1994  |  The start of using double U+0022 at the end of words appears in a course book for learning to read. |   |  1994. Cours-Eclair Dan Gweetawu (Yacouba)
Version 2.7| 2000 | Biblical text preprints (for community circulation) use U+2013 instead of U+002D to indicate tone. (Forever muddling which character is correct in all future writing.) | Margrit Bolli / Eva Flik |See Ruth and Jonah Published in 2000.  
Version 3 | (2005??)-2014 | These texts contain U+201C,U+201D, and U+0022 as tone markers before and after words. (It might have been the idea that only  U+0027 would be used twice and that human input habits chose to input U+0022 as a quicker step, and then word processing software auto-corrected some of these to U+201C, and U+201D) | Margrit Bolli/Valentin Vydrin |
Version 4 | 2014-2017+ | There are significant changes to vowel and tone markers. In general away from digraphs towards single graphemes, and away from pre and post stem tone indication towards diacritic indication of tone.| Valentin Vydrin | p.c.

## Corpus Description
### Writing system

* BCP47: dnj-Latn
* Orthography version: 3

_Notes_: In this writing system tone is shown in part through characters with the Unicode attributes for punctuation. Various characters before or after the stem (word) indicate the pitch melody of the word. These characters are not used in expected ways according to their Unicode attributes, as a result many applications do not properly type set or interact with the "words" in expected ways. One notable result is that the use of space around proper punctuation marks is not always as one would expect for an orthography written in a Latin script.

#### Linguistic orthography description for orthography version 2.6

A short prose discussion is followed by a chart. Charts are followed by list presented in crucial ordering for tokenization.

##### Casing rules

Casing rules appear to follow general French casing norms, with two noted exceptions.

1. The first word of a sentence is capitalized.
2. Proper nouns are capitalized.
3.  Unlike French where, when an article is the first word of a sentence both the first word and the second word are capitalized, in Eastern Dan only the first word is capitalized.
4. Surnames are not capitalized as is the custom in French literature.
5. Uppercase can be used as a style choice in titles of creative works, much as is the case in many languages.
6. Tone marks preceding words (stems [a-zA-Z]) do not get capitalized, but the characters following the tone marks [a-zA-Z] do get capitalized.

##### Unicode PUA reliance

Some texts have relied on Unicode PUA code points (U+E000..U+F8FF). All Dan texts, should be checked for PUA characters. Known used characters have been:
*


##### Punctuation

Codepoint   | Grapheme | Usage
-------------|-----|----
U+00B0   | ° | unknown
U+005F      | _ | unknown
U+005B      | [  |unknown
U+005D      | ] |unknown
U+2026      | … |unknown
U+201A      | ‚ |unknown
U+002F      | /  |unknown
U+00BB      | »  |opens a direct speech statement
U+00AB      | «   |closes a direct speech statement  
 U+0021      | !   |closes an exclamation, interjection or emphatic statement
 U+003B      | ;  |unknown
 U+2039      | ‹  |closes a quote inside of a direct speech statement
 U+203A      | ›  |opens a quote inside of a direct speech statement
 U+003C      | <  |unknown
 U+003E      | >  |unknown
 U+003F      | ?  |closes a question statement
U+002E      | .  | unknown
U+002C      | ,  | unknown
U+0029      | )  | unknown
U+0028      | (   | unknown
 U+003A      | :  |unknown
 U+002B      | + | precedes a telephone number to indicate country code
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

#### Number Characters
When writing Eastern Dan with the Latin script the following numbers are used.

Number oriented notes:

* Thousands separator is U+002E 〈.〉.
* Shortened form of the word "number". Unicode has a special character for this U+2116 〈№〉. Typographical norm in Dan appear to follows French social practice, rather than best practice for encoding. This was evidenced only one time in the corpus and is the source of the degree symbol U+00B0 〈°〉 , and likely deserves further investigation before strong claims are made about what method should be used in Eastern Dan writing. Wikipedia suggests that "the numero symbol is not in common use in France and does not appear on a standard AZERTY keyboard. Instead, the French Imprimerie nationale recommends the use of the form "no" (an "n" followed by a superscript lowercase 〈o〉). The plural form "nos" can also be used. In practice, the 〈o〉 is often replaced by the degree symbol 〈°〉, which is visually similar to the superscript 〈o〉 and is easily accessible on an AZERTY keyboard."

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

#### Reasonable characters needed for Internet use
According to RFC 3986: http://www.ietf.org/rfc/rfc3986.txt the following characters are needed for reasonable Internet use in the URL and URI syntax. In the Internet domain these characters can sometimes have a reserved meaning. Therefore they should be given appropriate consideration in all orthographies. So while their typographical function may or may not be present in the everyday writing of Eastern Dan, as Eastern Dan speakers become more digitally active with their language, these characters will increase in their usage by Eastern Dan language users.

This does not preclude any language based denotation that the orthography may make on these characters. For instance there is a long typographical history in Eastern Dan of using U+003D  〈=〉 as a tone marking character. It is even the case that the original text of this corpus was encoded with this character, no doubt for practical reasons of keyboard accessibility. However the more appropriate character is U+A78A 'modifier letter short equals sign'. Typographically these characters are the same, however their Unicode properties are different. U+A78A can not be substituted for Internet use and U+003D will not properly join with other text to form words in text processing software. Just because the internet does not use the same quote marks that French and Eastern Dan do does not mean that these languages need to change, only that accessing these characters and their social contribution is a needed consideration in orthography statements and development.

Unmentioned in RFC3986 is the use of double quote marks which is highly important in various mark-ups like HTML5.

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
U+003D | =
U+003F | ?
U+0040 | @
U+005B | [
U+005D | ]
U+005F | _
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
```
##### Vowels

Eastern Dan is claimed to have a 10 vowel system with length, pitch, and nasalization distinctions. Pitch patterns are covered under the tone marking section. Nasalization is indicated by an 〈n〉 following the vowel. Vowel length has been linguistically analyzed as two separate vowels and is indicated by sequential characters i.e. 〈aa〉. Some vowels are indicated by a digraph 〈ɛa, aɔ〉. These are not diphthongs (vowels that start at one phonetic value and finish at another value). Dieresis above vowels indicate a separate vowel quality. Vowels with dieresis are thought as a single character or letter of the alphabet. Dieresis is not a separable unit. The eng, orthographically indicated as 〈ng〉, is linguistically considered a vowel in Eastern Dan. This is in contrast to the typologically normal analysis as a consonant. Casing: for words starting with long/double vowels, only the first letter is case sensitive for sentence based casing rules. In this presentation of vowels, many vowels are presented, however,

Codepoint | Grapheme | IPA equivalent | Phonetic description
-------------|-----|----|----
Uppercase, lowercase |, |  |
U+0067, U+006E U+0067 | Ng, ng | ŋ | Velar Nasal
U+0061 U+006E, U+0061 U+0061 U+006E| Aan,aan | | 
U+0061, U+0061 U+0061| Aa,aa | | 
U+0061, U+025B U+0061| _a,ɛa | | 
	,U+025B | ,ɛ | | 
	,U+00EB | ,ë | | 
	,U+00F6 | ,ö | | 
	,U+00FC | ,ü | | 
	,U+0065 | ,e | | 
	,U+0069 | ,i | | 
	,U+0061 U+0254 | ,aɔ | | 
	,U+0254 | ,ɔ | | 
	,U+0061 | ,a | | 
	,U+006F | ,o | | 
	,U+0075 | ,u | | 

```
ng
ɛa
ɛ
ë
ö
ü
e
i
aɔ
ɔ
a
o
u
```
##### Consonants

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
z
l
w
r
y
```
##### Tone marking

###### Pre-Stem
```
'
=
-
```
###### Post-Stem
```
-
'-
'
```
### Content

This is about 20 issues of a 4 page monthly newsletter/newspaper published between 2005 and 2008.

#### Metrics
First round were off a bit because 4 issues of the local news paper did not get added to the file `mass-text.txt`
Linux Command Line:
`wc -l -w -m`

Round |Lines  | Words  |  Characters
--|--|---|--
First |  11686 | 46192  |  221389
Second  | 14491 |  55986 | 269437

UnicodeCharacterCount Stats:
Presented in frequency order.

  Codepoint     | Grapheme   |   Count  Round 1 |
-------------|----|-------|
 U+00B0   | °  | 1     
 U+005F      | _  | 1     
 U+005B      | [  | 3     
 U+002C+0308 | ,̈ | 3     
 U+005D      | ]  | 3     
 U+00EE      | î  | 3     
 U+2026      | …  | 5     
 U+0308      | ̈  | 5     
 U+201A      | ‚  | 5     
 U+0052      | R  | 7     
 U+004A      | J  | 9     
 U+FFF9      | ￹  | 10    
 U+0043      | C  | 12    
 U+002F      | /  | 13    
 U+00BB      | »  | 16    
 U+00E7      | ç  | 17    
 U+00AB      | «  | 18    
 U+0048      | H  | 22    
 U+00FB      | û  | 22    
 U+00EA      | ê  | 24    
 U+0021      | !  | 25    
 U+0055      | U  | 25    
 U+00D6      | Ö  | 26    
 U+00DC      | Ü  | 29    
 U+003B      | ;  | 29    
 U+2039      | ‹  | 30    
 U+203A      | ›  | 30    
 U+0046      | F  | 35    
 U+004F      | O  | 36    
 U+00CB      | Ë  | 37    
 U+0186      | Ɔ  | 45    
 U+0049      | I  | 48    
 U+0190      | Ɛ  | 52    
 U+006A      | j  | 58    
 U+201D      | ”  | 59    
 U+0036      | 6  | 63    
 U+0078      | x  | 69    
 U+003C      | <  | 72    
 U+003E      | >  | 72    
 U+0034      | 4  | 80    
 U+0071      | q  | 83    
 U+0045      | E  | 84    
 U+003F      | ?  | 85    
 U+00E9      | é  | 85    
 U+002B      | +  | 86    
 U+000C      |    | 88    
 U+0056      | V  | 92    
 U+0033      | 3  | 93    
 U+0039      | 9  | 96    
 U+004C      | L  | 106   
 U+0037      | 7  | 119   
 U+0035      | 5  | 147   
 U+0054      | T  | 153   
 U+00E8      | è  | 178   
 U+0009      |    | 194   
 U+0038      | 8  | 198   
 U+0050      | P  | 201   
 U+0031      | 1  | 208   
 U+003A      | :  | 230   
 U+005A      | Z  | 236   
 U+0047      | G  | 247   
 U+004E      | N  | 248   
 U+028B+0308 | ʋ̈  | 260  
 U+0042      | B  | 260   
 U+0066      | f  | 272   
 U+0076      | v  | 302   
 U+0029      | )  | 308   
 U+0028      | (  | 309   
 U+0053      | S  | 311   
 U+0057      | W  | 311   
 U+0032      | 2  | 323   
 U+0063      | c  | 350   
 U+004D      | M  | 397   
 U+0044      | D  | 432   
 U+0059      | Y  | 448   
 U+0269      | ɩ  | 517   
 U+028B      | ʋ  | 584   
 U+0041      | A  | 590   
 U+2019      | ’  | 642   
 U+0030      | 0  | 689   
 U+03CB      | ϋ  | 697   
 U+004B      | K  | 807   
 U+2013      | –  | 985   
 U+007A      | z  | 992   
 U+0072      | r  | 1328  
 U+0022      | "  | 1576  
 U+002E      | .  | 2128  
 U+002C      | ,  | 2212  
 U+0074      | t  | 2249  
 U+0070      | p  | 2294  
 U+0027      | '  | 2363  
 U+006C      | l  | 2387  
 U+201C      | “  | 2449  
 U+006D      | m  | 2458  
 U+003D      | =  | 2659  
 U+0065      | e  | 3136  
 U+00FC      | ü  | 3299  
 U+0079      | y  | 3564  
 U+0073      | s  | 3972  
 U+0254      | ɔ  | 4259  
 U+0075      | u  | 4260  
 U+0069      | i  | 4773  
 U+00EB      | ë  | 4799  
 U+0062      | b  | 4805  
 U+0077      | w  | 4958  
 U+006F      | o  | 5156  
 U+0067      | g  | 5460  
 U+0064      | d  | 6289  
 U+006B      | k  | 6592  
 U+025B      | ɛ  | 6619  
 U+00F6      | ö  | 6762  
 U+2018      | ‘  | 7305  
 U+0068      | h  | 7528  
 U+006E      | n  | 8866  
 U+000A      |    | 11686
 U+002D      | -  | 15242
 U+0061      | a  | 15986
 U+0020      |    | 36545
 
 Round 2 
 	U+005F	_	1
	U+00A8	¨	1
	U+00B0	°	1
	U+005D	]	3
	U+00EE	î	3
	U+005B	[	3
	U+2026	…	6
	U+201A	‚	7
	U+0052	R	8
	U+004A	J	9
	U+FFF9	￹	14
	U+0043	C	15
	U+002F	/	17
	U+00E7	ç	21
	U+00BB	»	21
	U+00AB	«	23
	U+00FB	û	26
	U+0048	H	26
	U+00EA	ê	28
	U+2039	‹	30
	U+203A	›	30
	U+0021	!	30
	U+00D6	Ö	31
	U+003B	;	31
	U+0055	U	36
	U+00DC	Ü	44
	U+004F	O	45
	U+00CB	Ë	46
	U+0046	F	54
	U+0186	Ɔ	55
	U+0049	I	61
	U+0190	Ɛ	63
	U+201D	”	69
	U+006A	j	70
	U+0036	6	74
	U+0078	x	85
	U+003E	>	86
	U+003C	<	90
	U+003F	?	98
	U+0034	4	100
	U+0045	E	102
	U+0071	q	103
	U+00E9	é	105
	U+0039	9	109
	U+000C	 	110
	U+002B	+	110
	U+0056	V	115
	U+0033	3	120
	U+004C	L	138
	U+0037	7	151
	U+0035	5	173
	U+0054	T	198
	U+00E8	è	221
	U+0009	 	240
	U+0050	P	247
	U+0031	1	256
	U+0038	8	260
	U+005A	Z	288
	U+003A	:	299
	U+004E	N	301
	U+0042	B	325
	U+0047	G	336
	U+0066	f	337
	U+0308	̈	372
	U+0057	W	382
	U+0076	v	394
	U+0053	S	402
	U+0032	2	407
	U+0029	)	409
	U+0028	(	410
	U+0063	c	436
	U+004D	M	482
	U+0044	D	516
	U+0059	Y	542
	U+0269	ɩ	603
	U+2019	’	663
	U+0041	A	709
	U+03CB	ϋ	767
	U+0030	0	857
	U+004B	K	989
	U+2013	–	1029
	U+028B	ʋ	1048
	U+007A	z	1199
	U+0072	r	1648
	U+0022	"	1975
	U+002E	.	2628
	U+002C	,	2731
	U+0027	'	2746
	U+0074	t	2752
	U+0070	p	2839
	U+201C	“	2953
	U+006C	l	2961
	U+006D	m	2969
	U+003D	=	3252
	U+0065	e	3877
	U+00FC	ü	3997
	U+0079	y	4306
	U+0073	s	4904
	U+0075	u	5247
	U+0254	ɔ	5318
	U+00EB	ë	5798
	U+0069	i	5875
	U+0077	w	5881
	U+0062	b	5920
	U+006F	o	6295
	U+0067	g	6723
	U+0064	d	7648
	U+006B	k	8000
	U+025B	ɛ	8040
	U+00F6	ö	8151
	U+2018	‘	8866
	U+0068	h	9124
	U+006E	n	10890
	U+000A	 	14491
	U+002D	-	18466
	U+0061	a	19605
	U+0020	 	43840
	
	Round two -fm
	
		U+00B0	°	1
	U+005F	_	1
	U+00A8	¨	1
	U+00EE	î	3
	U+005D	]	3
	U+005B	[	3
	U+002C+0308	,̈	4
	U+2026	…	6
	U+201A	‚	7
	U+0308	̈	8
	U+0052	R	8
	U+004A	J	9
	U+FFF9	￹	14
	U+0043	C	15
	U+002F	/	17
	U+00E7	ç	21
	U+00BB	»	21
	U+00AB	«	23
	U+0048	H	26
	U+00FB	û	26
	U+00EA	ê	28
	U+0021	!	30
	U+2039	‹	30
	U+203A	›	30
	U+00D6	Ö	31
	U+003B	;	31
	U+0055	U	36
	U+00DC	Ü	44
	U+004F	O	45
	U+00CB	Ë	46
	U+0046	F	54
	U+0186	Ɔ	55
	U+0049	I	61
	U+0190	Ɛ	63
	U+201D	”	69
	U+006A	j	70
	U+0036	6	74
	U+0078	x	85
	U+003E	>	86
	U+003C	<	90
	U+003F	?	98
	U+0034	4	100
	U+0045	E	102
	U+0071	q	103
	U+00E9	é	105
	U+0039	9	109
	U+000C	 	110
	U+002B	+	110
	U+0056	V	115
	U+0033	3	120
	U+004C	L	138
	U+0037	7	151
	U+0035	5	173
	U+0054	T	198
	U+00E8	è	221
	U+0009	 	240
	U+0050	P	247
	U+0031	1	256
	U+0038	8	260
	U+005A	Z	288
	U+003A	:	299
	U+004E	N	301
	U+0042	B	325
	U+0047	G	336
	U+0066	f	337
	U+028B+0308	ʋ̈	360
	U+0057	W	382
	U+0076	v	394
	U+0053	S	402
	U+0032	2	407
	U+0029	)	409
	U+0028	(	410
	U+0063	c	436
	U+004D	M	482
	U+0044	D	516
	U+0059	Y	542
	U+0269	ɩ	603
	U+2019	’	663
	U+028B	ʋ	688
	U+0041	A	709
	U+03CB	ϋ	767
	U+0030	0	857
	U+004B	K	989
	U+2013	–	1029
	U+007A	z	1199
	U+0072	r	1648
	U+0022	"	1975
	U+002E	.	2628
	U+002C	,	2727
	U+0027	'	2746
	U+0074	t	2752
	U+0070	p	2839
	U+201C	“	2953
	U+006C	l	2961
	U+006D	m	2969
	U+003D	=	3252
	U+0065	e	3877
	U+00FC	ü	3997
	U+0079	y	4306
	U+0073	s	4904
	U+0075	u	5247
	U+0254	ɔ	5318
	U+00EB	ë	5798
	U+0069	i	5875
	U+0077	w	5881
	U+0062	b	5920
	U+006F	o	6295
	U+0067	g	6723
	U+0064	d	7648
	U+006B	k	8000
	U+025B	ɛ	8040
	U+00F6	ö	8151
	U+2018	‘	8866
	U+0068	h	9124
	U+006E	n	10890
	U+000A	 	14491
	U+002D	-	18466
	U+0061	a	19605
	U+0020	 	43840
	
	Spell checke with equals
	
		U+00B0	°	1
	U+00A8	¨	1
	U+005D	]	3
	U+005B	[	3
	U+00EE	î	3
	U+002C+0308	,̈	4
	U+2026	…	6
	U+201A	‚	7
	U+0052	R	8
	U+0308	̈	8
	U+004A	J	9
	U+FFF9	￹	14
	U+0043	C	15
	U+002F	/	17
	U+00E7	ç	21
	U+00BB	»	21
	U+00AB	«	23
	U+00FB	û	26
	U+0048	H	26
	U+00EA	ê	28
	U+2039	‹	30
	U+203A	›	30
	U+0021	!	30
	U+00D6	Ö	31
	U+003B	;	31
	U+0055	U	36
	U+00DC	Ü	44
	U+004F	O	45
	U+00CB	Ë	46
	U+0046	F	54
	U+0186	Ɔ	55
	U+0049	I	61
	U+0190	Ɛ	63
	U+201D	”	69
	U+006A	j	70
	U+0036	6	74
	U+0078	x	85
	U+003E	>	86
	U+003C	<	90
	U+003F	?	98
	U+0034	4	100
	U+0045	E	102
	U+0071	q	103
	U+00E9	é	105
	U+0039	9	109
	U+002B	+	110
	U+000C	 	110
	U+0056	V	115
	U+0033	3	120
	U+004C	L	138
	U+0035	5	173
	U+0054	T	198
	U+00E8	è	221
	U+0009	 	240
	U+0050	P	247
	U+0031	1	256
	U+0038	8	260
	U+005A	Z	288
	U+003A	:	299
	U+004E	N	301
	U+0042	B	325
	U+0047	G	336
	U+0066	f	337
	U+028B+0308	ʋ̈	360
	U+0057	W	382
	U+0076	v	394
	U+0053	S	402
	U+004D	M	482
	U+0059	Y	542
	U+0269	ɩ	603
	U+2019	’	663
	U+028B	ʋ	688
	U+0041	A	709
	U+03CB	ϋ	767
	U+004B	K	989
	U+007A	z	1199
	U+0072	r	1648
	U+0022	"	1975
	U+002E	.	2628
	U+002C	,	2727
	U+0027	'	2746
	U+0074	t	2752
	U+0070	p	2839
	U+201C	“	2953
	U+006C	l	2961
	U+006D	m	2969
	U+A78A	꞊	3252
	U+00FC	ü	3997
	U+0079	y	4306
	U+0073	s	4904
	U+0254	ɔ	5318
	U+00EB	ë	5798
	U+0069	i	5875
	U+0077	w	5881
	U+0062	b	5920
	U+0067	g	6723
	U+0064	d	7648
	U+006B	k	8000
	U+025B	ɛ	8040
	U+00F6	ö	8151
	U+2018	‘	8866
	U+000A	 	14491
	U+0061	a	19605
	U+0024	$	63336
	U+002D	-	63336
	U+0037	7	63487
	U+0032	2	63743
	U+0029	)	63745
	U+0028	(	63746
	U+0063	c	63772
	U+0044	D	63852
	U+0030	0	64193
	U+0075	u	68583
	U+006F	o	69631
	U+0068	h	72460
	U+006E	n	74226
	U+0020	 	126672
	U+0065	e	130549
	
	
## Provenance
Valentin Vydrin `vydrine[at]gmail[dot]com`  Provided the corpus as a series of .doc files.

Hugh Paterson III `sil.linguis[at]gmail[dot]com` converted those to PDFs and then used pdftotext to extract the text. The text was then converted to a single file `mass-text.txt` useing the following commands.

using this command on linux  `for f in *weta*.pdf; do pdftotext $f mass-text_$f.txt; done` and then  ``cat mass-text_*weta*.txt >> mass-text.txt``

## File types and purpose
### Original Files
`[gG]weta*.doc` these are the original files provided by VV.

`[gG]weta*.pdf`these are PDFs generated my MS Word by Rebecca Paterson from files provided by VV.

`[gG]weta*.txt` these files are generated by Hugh Paterson using `pdftotext`.

`*-sfm.txt` files have a hand coded structure to them that includes making for things like newspaper title, volume, date, tagline, article, heading 1, heading 2, and text of article:

```
\newspaper -Pamɛbhamɛ
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
### Converted Files
The following transforms were performed on the original files to clean up character in consistencies.

1. Correct minus signs
 Underscore, dash, and minus are all moved to U+02D7 which is modifier letter minus.

 `sed 's/[_ –-]/$(echo -ne '\u02D7')/g' mass-text.txt > spell-corrected-mass-text.txt`

2. Correct equal signs

 I need to replace normal equal sign with letter equal sign.
U+A78A modifier letter short equals sign.
U+003D

 `sed "s/=/$(echo -ne '\uA78A')/g" spell-corrected-mass-text.txt > spell-corrected-mass-text-correct-equal.txt`

 Example with perl

 ```echo 汉典“馑”字的基本解释 | perl -CS -pe 's/\N{U+9991}/Jin/g'```

## Intellectual property ownership and licenses
Copyright claims are un-clear.
If authors of content were employed by SIL, SIL International would be the copyright owner. (This is only relevant because the works themselves do not have copyright claims or licenses attached, but do reference SIL's address.) Otherwise copyright belongs to the authors, or their employer. It does not readily seem that the authors are attributed in the corpus, but they might be in the orthography.

Only copyright owners can license materials. Therefore this content bears no license, as Hugh makes no content claims on the content of the corpus, and did not receive content under license.
The `README.md` which is Hugh's contribution is provided under the [Creative Commons Attribution 4.0 License](https://creativecommons.org/licenses/by/4.0/).

## Research Notes

### Working with custom character attributes

Non-standard components (from an ASCII perspective):
1. It has some greek/IPA characters in the orthography. This does not match standard [a-zA-Z] classes. [ë, ɛ, ɔ, ʋ, ö,]
2. It has tone diacritics. This also does not match standard [a-zA-Z] classes.
3. It uses punctuation marks to indicate tone. This does not match standard [a-zA-Z] classes. And means that they need to be included in the word, and excluded from punctuation classes.

Tasks:

1. I would like to count unique lexical strings and their variations.

 What do I mean by variations? the following would all be variations. (I know that they might not be the same "lexical word" but that is a small aside for me right now.)
```
=ban-
=ban`
-ban`
"ban
'ban
ban'-
```
 So in linguistic terms a lexical string would be only the segmental tier of the word. (For linguistic clarity, I totally realize that the same string with different tones may be classified as a different word, depending on one's definition of a word. Also homophones would be lumped together here too.) However for typing studies, we need to relate things back to the lexical string.

2. I would like to get a unique string count which properly accounts for the orthography's non-standard use of Unicode Characters. For instance, the GNU tool `wc`  says that this corpus has 46192 words. I don't trust this because, often times word counters use punctuation attributes to mark the end of a word, when it is not followed by a space. I would like a more accurate word count of the corpus.

  If I say that space is the word break then words punctuation is included in words, but not all words are separated by spaces and not all words end with punctuation.

3. I would like to count overtly marked tonal melodies. That is something like:

 ```
break strings into segments according to custom word forming rules.
 search between word forming characters for characters in tonal indicator class until reaching the last word forming character in the string
   Return tonal characters as a set.
Count unique sets
Write results to table
```

  What do I mean by Count?
 * How many tone patterns are expressed in the corpus?
 * Which words are they expressed on?
 * How many times is that word used?
 * What percentage of all the instances of expressed tone patterns in the corpus does this represent?
 * How many total words are in the corpus?

 Example:


Totals | The Tone pattern | Lexical strings indicating they use the tone pattern | Number of times the lexical string with the tone pattern occurs in the corpus | Percentage of the tone patters expressed in the corpus | Number and kind of other tone patterns this same lexical string occurs with
 ------|------|------|-------|-------|----
 |= - | klee   |   12 | 4| 3 (=, '-, null)
 |= -  |  moo |  54 |  11| 0
 Total |H L   | 2 | 66  |  15 | n/a


 Summary table:

  Phonology |Results| Count
----|----|----
 H+ M |  =-|  45
 H+ L |  =` | 37
 L H | -` |  22
H L |  "|  56

Results in text form:

(45 set =-, 37 =\`, 22 -\`, 56 ", etc.)

Challenge: Given the nature of the custom (non-standard Unicode) properties attributed to this orthography I need to both expand the alpha numeric range of character tools like RegEx [:alpha:] and then also limit classes like "Punctuation".

Here is what I have tried, but It is not getting me where I need to go.

```
cat target.file | tr '[:space:]' '[####  n*]' | grep -v "^####  s*$" | sort | uniq -c | sort -bnr
cat target.file | tr '[:space:]' '[####  n*]' | grep -v "^####  s*$" | sort | uniq -c | sort -bnr | top
cat target.file  | tr '[:space:]' '[####  n*]' | grep -v "^####  s*$" | sort | uniq -c | sort -bnr | top | head -20
cat target.file  | tr '[:space:]' '[####  n*]' | grep -v "^####  s*$" | sort | uniq -c | sort -bnr | head -20
  grep -o -c phonology target.file
  grep -o -c Phonology target.file
 sed -e 's/[^[:alpha:]]/ /g' text_to_analize.txt | tr '####  n' " " |  tr -s " " | tr " " '####  n'| tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | nl
  sed -e 's/[^[:alpha:]]/ /g' target.file | tr '####  n' " " |  tr -s " " | tr " " '####  n'| tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | nl

pdftotext target.file
  sed -e 's/[^[:alpha:]]/ /g' target.file | tr '####  n' " " |  tr -s " " | tr " " '####  n'| tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | nl
  ```

Corpus location:

#### Word forming characters

Space can be a word forming character. However, if two tone characters come together then one can (not assume) that word break happens between them (because two characters can some at the end of a word `'-'`). Also orthographic punctuation might form the edges of a word. Often in the corpus punctuation is surrounded by spaces. This is unusual from an English orthography perspective.

 Examples:
 * tom and sue
 * tom. and sue
 * tom.and sue
 * tom,.and sue
 * =tome- and sue
 * »=tome-« and sue
 * =tome-=and' sue.

#### Word component characters

##### Segmental phonology

##### Tone class characters

Codepoint     | Grapheme   |   Count Round 1 | Note
-------------|----|-------|----
U+002C+0308 | ,̈ | 3     | find operation can't locate this
U+0308      | ̈  | 5     | find operation can't locate this
U+201D      | ”  | 59    | These are coming at the end of a word with two vowels and it is not clear why (suspicion is that is it marking both vowels for something)
U+0022      | "  | 1576  | ! suspect that these need to be replaced with double instances of U+0027
U+201C      | “  | 2449  | ! suspect that these need to be replaced with double instances of U+0027
U+003D      | =  | 2659  |
U+2019      | ’  | 642   | ! Suspect that these need to be replaced with single instances of U+0027
U+2018      | ‘  | 7305  | ! Suspect that these need to be replaced with single instances of U+0027
U+0027      | '  | 2363  | ! Suspect that these need to be replaced with single instances of U+0027
U+005F      | _  | 1     |  suspected spelling mistake for U+002D
U+2013      | –  | 985   | Sometimes this character is used word initially instead of U+002D
U+002D      | -  | 15242 |

Need sed replace and a cleaned text instance.

1. Correct minus signs

I made some mistakes and I should use perl 

 `sed 's/[_ –]/-/g' mass-text.txt > spell-corrected-mass-text.txt`
 +
  or consider moving all of them to U+02D7 which is modifier letter minus.

2. Correct equal signs

 I need to replace normal equal sign with letter equal sign.
U+A78A modifier letter short equals sign.
U+003D

 `sed "s/=/$(echo -ne '\uA78A')/g" spell-corrected-mass-text.txt > spell-corrected-mass-text-correct-equal.txt`

 Example with perl

 ```echo 汉典“馑”字的基本解释 | perl -CS -pe 's/\N{U+9991}/Jin/g'```

cat mass-text.txt | perl -CS -pe 's/–/\N{U+02D7}/g'
	cat mass-text.txt | perl -CS -pe 's/_/\N{U+02D7}/g'
cat mass-text.txt | perl -CS -pe 's/-/\N{U+02D7}/g'
cat mass-text.txt | perl -CS -pe 's/=/\N{U+A78A}/g'


#### Punctuation characters

Codepoint   | Grapheme   |   Count  Round 1
-------------|-----|-------
U+00B0   | °  | 1     
U+005F      | _  | 1     
U+005B      | [  | 3     
U+005D      | ]  | 3     
U+2026      | …  | 5     
U+201A      | ‚  | 5     
U+002F      | /  | 13    
U+00BB      | »  | 16    
U+00AB      | «  | 18      
 U+0021      | !  | 25      
 U+003B      | ;  | 29    
 U+2039      | ‹  | 30    
 U+203A      | ›  | 30
 U+003C      | <  | 72    
 U+003E      | >  | 72        
 U+003F      | ?  | 85      
U+002E      | .  | 2128  
U+002C      | ,  | 2212  
U+0029      | )  | 308   
U+0028      | (  | 309   
 U+003A      | :  | 230   
 U+002B      | +  | 86    

#### Number Characters

Codepoint   | Grapheme   |   Count  Round 1
-------------|-----|-------
U+0030      | 0  | 689   
U+0031      | 1  | 208   
U+0032      | 2  | 323   
U+0033      | 3  | 93    
U+0034      | 4  | 80
U+0035      | 5  | 147  
U+0036      | 6  | 63   
U+0037      | 7  | 119   
U+0038      | 8  | 198   
U+0039      | 9  | 96   

Thousands separator is U+002E "."

#### Reasonable characters needed for Internet use
According to RFC 3986: http://www.ietf.org/rfc/rfc3986.txt

     reserved    = gen-delims / sub-delims

     gen-delims  = ":" / "/" / "?" / "#" / "[" / "]" / "@"

     sub-delims  = "!" / "$" / "&" / "'" / "(" / ")"
                 / "\*" / "+" / "," / ";" / "="

     unreserved  = ALPHA / DIGIT / "-" / "." / "\_" / "~"

     Alpha-digit classes: [a-zA-Z] [0-9]

#### Other Characters used


#### Scriptsource Notes
Source : http://scriptsource.org/cms/scripts/page.php?item_id=language_detail&key=dnj

```
Character list for Dan written with Latin script
Main characters

[\u0303 \u0300 \u0301 a b ɓ d e ɛ f g {gb} h i k {kp} {kw} l m n {nw} {ny} ŋ o ɔ ə ɵ p r s t u ɥ v w x y z]
Auxiliary characters
[c j q]
Index characters

[A B Ɓ D E Ɛ F G {Gb} H I K {Kp} {Kw} L M N {Nw} {Ny} Ŋ O Ɔ Ə Ɵ P R S T U Ɥ V W X Y Z]
Punctuation characters
Numbering system
```

* These scriptsource notes make some sense in terms of the IPA characters used, however, they are not a valid description of the orthography. For instance at least for version 3 of the [dnj] orthography there is no _ɓ_ character, rather it is written _bh_.
* The scriptsource information source is not cited, though the entry's contributor is noted.


### Tool for the Job Notes

#### LibreOffice headless

`libreoffice --headless --convert-to "txt:Text (encoded):UTF8" mydocument.doc`
* Source:
 https://stackoverflow.com/questions/5671988/how-to-extract-just-plain-text-from-doc-docx-files-unix
* _Note_:
This works for most things in the .doc files, but did not get all headings. or all content from text boxes.

#### Antiword
`antiword gweta01.doc > gweta01-aw.txt`
* Source:
 http://www.winfield.demon.nl/#Programmer
* _Note_:
 puts in a lot of character for charts. (makes ASCII charts), when counting characters this will throw off character counts.

#### textract
* Source: https://textract.readthedocs.io/en/stable/installation.html#ubuntu-debian
* _Note_:
 This is just a python wraper around several tools, for .doc antiword was the tool used. So why not just use antiword?

#### pandoc
* Source:
* _Note_:
Did not work with .doc files.

#### doctotext
* Source:  http://silvercoders.com/en/products/doctotext/
* _Note_:
Needed local compiling directions were not clear. needed more know how to accomplish this.
