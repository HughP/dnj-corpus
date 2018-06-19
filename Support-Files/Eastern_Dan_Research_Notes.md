# Research Notes

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
