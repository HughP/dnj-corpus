# Pinyin Text Analysis

**Language**: [cmn] (Mandarin)

**Text source**: SHENG JING - PINYIN (ROMANIZED CHINESE) via https://www.wordproject.org/bibles/pn/ and Wordproject® is a registered name of the International Biblical Association, a non-profit organization registered in Macau, China.

**Writing System**: Hanyu Pinyin

**Copyright & License**: Unclear - it seems [the distributor does not believe](https://www.wordproject.org/contact/new/copyrights.htm) the text can be copyrighted.

**Text content**: Epistle of James
https://www.wordproject.org/bibles/pn/59/1.htm#0

through

https://www.wordproject.org/bibles/pn/59/5.htm#0

## Claimes to counter

* Pinyin only has a 4% diacritic density.
   How this is counted is questionable, but given only visible characters, and not TBUs:

 ```
cat diacriticCount.txt | cut -f 3 | paste -sd+ | bc
 ````
2630 diacritics used

 ```
 cat letterCounts.txt | cut -f 3 | paste -sd+ | bc
 ```
8983 letters used

29.28% of letters have a diacritic.

 ```
 UnicodeCCount.pl -d cmn-james-pinyin.txt | tail -n +2 | cut -f 3 | paste -sd+ | bc
```

15071 total characters including punctuation and non-visible characters.

17.45% of characters have a diacritic.
<!-- percentages calculated via https://percentagecalculator.net/ -->

It still remains to be seen how many characters per TBU there are and how many TBUs of all possible TBUs are marked for tone. The issues is that in Pinyin  vowel pairs only receive one tone mark. So not all vowel are marked for tone via diacritics.

### Letters

U+0041	A	1	LATIN CAPITAL LETTER A
U+0042	B	3	LATIN CAPITAL LETTER B
U+0043	C	1	LATIN CAPITAL LETTER C
U+0044	D	8	LATIN CAPITAL LETTER D
U+0046	F	1	LATIN CAPITAL LETTER F
U+0047	G	4	LATIN CAPITAL LETTER G
U+0048	H	2	LATIN CAPITAL LETTER H
U+004A	J	4	LATIN CAPITAL LETTER J
U+004B	K	3	LATIN CAPITAL LETTER K
U+004C	L	1	LATIN CAPITAL LETTER L
U+004E	N	24	LATIN CAPITAL LETTER N
U+0051	Q	2	LATIN CAPITAL LETTER Q
U+0052	R	6	LATIN CAPITAL LETTER R
U+0053	S	7	LATIN CAPITAL LETTER S
U+0054	T	4	LATIN CAPITAL LETTER T
U+0057	W	17	LATIN CAPITAL LETTER W
U+0058	X	3	LATIN CAPITAL LETTER X
U+0059	Y	15	LATIN CAPITAL LETTER Y
U+005A	Z	13	LATIN CAPITAL LETTER Z
U+0061	a	771	LATIN SMALL LETTER A
U+0062	b	134	LATIN SMALL LETTER B
U+0063	c	90	LATIN SMALL LETTER C
U+0064	d	346	LATIN SMALL LETTER D
U+0065	e	877	LATIN SMALL LETTER E
U+0066	f	66	LATIN SMALL LETTER F
U+0067	g	445	LATIN SMALL LETTER G
U+0068	h	584	LATIN SMALL LETTER H
U+0069	i	1224	LATIN SMALL LETTER I
U+006A	j	150	LATIN SMALL LETTER J
U+006B	k	50	LATIN SMALL LETTER K
U+006C	l	135	LATIN SMALL LETTER L
U+006D	m	205	LATIN SMALL LETTER M
U+006E	n	1128	LATIN SMALL LETTER N
U+006F	o	493	LATIN SMALL LETTER O
U+0070	p	31	LATIN SMALL LETTER P
U+0071	q	102	LATIN SMALL LETTER Q
U+0072	r	130	LATIN SMALL LETTER R
U+0073	s	307	LATIN SMALL LETTER S
U+0074	t	97	LATIN SMALL LETTER T
U+0075	u	712	LATIN SMALL LETTER U
U+0077	w	89	LATIN SMALL LETTER W
U+0078	x	142	LATIN SMALL LETTER X
U+0079	y	286	LATIN SMALL LETTER Y
U+007A	z	270	LATIN SMALL LETTER Z

### Diacritics

U+0300	̀	1003	COMBINING GRAVE ACCENT
U+0301	́	539	COMBINING ACUTE ACCENT
U+0304	̄	476	COMBINING MACRON
U+0306	̆	92	COMBINING BREVE
U+0308	̈	13	COMBINING DIAERESIS
U+030C	̌	507	COMBINING CARON

### Punctuation and non visible

U+000A	 	108	LINE FEED
U+0020	 	2759	SPACE
U+0028	(	2	LEFT PARENTHESIS
U+0029	)	2	RIGHT PARENTHESIS
U+002C	,	255	COMMA
U+002E	.	159	FULL STOP
U+0030	0	8	DIGIT ZERO
U+0031	1	59	DIGIT ONE
U+0032	2	28	DIGIT TWO
U+0033	3	12	DIGIT THREE
U+0034	4	12	DIGIT FOUR
U+0035	5	12	DIGIT FIVE
U+0036	6	12	DIGIT SIX
U+0037	7	11	DIGIT SEVEN
U+0038	8	9	DIGIT EIGHT
U+0039	9	8	DIGIT NINE
U+003A	:	2	COLON
